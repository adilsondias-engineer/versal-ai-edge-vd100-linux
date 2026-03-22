# Versal VD100 — Custom Yocto Linux Bring-Up

> Custom Yocto Linux on the Alinx VD100 (XCVE2302-SFVA784-1LP-E-S) using AMD Embedded Development Framework.  
> No VCK190. No MATLAB. No Simulink. Just VHDL, a UART, and a debugger's mindset.

---

## Board

| Item | Detail |
|---|---|
| **Device** | XCVE2302-SFVA784-1LP-E-S |
| **Family** | Versal AI Edge Series |
| **PS** | Dual-core Cortex-A72 @ 959 MHz |
| **DDR** | 2 GiB |
| **eMMC** | 29.6 GiB |
| **SD** | MicroSD via TXS02612 level shifter (BANK501 = 1.8V, SD = 3.3V) |
| **Ethernet** | GEM at `ff0c0000`, RGMII |
| **USB** | DWC3 XHCI 1.10 at `fe200000` |
| **Board cost** | ~AU$1,285 — accessible alternative to the AU$15,000+ VCK190 |

---

## Boot Stack

```
Cold power-on
    └─ PLM (Platform Loader & Manager)
        └─ U-Boot 2025.01 (SD_MODE1 / level-shifter mode)
            └─ systemd-boot (BOOTAA64.EFI)
                └─ EDF Linux 25.11 (Yocto Scarthgap)
                    └─ Cortex-A72 @ EL2
```

---

## What Makes This Different

Every existing Versal Yocto tutorial:
- Targets the VCK190 evaluation kit ($15K+)
- Uses MATLAB/Simulink for hardware design
- Relies on AMD reference BSPs with pre-built PDIs

This project:
- Runs on the **Alinx VD100** — an accessible, production-grade board
- Uses **bare-metal VHDL** for PL design in Vivado
- Builds a **complete custom Yocto image** from the System Device Tree exported from the Vivado project
- Documents every hardware quirk specific to the VD100 that no reference design covers

---

## Hardware Quirk — The TXS02612 Level Shifter

The VD100 connects the SD card through a **TXS02612 bidirectional level shifter** because BANK501 operates at 1.8V while SD cards require 3.3V signalling.

**Consequence:** The TXS02612 has a maximum switching frequency of ~30 MHz. The Versal CIPS block requests 200 MHz for SD 3.0 UHS-I tuning by default. Without board-specific DTB patches, SD initialisation fails with `error -110` (timeout).

**Required DTS patch on `sdhci1`:**

```dts
&sdhci1 {
    no-1-8-v;
    disable-wp;
    max-frequency = <25000000>;
};
```

**Boot mode switches** (active low — Alinx inverts logic, 1=OFF, 0=ON):

| Mode | Description | Physical switches | Status |
|---|---|---|---|
| `1110` | **SD1 LS — level-shifter mode, matches Vivado CIPS config** | OFF OFF OFF ON | Recommended |
| `0101` | SD1 SD 2.0 — also works due to DTB 25MHz cap | ON OFF ON OFF | Works |
| `0111` | USB 2.0 | ON OFF OFF OFF | No USB controllers in image |

Both `1110` and `0101` boot successfully. `1110` is the correct configuration — it matches the SD 3.0 setting in Vivado CIPS and is designed for the TXS02612 hardware. `0101` works as a side effect of the `max-frequency = <25000000>` DTB patch capping the clock regardless of mode.

---

## The Root Cause (Debugging Post-Mortem)

Weeks of SD card failures, U-Boot "mmc not found" errors, and missing boot files traced back to:

```
max-frequency = <25000000>
```

A single missing semicolon caused the entire `system-user.dtsi` patch to fail DTS parsing. The patched `cortexa72-linux.dtb` was never generated correctly. Every downstream failure — error -110, missing USB, empty EFI partition — was a symptom of that one character.

