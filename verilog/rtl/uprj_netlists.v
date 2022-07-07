// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

// Include caravel global defines for the number of the user project IO pads 
`include "defines.v"
`define USE_POWER_PINS

`ifdef GL
    // Assume default net type to be wire because GL netlists don't have the wire definitions
    `default_nettype wire
    `include "gl/user_project_wrapper.v"
    `include "gl/wfg_top.v"
`else
    `include "user_project_wrapper.v"
    `include "merge_memory.sv"
    `include "wb_memory.sv"
    `include "wb_mux.sv"
    `include "wfg/wfg_core/rtl/wfg_core.sv"
	`include "wfg/wfg_core/rtl/wfg_core_top.sv"
	`include "wfg/wfg_core/rtl/wfg_core_wishbone_reg.sv"
	`include "wfg/wfg_interconnect/rtl/wfg_interconnect.sv"
	`include "wfg/wfg_interconnect/rtl/wfg_interconnect_top.sv"
	`include "wfg/wfg_interconnect/rtl/wfg_interconnect_wishbone_reg.sv"
	`include "wfg/wfg_stim_sine/rtl/wfg_stim_sine."
	`include "wfg/wfg_stim_sine/rtl/wfg_stim_sine_top.sv"
	`include "wfg/wfg_stim_sine/rtl/wfg_stim_sine_wishbone_reg.sv"
	`include "wfg/wfg_stim_mem/rtl/wfg_stim_mem.sv"
	`include "wfg/wfg_stim_mem/rtl/dsp_scale_sn_us.sv"
	`include "wfg/wfg_stim_mem/rtl/wfg_stim_mem_top.sv"
	`include "wfg/wfg_stim_mem/rtl/wfg_stim_mem_wishbone_reg.sv"
	`include "wfg/wfg_drive_spi/rtl/wfg_drive_spi.sv"
	`include "wfg/wfg_drive_spi/rtl/wfg_drive_spi_top.sv"
	`include "wfg/wfg_drive_spi/rtl/wfg_drive_spi_wishbone_reg.sv"
	`include "wfg/wfg_drive_pat/rtl/wfg_drive_pat.sv"
	`include "wfg/wfg_drive_pat/rtl/wfg_drive_pat_channel.sv"
	`include "wfg/wfg_drive_pat/rtl/wfg_drive_pat_top.sv"
	`include "wfg/wfg_drive_pat/rtl/wfg_drive_pat_wishbone_reg.sv"

	`include "wfg/wfg_top/rtl/wfg_top.sv"
`endif
