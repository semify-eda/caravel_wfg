# Caravel User Project

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![UPRJ_CI](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/user_project_ci.yml) [![Caravel Build](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml/badge.svg)](https://github.com/efabless/caravel_project_example/actions/workflows/caravel_build.yml)

# Waveform Generator

The source files for the Waveform Generator can be found under the [waveform-generator](https://github.com/semify-eda/waveform-generator) repository.

The general idea is that various stimuli can be arbitrarily connected to different driver.

![WFG block diagram](img/WFG.svg)

Currently the following blocks are implemented:

### Stimuli

- `wfg_stim_sine`
- `wfg_stim_mem`

### Driver

- `wfg_drive_spi`
- `wfg_drive_pat`

### Various

- `wfg_interconnect`
- `wfg_core`

## Memory Map

The base address of the user project is `0x30000000`.

By adding an offset to this base address, the various peripherals can be configured.

For the register entries please refer to the [waveform-generator](https://github.com/semify-eda/waveform-generator) repository.

### wfg_core

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x10   | CTRL   | Core control register                          |
| 0x14   | CFG    | Core configuration register                    |

### wfg_interconnect

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x20   | CTRL   | Control register for interconnect              |
| 0x24   | DRIVER0| Driver configuration register                  |
| 0x28   | DRIVER1| Driver configuration register                  |

### wfg_stim_sine

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x30   | CTRL   | Control register for sine wave generation unit |
| 0x34   | INC    | Increment register                             |
| 0x38   | GAIN   | Gain register                                  |
| 0x3C   | OFFSET | Offset register                                |

### wfg_stim_mem

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x40   | CTRL   | Control register for memory unit               |
| 0x44   | START  | Start register                                 |
| 0x48   | END    | End register                                   |
| 0x4C   | CFG    | Configuration register                         |

### wfg_drive_spi

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x50   | CTRL   | Control register for SPI unit                  |
| 0x54   | CFG    | SPI configuration register                     |
| 0x58   | CLKCFG | SPI clock configuration register               |

### wfg_drive_pat

| Offset | Name   | Description                                    |
|--------|--------|------------------------------------------------|
| 0x60   | CTRL   | Control register for pattern unit              |
| 0x64   | CFG    | Pattern configuration register                 |
| 0x68   | PATSEL0| Low bits of PATSEL                             |
| 0x6C   | PATSEL1| High bits of PATSEL                            |

