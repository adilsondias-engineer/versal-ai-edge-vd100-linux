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
                └─ VD100 Linux 1.0 (Yocto Scarthgap)
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
- Uses **bare-metal VHDL** for PL design in Vivado 2025.2
- Builds a **complete custom Yocto image** from the System Device Tree exported from the Vivado project
- Produces a **fully branded custom distro** (`vd100`) with automated build — zero manual steps to a bootable SD card
- Documents every hardware quirk specific to the VD100 that no reference design covers

---

## Hardware Quirk — The TXS02612 Level Shifter

The VD100 connects the SD card through a **TXS02612 bidirectional level shifter** because BANK501 operates at 1.8V while SD cards require 3.3V signalling.

**Consequence:** The TXS02612 has a maximum switching frequency of ~30 MHz. The Versal CIPS block requests 200 MHz for SD 3.0 UHS-I tuning by default. Without board-specific DTB patches, SD initialisation fails with `error -110` (timeout).

**Boot mode switches** (active low — Alinx inverts logic, 1=OFF, 0=ON):

| Mode | Description | Physical switches | Status |
|---|---|---|---|
| `1110` | **SD1 LS — matches Vivado CIPS SD 3.0 config** | OFF OFF OFF ON | ✅ Recommended |
| `0101` | SD1 SD 2.0 — also works due to DTB 25MHz cap | ON OFF ON OFF | ✅ Also works |
| `0111` | USB 2.0 | ON OFF OFF OFF | ❌ No USB controllers in image |

---

## The Root Cause (Debugging Post-Mortem)

Weeks of SD card failures, U-Boot "mmc not found" errors, and a completely empty EFI partition traced back to:

```
max-frequency = <25000000>
                           ↑ missing semicolon
```

A single missing semicolon caused the entire DTS patch to fail parsing. Every downstream failure was a symptom:

```
DTS parse error
    → sdhci1 patch not applied
    → CIPS requests 200MHz → TXS02612 saturates → error -110
    → U-Boot cannot read MMC → "mmc not found"
    → EFI partition inaccessible → "Cannot load any image"
```

**The fix:** add the semicolon. No rootfs changes. No `system-top.dtb`. No `CONFIG_DTFILE` changes.

**Lesson:** Read the DTS patch carefully before assuming architectural problems.

---

## DTS Patches

All patches applied directly in `meta-vd100/conf/dts/versal-generic-xcve2302/cortexa72-linux.dts`.

### SD Card — sdhci1

```dts
&sdhci1 {
    no-1-8-v;                    /* disable 1.8V signalling — TXS02612 is 3.3V only */
    disable-wp;                  /* no write-protect pin on VD100 */
    max-frequency = <25000000>;  /* TXS02612 max ~30MHz — cap at 25MHz */
};
```

### USB

```dts
&dwc3_0 {
    status = "okay";
    dr_mode = "host";
};
```

### I2C2 — Board Temperature Sensor and EEPROM

```dts
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

`i2c0` (`f1000000`) and `i2c1` (`ff020000`) are also enabled with `status = "okay"`.

> **Important:** always enable the parent controller node (`status = "okay"`) before adding child devices. Child nodes on a disabled parent are silently ignored by the kernel.

### DTB Verification After Rebuild

```bash
dtc -I dtb -O dts cortexa72-linux.dtb 2>/dev/null | \
  grep -E "no-1-8-v|disable-wp|max-frequency|dwc3|lm75|24c04"
```

All matches must be present before updating the boot partition.

---

## SD Partition Layout

| Partition | Filesystem | Contents |
|---|---|---|
| `mmcblk1p1` `/efi` | FAT32 (1 GB) | `boot.bin`, `Image`, `system.dtb`, `EFI/BOOT/BOOTAA64.EFI`, `loader/` |
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
title   VD100 Linux
efi     /Image
devicetree /system.dtb
options console=ttyPS0,115200 console=ttyAMA0 earlycon root=/dev/mmcblk1p3 rw rootwait uio_pdrv_genirq.of_id=generic-uio
```

**`/efi/EFI/BOOT/BOOTAA64.EFI`** — `systemd-bootaa64.efi` sourced from the Yocto rootfs at:
```
/usr/lib/systemd/boot/efi/systemd-bootaa64.efi
```
Rename to `BOOTAA64.EFI` — U-Boot EFI expects this exact filename for ARM64.

---

## Manual Boot (U-Boot fallback)

Interrupt autoboot and use:

```
fatload mmc 1:1 0x200000 Image
fatload mmc 1:1 0x20000000 versal-generic-xcve2302-system.dtb
setenv bootargs "console=ttyPS0,115200 console=ttyAMA0 earlycon root=/dev/mmcblk1p3 rw rootwait"
booti 0x200000 - 0x20000000
```

---

## Custom Distro — vd100