**The fix:** add the semicolon. No rootfs changes. No `system-top.dtb` required. No `CONFIG_DTFILE` changes. Just the correct DTS syntax in the sdhci1 patch.

**Lesson:** Read the DTS patch carefully before assuming architectural problems.

---

## SD Partition Layout

| Partition | Filesystem | Contents |
|---|---|---|
| `mmcblk1p1` `/efi` | FAT32 (1 GB) | U-Boot EFI boot files, DTB, Image |
| `mmcblk1p2` `storage` | FAT32 (1 GB) | Empty (reserved) |
| `mmcblk1p3` `/` | ext4 (6 GB) | Root filesystem |

Note: SD is on **mmc1** (`mmcblk1`) on Versal. Not mmc0.

---

## EFI Boot Configuration

**`/efi/loader/loader.conf`**
```
default edf-linux.conf
timeout 5
```

**`/efi/loader/entries/edf-linux.conf`**
```
title   EDF Linux
efi     /Image
devicetree /versal-generic-xcve2302-system.dtb
options console=ttyPS0,115200 console=ttyAMA0 earlycon root=/dev/mmcblk1p3 rw rootwait uio_pdrv_genirq.of_id=generic-uio
```

**`/efi/EFI/BOOT/BOOTAA64.EFI`** — `systemd-bootaa64.efi` sourced from the Yocto rootfs:
```
/usr/lib/systemd/boot/efi/systemd-bootaa64.efi
```

Rename to `BOOTAA64.EFI` — U-Boot EFI expects this exact filename for ARM64.

---

## Manual Boot (U-Boot fallback)

If EFI boot fails, interrupt autoboot and use:

```
fatload mmc 1:1 0x200000 Image
fatload mmc 1:1 0x20000000 versal-generic-xcve2302-system.dtb
setenv bootargs "console=ttyPS0,115200 console=ttyAMA0 earlycon root=/dev/mmcblk1p3 rw rootwait"
booti 0x200000 - 0x20000000
```

---

## OS Customisation (Yocto Layer)

All customisation belongs in the custom `meta-vd100` layer. Never modify upstream layers directly.

### Distro name and OS release

Create or edit `meta-vd100/conf/distro/vd100.conf`:

```bitbake
require conf/distro/poky.conf

DISTRO = "vd100"
DISTRO_NAME = "VD100 Linux"
DISTRO_VERSION = "1.0"
DISTRO_CODENAME = "versal"

# Shown in /etc/os-release
DISTRO_EXTRA_RDEPENDS = ""
```

Reference it in `local.conf`:
```bitbake
DISTRO ?= "vd100"
```

### Hostname

```bitbake
# meta-vd100/recipes-core/base-files/base-files_%.bbappend
hostname_pn-base-files = "vd100"
```

Or override at runtime directly on the target:
```bash
hostnamectl set-hostname vd100
# Make permanent
echo "vd100" > /etc/hostname
```

### `/etc/os-release` and `/etc/issue`

```bitbake
# meta-vd100/recipes-core/base-files/base-files_%.bbappend
do_install:append() {
    echo "VD100 Linux 1.0" > ${D}${sysconfdir}/issue
    echo "VD100 Linux 1.0 \n \l" > ${D}${sysconfdir}/issue.net
}
```

### Default user and password

```bitbake
# meta-vd100/recipes-core/images/vd100-image.bb or local.conf
EXTRA_USERS_PARAMS = "\
    useradd -m -G sudo adilson; \
    usermod -p '\$6\$...' adilson; \
"
inherit extrausers
```

Use `openssl passwd -6 yourpassword` to generate the SHA-512 hash.

### Remove forced password change on first login

The EDF image enforces password change via PAM. To disable:
```bitbake
# meta-vd100/recipes-core/shadow/shadow_%.bbappend
do_install:append() {
    sed -i 's/PASS_MAX_DAYS.*/PASS_MAX_DAYS   99999/' ${D}${sysconfdir}/login.defs
}
```

