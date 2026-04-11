# Versal VD100 — Custom Yocto Linux Bring-Up

> Custom Yocto Linux on the Alinx VD100 (XCVE2302-SFVA784-1LP-E-S) using AMD Embedded Development Framework.  
> No VCK190. No MATLAB. No Simulink. Just VHDL, a UART, and a debugger's mindset.

---

## Repository Structure

This repository is the umbrella project for VD100 Linux bring-up. Each Yocto layer version is a standalone submodule:

| Submodule | Content |
|---|---|
| [`meta-vd100`](https://github.com/adilsondias-engineer/meta-vd100) | v1 — SD boot, Ethernet, USB, SSH |
| [`meta-vd100_v2`](https://github.com/adilsondias-engineer/meta-vd100_v2) | v2 — + I2C, LM75, EEPROM, sysmon, GPIO, libgpiod, PL LED, PS_KEY IRQ |
| [`meta-vd100_v3`](https://github.com/adilsondias-engineer/meta-vd100_v3) | v3 — + XRT 2025.2, zocl, AIE-ML v2 pipeline, BOOT.BIN CDO fix, Ethereum |

```bash
git clone --recurse-submodules https://github.com/adilsondias-engineer/versal-ai-edge-vd100-linux
```

> v3 depends on artifacts from [vd100-aie-pipeline](https://github.com/adilsondias-engineer/vd100-aie-pipeline) — see the v3 README for details.

---

## Board

| Item | Detail |
|---|---|
| **Device** | XCVE2302-SFVA784-1LP-E-S |
| **Family** | Versal AI Edge Series |
| **PS** | Dual-core Cortex-A72 @ 959 MHz |
| **PL** | AI Engine ML array (AIE-ML v2) |
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
                └─ VD100 Linux 1.0 (Yocto Scarthgap / AMD EDF 25.11)
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
- Builds a **complete custom Yocto distro** (`vd100`) from the System Device Tree exported from Vivado
- Documents every hardware quirk specific to the VD100 that no reference design covers
- Brings up all onboard PS peripherals: Ethernet, USB, I2C, sysmon, temperature sensor, EEPROM, GPIO
- Demonstrates **PS/PL co-design**: PS LED via libgpiod, PL LED via AXI-lite kernel module
- Delivers a **complete AIE-ML v2 pipeline** (v3): HLS DMA + AIE graph + XRT host app + Ethereum audit log — first documented end-to-end integration on accessible Versal hardware

---

## Confirmed Working

| Feature | v1 | v2 | v3 |
|---|---|---|---|
| Cold boot → Linux login | Y | Y | Y |
| Automatic boot (no intervention) | Y | Y | Y |
| SD card — mode `0101` (SD 2.0) | Y | Y | Y |
| SD card — mode `1110` (SD 3.0 LS) | Y | Y | Y |
| Ethernet (GEM `ff0c0000`) | Y | Y | Y |
| USB XHCI | Y | Y | Y |
| SSH access | Y | Y | Y |
| Custom distro name (`vd100`) | — | Y | Y |
| RPM package deployment | Y | Y | Y |
| Custom C++ application | Y | Y | Y |
| Custom PL bitstream (PDI) | Y | Y | Y |
| I2C0 / I2C1 / I2C2 | — | Y | Y |
| LM75 board temperature sensor | — | Y | Y |
| EEPROM Atmel 24C04 | — | Y | Y |
| Versal sysmon die temperature | — | Y | Y |
| PS_LED1 GPIO via libgpiod v2 | — | Y | Y |
| PL LED via AXI-lite kernel module (`myledip`) | — | Y | Y |
| PS_KEY IRQ → LED toggle | — | Y | Y |
| Persistent LED state | — | Y | Y |
| Yocto SDK cross-compile | — | Y | Y |
| NTP time sync (no RTC battery) | — | Y | Y |
| XRT 2025.2 runtime | — | — | Y |
| zocl kernel driver | — | — | Y |
| AIE-ML v2 pipeline (BOOT.BIN CDOs) | — | — | Y |
| `vd100-ps-ma-client` XRT host app | — | — | Y |
| MA crossover BUY/SELL/HOLD signal | — | — | Y |
| Ethereum on-chain signal log | — | — | Y |

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

**Boot mode switches** (active low — Alinx inverts logic: 1 = OFF, 0 = ON):

| Mode | Description | Physical switches | Status |
|---|---|---|---|
| `1110` | **SD1 LS — level-shifter mode, matches Vivado CIPS config** | OFF OFF OFF ON | Recommended |
| `0101` | SD1 SD 2.0 — also works due to DTB 25 MHz cap | ON OFF ON OFF | Works |

---

## The Root Cause (Debugging Post-Mortem)

Weeks of SD card failures, U-Boot `mmc not found` errors, and missing boot files traced back to:

```
max-frequency = <25000000>
```

A single missing semicolon caused the entire `system-user.dtsi` patch to fail DTS parsing. The patched `cortexa72-linux.dtb` was never generated correctly. Every downstream failure — error -110, missing USB, empty EFI partition — was a symptom of that one character.

**The fix:** add the semicolon. No rootfs changes. No `system-top.dtb` required. No `CONFIG_DTFILE` changes. Just correct DTS syntax in the sdhci1 patch.

**Lesson:** Read the hardware spec before assuming architectural problems. Thirty minutes with the datasheet prevents days of debugging.

---

## SD Partition Layout

| Partition | Filesystem | Contents |
|---|---|---|
| `mmcblk1p1` `/efi` | FAT32 (1 GB) | BOOTAA64.EFI, DTB, kernel Image |
| `mmcblk1p2` `storage` | FAT32 (1 GB) | Empty (reserved) |
| `mmcblk1p3` `/` | ext4 (6 GB) | Root filesystem |

> SD is on **mmc1** (`mmcblk1`) on Versal. Not mmc0.

---

## EFI Boot Configuration

**`/efi/loader/loader.conf`**
```
default edf-linux.conf
timeout 5
```

**`/efi/loader/entries/edf-linux.conf`**
```
title   VD100 Linux 1.0
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

## Peripheral Inventory

All PS peripherals confirmed operational under VD100 Linux 1.0:

| Peripheral | Address | Status | Notes |
|---|---|---|---|
| Ethernet GEM | `ff0c0000` | Y | RGMII, DHCP, SSH |
| USB XHCI DWC3 | `fe200000` | Y | Host mode |
| SD card sdhci1 | `f1050000` | Y | TXS02612, max-freq = 25 MHz |
| eMMC sdhci0 | `f1040000` | Y | 29.6 GiB |
| LPD GPIO | `ff0b0000` | Y | gpiochip0, 58 lines |
| PMC GPIO | `f1020000` | Y | gpiochip1 |
| I2C0 LPD | `ff020000` | Y | enabled |
| I2C1 LPD | `ff030000` | Y | enabled |
| I2C2 PMC | `f1000000` | Y | LM75 + EEPROM (Linux i2c-2) |
| LM75 temp sensor | I2C2 `0x48` | Y | board temperature |
| EEPROM 24C04 | I2C2 `0x50` | Y | 4 Kbit Atmel |
| MyLEDIP AXI-lite | `0xA4000000` | Y | PL LED via M_AXI_FPD |
| Versal sysmon | `f1270000` | Y | `/sys/class/hwmon/hwmon0` |
| Versal thermal | versal-thermal-sensor | Y | 34 °C die temp |
| RTC | `f12a0000` | Y | present — no battery, resets on poweroff |
| SPI | `f1030000` | Y | present |
| PMC DMA × 2 | `f11c0000 / f11d0000` | Y | present |
| LPD DMA × 8 | `ffa80000–ffaf0000` | Y | present |
| PS_LED1 | LPD_MIO25 — GPIO line 25 | Y | libgpiod v2 |
| AIE-ML v2 array | col 8, row 0 | Y | v3 — via XRT + zocl |

---

## DTS Patches (applied in `cortexa72-linux.dts`)

### sdhci1 — TXS02612 level shifter

```dts
&sdhci1 {
    no-1-8-v;
    disable-wp;
    max-frequency = <25000000>;
};
```

### USB

```dts
&dwc3_0 {
    status = "okay";
    dr_mode = "host";
};
```

### I2C2 — LM75 + EEPROM

```dts
/* i2c2 label = f1000000 (PMC I2C) = Linux i2c-2
   LM75 and EEPROM are on this bus — confirmed by i2cdetect -y 2 */
&i2c2 {
    status = "okay";

    lm75@48 {
        compatible = "nxp,lm75";
        reg = <0x48>;
    };

    eeprom@50 {
        compatible = "atmel,24c04";
        reg = <0x50>;
        pagesize = <16>;
    };
};
```

Note: i2c0 (`ff020000`) and i2c1 (`ff030000`) also enabled with `status = "okay"`. No child devices.

### MyLEDIP PL peripheral

```dts
/* &axi not &amba — node address must be lowercase hex */
&axi {
    MyLEDIP_0: MyLEDIP@a4000000 {
        compatible = "xlnx,MyLEDIP-1.0";
        reg = <0x0 0xA4000000 0x0 0x10000>;
        clocks = <&versal_clk 65>;
        clock-names = "s00_axi_aclk";
    };
};
```

### zocl — AIE kernel driver (v3, sdtgen generated)

```bash
# Generate correct 32-IRQ zocl DT node — do NOT hand-craft
sdtgen set_dt_param -dir sdt_out -zocl enable
```

The generated node uses `interrupts-extended = <&axi_intc_0 0 4>` through
`<&axi_intc_0 31 4>` — 32 IRQs from the AXI interrupt controller.
Hand-crafting 4 GIC SPI IRQs causes wrong hardware state reporting and kernel panics.

### DTB verification after rebuild

```bash
dtc -I dtb -O dts cortexa72-linux.dtb 2>/dev/null | \
  grep -E "no-1-8-v|disable-wp|max-frequency|dwc3|lm75|24c04|MyLEDIP|zocl"
```

All tokens must be present. A missing `no-1-8-v` means the sdhci1 patch failed;
a missing `zocl` means the AIE driver node was not applied.

---

## Hardware Monitoring

### Versal sysmon (die temperature)

```bash
# Temperature in °C
awk '{printf "%.1f°C\n", $1/1000}' /sys/class/hwmon/hwmon0/temp1_input

# Sensor name
cat /sys/class/hwmon/hwmon0/name   # versal_thermal

# Voltage rails (millivolts)
cat /sys/class/hwmon/hwmon0/in*_input
```

### LM75 board temperature (I2C2)

```bash
cat /sys/bus/i2c/devices/2-0048/hwmon/hwmon*/temp1_input
# Returns millidegrees — divide by 1000
```

### EEPROM (I2C2)

```bash
hexdump -C /sys/bus/i2c/devices/2-0050/eeprom
```

---

## GPIO — PS_LED1 (LPD_MIO25)

| Item | Value |
|---|---|
| LPD GPIO chip | gpiochip0 — versal_gpio — 58 lines |
| PMC GPIO chip | gpiochip1 — f1020000.gpio |
| PS_LED1 | LPD_MIO25 = line 25 on gpiochip0 |
| libgpiod version | **v2** — `--chip` flag is mandatory (breaking change from v1) |
| LED on | `sudo gpioset --chip gpiochip0 25=1` |
| LED off | `sudo gpioset --chip gpiochip0 25=0` |

---

## Yocto Build Environment

| Item | Value |
|---|---|
| Vivado / Vitis | 2025.2 ML Enterprise |
| Build host | Ubuntu 22.04 |
| Yocto release | Scarthgap (5.0) |
| meta-xilinx branch | `rel-v2025.2` |
| Base image | `edf-linux-disk-image` (AMD Embedded Development Framework) |
| BSP type | SDT (System Device Tree) |
| Machine | `versal-generic-xcve2302` |
| Distro | `vd100` |
| Package format | RPM (deb has 43 broken Xilinx package names) |
| Kernel | 6.12.40-xilinx |

---

## OS Customisation (Yocto Layers)

All customisation belongs in the custom layer. Never modify upstream layers directly.

### Critical distro rule

`vd100.conf` must `require amd-edf.conf` — **not** `poky.conf`. The AMD EDF config
preserves the full Versal firmware stack including PLM, PDI handling, and
Versal-specific boot artefacts. Replacing it with `poky.conf` strips essential
Versal components.

```bitbake
require conf/distro/amd-edf.conf
DISTRO        = "vd100"
DISTRO_NAME   = "VD100 Linux"
DISTRO_VERSION = "1.0"
DISTRO_CODENAME = "versal"
```

### Package format

```bitbake
PACKAGE_CLASSES = "package_rpm"
```

43 Xilinx recipes produce invalid deb package names. RPM is mandatory.

### EFI staging — python prefuncs (not shell prepend)

`do_image_wic:prepend` shell functions are **skipped** when sstate cache is active.
Use python prefuncs — guaranteed to execute regardless of cache state:

```bitbake
do_image_wic[prefuncs] += "stage_efi_files"
python stage_efi_files() {
    # Stage BOOTAA64.EFI, loader.conf, edf-linux.conf
}
```

### Upstream bug — `systemd-bootconf-edf`

The `meta-amd-edf` recipe deploys `edf-linux.conf` to `loader/` instead of
`loader/entries/`. Fixed via bbappend in each meta layer.

### NTP (no RTC battery on VD100)

```bitbake
PACKAGECONFIG:append = " timesyncd"
```

---

## SDK Cross-Compile Workflow

```bash
source /opt/vd100/sdk/<version>/environment-setup-cortexa72-cortexa53-vd100-linux
$CXX $CFLAGS app.cpp -o app $LDFLAGS
file app   # must show: ELF 64-bit LSB, ARM aarch64
```

> Never manually specify `-I` include paths — the SDK environment carries the
> complete sysroot. `SDKTARGETSYSROOT` is undefined in bitbake context.

Cross-compiler tuple: `aarch64-vd100-linux` (`TARGET_VENDOR = "-vd100"`).

---

## Rebuild After DTS Changes

```bash
bitbake -c cleansstate sdt-artifacts device-tree virtual/dtb
bitbake edf-linux-disk-image
```

Only the boot partition (`mmcblk1p1`) needs updating after a DTB-only change.

---

## Development Environment

- **FPGA Toolchain:** Vivado / Vitis 2025.2 ML Enterprise
- **Yocto customisation:** Custom meta layers, SDT-based BSP
- **Serial console:** PL011 UART at `ff000000`, 115200 8N1
- **Remote access:** SSH over GEM Ethernet

---

## Related Projects

| Repository | Description |
|---|---|
| [vd100-aie-pipeline](https://github.com/adilsondias-engineer/vd100-aie-pipeline) | AIE-ML v2 MA crossover pipeline — Vivado BD, Vitis system project, XRT host app |

This bring-up is part of a broader FPGA systems portfolio for data processing on Versal, Kintex-7 and Artix-7 platforms.

---

*XCVE2302 — Versal AI Edge — Yocto Scarthgap — AMD EDF 25.11 — Vivado/Vitis 2025.2*
