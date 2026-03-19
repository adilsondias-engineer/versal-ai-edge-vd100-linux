# psHelloWorld — Vivado Hardware Project

Vivado 2025.2 project for the Alinx VD100 (XCVE2302-SFVA784-1LP-E-S). Configures the Versal CIPS block, defines the PL hello world design, and exports the XSA for System Device Tree generation.

---

## Project Structure

```
psHelloWorld/
└── hardware/
    ├── psHelloWorld.hw/          ← Vivado hardware handoff files
    ├── psHelloWorld.gen/         ← generated IP output products
    ├── psHelloWorld.runs/        ← implementation runs
    ├── psHelloWorld.sim/         ← simulation files
    ├── psHelloWorld.srcs/        ← source files (VHDL, constraints)
    └── psHelloWorld.cache/       ← Vivado cache
```

---

## Prerequisites

- Vivado 2025.2 (ML Enterprise License)
- Alinx VD100 board (XCVE2302-SFVA784-1LP-E-S)
- USB-UART cable for JTAG/serial console
- AMD Embedded Development Framework (EDF) — meta-amd-edf layer (rel-v2025.2)

---

## CIPS Configuration

The Versal CIPS block is configured for the VD100 hardware. Key settings:

### SD Card (sdhci1)

| Setting | Value | Notes |
|---|---|---|
| SD interface | SD 3.0 | Vivado config |
| MIO bank | Bank 501 | 1.8V |
| Physical interface | via TXS02612 | level shifter to 3.3V |

> The TXS02612 level shifter limits SD clock to ~30 MHz. The Linux DTB patch `max-frequency = <25000000>` is required — see [yocto/meta-vd100/README.md](../../yocto/meta-vd100/README.md).

### Ethernet

| Setting | Value |
|---|---|
| Interface | RGMII |
| MIO | Bank 501 |
| PHY address | 0 |

### USB

| Setting | Value |
|---|---|
| Controller | DWC3 at `fe200000` |
| Mode | Host |

### I2C

| Bus | Address | Connected devices |
|---|---|---|
| I2C0 | `f1000000` (PMC) | — |
| I2C1 | `ff020000` (LPD) | — |
| I2C2 | `ff030000` (LPD) | LM75 @ 0x48, EEPROM @ 0x50 |

### GPIO

| Controller | Address | Lines |
|---|---|---|
| LPD GPIO | `ff0b0000` | 58 lines — PS_LED1 on MIO25 |
| PMC GPIO | `f1020000` | — |

---

## XSA Export

After implementation, export the XSA for System Device Tree generation:

```
Vivado menu: File → Export → Export Hardware (XSA)
    ☑ Include bitstream
    Output: psHelloWorld.xsa
```

The exported XSA contains the hardware handoff data required by `lopper`/`sdtgen` to generate the System Device Tree.

---

## Boot Mode Switches

The Alinx VD100 uses active-low boot mode switches — the physical switch positions are inverted from the MODE bit values.

| MODE | Boot source | Physical switches | Notes |
|---|---|---|---|
| `1110` | SD1 LS (level-shifter) | OFF OFF OFF ON | ✅ Correct for VD100 |
| `0101` | SD1 SD 2.0 | ON OFF ON OFF | Also works with DTB patch |
| `0000` | JTAG | ON ON ON ON | Development/debug |

---

## PS_LED1

PS_LED1 is connected to LPD_MIO25. Controlled from Linux via libgpiod:

```bash
sudo gpioset --chip gpiochip0 25=1   # on
sudo gpioset --chip gpiochip0 25=0   # off
```

---

## Next Step

Export the XSA and proceed to System Device Tree generation:
**[../software/vd100_sdt/README.md](../software/vd100_sdt/README.md)**