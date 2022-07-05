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

### wfg_stim_sine

| Offset | Name | Description |
|--------|------|-------------|
|        |      |             |
|        |      |             |

### wfg_stim_mem

### wfg_drive_spi

### wfg_drive_pat

### wfg_interconnect

### wfg_core