```bitbake
require conf/distro/amd-edf.conf   # NOT poky.conf — preserves full AMD EDF stack

DISTRO = "vd100"
DISTRO_NAME = "VD100 Linux"
DISTRO_VERSION = "1.0"
DISTRO_CODENAME = "versal"

PACKAGE_CLASSES = "package_rpm"   # deb rejected — 43 Xilinx recipes have invalid deb package names
TARGET_VENDOR = "-vd100"          # cross-compiler tuple: aarch64-vd100-linux
```

> `EXTRA_USERS_PARAMS` must use `=` not `?=` — `amd-edf.conf` sets it with `?=` first, silently winning.

---

## Yocto Layer — Automated Image Build

### EFI Staging — python prefuncs

`do_image_wic:prepend` shell functions are skipped when sstate cache is active. Use `python prefuncs` — guaranteed to execute:

```bitbake
python stage_efi_files() {
    import shutil, os
    rootfs = d.getVar('IMAGE_ROOTFS')
    deploy = d.getVar('DEPLOY_DIR_IMAGE')

    efi_dir = os.path.join(deploy, 'EFI/BOOT')
    os.makedirs(efi_dir, exist_ok=True)
    shutil.copy2(
        os.path.join(rootfs, 'usr/lib/systemd/boot/efi/systemd-bootaa64.efi'),
        os.path.join(efi_dir, 'BOOTAA64.EFI')
    )

    entries_dir = os.path.join(deploy, 'loader/entries')
    os.makedirs(entries_dir, exist_ok=True)

    with open(os.path.join(deploy, 'loader/loader.conf'), 'w') as f:
        f.write('default edf-linux.conf\ntimeout 5\n')

    with open(os.path.join(entries_dir, 'edf-linux.conf'), 'w') as f:
        f.write('title   VD100 Linux\n')
        f.write('efi     /Image\n')
        f.write('devicetree /system.dtb\n')
        f.write('options console=ttyPS0,115200 console=ttyAMA0 earlycon '
                'root=/dev/mmcblk1p3 rw rootwait uio_pdrv_genirq.of_id=generic-uio\n')
}

do_image_wic[prefuncs] += "stage_efi_files"

IMAGE_EFI_BOOT_FILES:append = " \
    EFI/BOOT/BOOTAA64.EFI;EFI/BOOT/BOOTAA64.EFI \
    loader/loader.conf;loader/loader.conf \
    loader/entries/edf-linux.conf;loader/entries/edf-linux.conf \
    boot.bin;boot.bin \
"

IMAGE_INSTALL:append = " \
    devmem2 os-release helloworld \
    libgpiod libgpiod-tools libgpiod-dev libgpiodcxx \
"
```

### Upstream Bug — systemd-bootconf-edf

`meta-amd-edf` deploys `edf-linux.conf` to `loader/` instead of `loader/entries/`. Fix in meta-vd100:

```bitbake
# systemd-bootconf-edf_1.00.bbappend
do_deploy:append() {
    install -d ${DEPLOYDIR}/loader/entries
    install -m 0644 ${S}/edf-linux.conf ${DEPLOYDIR}/loader/entries/
    rm -f ${DEPLOYDIR}/loader/edf-linux.conf
}
```

---

## Hardware Monitoring

### Versal Sysmon — Die Temperature

```bash
cat /sys/class/hwmon/hwmon0/name          # versal_thermal
cat /sys/class/hwmon/hwmon0/temp1_input   # millidegrees e.g. 34007 = 34.0°C

# Formatted
awk '{printf "%.1f°C\n", $1/1000}' /sys/class/hwmon/hwmon0/temp1_input
```

### LM75 Board Temperature (I2C2, 0x48)

```bash
cat /sys/bus/i2c/devices/2-0048/hwmon/hwmon*/temp1_input
```

### EEPROM (I2C2, 0x50 — Atmel 24C04, 4Kbit)

```bash
hexdump -C /sys/bus/i2c/devices/2-0050/eeprom | head
```

### RTC

```bash
hwclock --show    # works while powered — no battery, resets on power cycle
```

---

## GPIO — PS_LED1

PS_LED1 is connected to LPD_MIO25.

| Item | Detail |
|---|---|
| LPD GPIO chip | `gpiochip0` — `versal_gpio` — 58 lines — `ff0b0000` |
| PMC GPIO chip | `gpiochip1` — `f1020000.gpio` |
| PS_LED1 | LPD_MIO25 = line 25 on gpiochip0 |
| libgpiod version | v2 — `--chip` flag mandatory (breaking change from v1) |

**Command line:**
```bash
sudo gpioset --chip gpiochip0 25=1    # on
sudo gpioset --chip gpiochip0 25=0    # off
sudo gpioinfo --chip gpiochip0        # list all 58 lines
```

**C++ toggle with persistent state (libgpiod v2):**