Or at runtime:
```bash
chage -M 99999 amd-edf
```

### NTP (no RTC battery on VD100)

```bitbake
# meta-vd100/recipes-core/systemd/systemd_%.bbappend
PACKAGECONFIG:append = " timesyncd"
```

With NTP running, the missing RTC battery is irrelevant — time syncs from network on every boot.

```bash
# Runtime
timedatectl set-ntp true
```

---

## Application Development Workflow

The rootfs does **not** need reflashing for application changes. Deploy via RPM over SSH:

```bash
# On build host — cross-compile and package
bitbake my-app

# Deploy to target
scp tmp/deploy/rpm/cortexa72/my-app-1.0-r0.cortexa72.rpm amd-edf@192.168.0.x:~
ssh amd-edf@192.168.0.x "rpm -i my-app-1.0-r0.cortexa72.rpm"
```

The Yocto SDK provides a standalone cross-compiler for iterative development without full bitbake rebuilds:
```bash
bitbake -c populate_sdk edf-linux-disk-image
./tmp/deploy/sdk/poky-*.sh   # install SDK
source /opt/poky/*/environment-setup-cortexa72-poky-linux
```

---

## Yocto Build Environment

| Item | Value |
|---|---|
| Build host | Ubuntu 22.04 |
| Yocto release | Scarthgap (5.0) |
| meta-xilinx branch | `rel-v2025.2` |
| Base image | `edf-linux-disk-image` (AMD Embedded Development Framework) |
| BSP type | SDT (System Device Tree) |
| SDT source | Vivado-exported `vd100_sdt` |
| Machine | `versal-generic-xcve2302` |

**Key machine config (`meta-vd100/conf/machine/versal-generic-xcve2302.conf`):**
```bitbake
CONFIG_DTFILE ?= "${CONFIG_DTFILE_DIR}/cortexa72-linux.dts"
SDT_URI = "file:///work/psHelloWorld/software/vd100_sdt"
```

---

## DTB Verification

After any rebuild, confirm the SD patches are present before updating the boot partition:

```bash
dtc -I dtb -O dts cortexa72-linux.dtb 2>/dev/null | \
  grep -E "no-1-8-v|disable-wp|max-frequency|dwc3"
```

All four matches must be present. If `no-1-8-v` is missing, the DTS patch failed — check syntax before rebuilding.

---

## Rebuild After DTS Changes

```bash
bitbake -c cleansstate sdt-artifacts device-tree virtual/dtb
bitbake edf-linux-disk-image
```

Only the boot partition (`mmcblk1p1`) needs updating after a DTB-only change. Copy updated files to the mounted EFI partition — no full `dd` required.

---

## Confirmed Working

| Feature | Status |
|---|---|
| Cold boot → Linux login | Working |
| Automatic boot (no intervention) | Working |
| SD card — mode `0101` (SD 2.0) | Working |
| SD card — mode `1110` (SD 3.0 LS) | Working |
| Ethernet (GEM `ff0c0000`) | Working |
| USB XHCI |  Working |
| SSH access |  Working |
| RPM package deployment | Working |
| Custom C++ application | Working |
| Custom PL bitstream (PDI) | Working |
| Xen hypervisor entry | Present in boot menu |

---

## Development Environment

- **FPGA Toolchain:** Vivado 2024.2, Vitis 2024.2
- **Board bring-up:** VHDL, bare-metal, no IP integrator dependencies
- **Yocto customisation:** Custom `meta-vd100` layer, SDT-based BSP
- **Serial console:** PL011 UART at `ff000000`, 115200 8N1
- **Remote access:** SSH over GEM Ethernet

---

## Related Projects

This bring-up is part of a broader FPGA trading systems portfolio targeting ultra-low latency market data processing on Versal and Artix-7 platforms.

---

*XCVE2302 — Versal AI Edge — Yocto Scarthgap — AMD EDF 25.11*