```cpp
#include <string>
#include <stdio.h>
#include <iostream>
#include <ctime>
#include <gpiod.hpp>
#include <filesystem>
#include <cstdlib>
#include <fstream>

using namespace std;

const ::std::filesystem::path chip_path("/dev/gpiochip0");
const ::gpiod::line::offset line_offset = 25;
const std::filesystem::path STATE_FILE = "/var/run/led25.state"; //persist state

int main()
{

   // Display the date and time represented by the timestamp
   cout << ctime(&timestamp);

    // Read persisted state — default inactive if no file
    bool active = false;
    if (std::filesystem::exists(STATE_FILE)) {
        std::ifstream f(STATE_FILE);
        f >> active;
    }


    ::std::cout << line_offset << " 1=" << " last known state=" << active  << ::std::endl;
    // Toggle
    active = !active;

   auto request = ::gpiod::chip(chip_path)
                          .prepare_request()
                          .set_consumer("get-line-value")
                          .add_line_settings(
                              line_offset,
                              ::gpiod::line_settings().set_direction(
                                  ::gpiod::line::direction::OUTPUT))
                          .do_request();
  ::std::cout << line_offset << " current=" << (request.get_value(line_offset) == ::gpiod::line::value::ACTIVE ? "Active" : "Inactive") << ::std::endl;

   if (active)
   {
      request.set_value(line_offset, gpiod::line::value::ACTIVE); // on
   }else{
      request.set_value(line_offset, gpiod::line::value::INACTIVE); // off
   }
   // Persist new state
    std::ofstream f(STATE_FILE);
    f << active;

   std::cout << line_offset << " 2=" << " current state=" << active  << " :" << (request.get_value(line_offset) == ::gpiod::line::value::ACTIVE ? "Active" : "Inactive") << ::std::endl;

   return 0;
}
//$CXX $CFLAGS helloworld.cpp -o helloworld $LDFLAGS -lgpiodcxx -lgpiod
```

**libgpiod v2 key rules:**
- Each `do_request()` takes **exclusive ownership** of the line — a second request releases the first, line floats inactive
- Never create a separate INPUT request to read an OUTPUT line — use `request.get_value()` on the existing request
- For stateless processes (run-and-exit), persist driven state to `/var/run/` — cleared on reboot, which correctly matches physical hardware state after power cycle

---

## Application Development Workflow

### Cross-compile with SDK

```bash
source /opt/vd100/sdk/<version>/environment-setup-cortexa72-cortexa53-vd100-linux

# Always use SDK environment variables — never manually specify -I paths
$CXX $CFLAGS app.cpp -o app $LDFLAGS -lgpiodcxx -lgpiod

file app   # must show: ELF 64-bit LSB, ARM aarch64
```

**Makefile pattern:**
```makefile
build:
	$(CXX) $(CFLAGS) helloworld.cpp -o helloworld $(LDFLAGS)
```

Do not use `--sysroot=${SDKTARGETSYSROOT}` — undefined in bitbake context.

### Deploy via RPM over SSH

```bash
scp app.rpm adilson@192.168.0.x:~
ssh adilson@192.168.0.x "sudo rpm -i app.rpm"
```

---

## Yocto Build Environment

| Item | Value |
|---|---|
| **Vivado / Vitis** | **2025.2 (ML Enterprise License)** |
| Build host | Ubuntu 22.04 |
| Yocto release | Scarthgap (5.0) |
| meta-xilinx branch | `rel-v2025.2` |
| Base image | `edf-linux-disk-image` |
| Distro | `vd100` |
| Package format | RPM |
| Kernel | `6.12.40-xilinx` |

---

## Confirmed Working

| Feature | Status |
|---|---|
| Cold boot → Linux login | ✅ |
| Automatic boot (no intervention) | ✅ |
| Custom distro — VD100 Linux 1.0 | ✅ |
| SD card mode `1110` and `0101` | ✅ |
| Ethernet + SSH | ✅ |
| USB XHCI | ✅ |
| NTP (no RTC battery needed) | ✅ |
| RPM deploy over SSH | ✅ |
| C++ app via bitbake recipe | ✅ |
| PS_LED1 GPIO — libgpiod v2 C++ | ✅ |
| I2C0 / I2C1 / I2C2 | ✅ |
| LM75 board temperature | ✅ |
| EEPROM Atmel 24C04 | ✅ |
| Versal sysmon die temp (34°C) | ✅ |
| RTC present (no battery) | ✅ |
| Custom PL bitstream (PDI) | ✅ |
| Xen hypervisor boot entry | ✅ |

---

## Development Environment

- **FPGA Toolchain:** Vivado 2025.2, Vitis 2025.2 (ML Enterprise License)
- **Board bring-up:** VHDL, bare-metal, no IP integrator dependencies
- **Yocto:** Custom `meta-vd100` layer, SDT-based BSP
- **Serial console:** PL011 UART at `ff000000`, 115200 8N1
- **Remote access:** SSH over GEM Ethernet

---

## Related Projects

This bring-up is part of a broader FPGA trading systems portfolio targeting ultra-low latency market data processing on Versal and Artix-7 platforms.

---

*XCVE2302 — Versal AI Edge — VD100 Linux 1.0 — Yocto Scarthgap — AMD EDF 25.11 — Vivado/Vitis 2025.2*
