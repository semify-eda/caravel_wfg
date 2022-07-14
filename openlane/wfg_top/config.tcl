# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) wfg_top

set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/wfg/wfg_core/rtl/wfg_core.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_core/rtl/wfg_core_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_core/rtl/wfg_core_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_subcore/rtl/wfg_subcore.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_subcore/rtl/wfg_subcore_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_subcore/rtl/wfg_subcore_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_interconnect/rtl/wfg_interconnect.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_interconnect/rtl/wfg_interconnect_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_interconnect/rtl/wfg_interconnect_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_sine/rtl/wfg_stim_sine.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_sine/rtl/wfg_stim_sine_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_sine/rtl/wfg_stim_sine_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_mem/rtl/wfg_stim_mem.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_mem/rtl/dsp_scale_sn_us.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_mem/rtl/wfg_stim_mem_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_stim_mem/rtl/wfg_stim_mem_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_spi/rtl/wfg_drive_spi.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_spi/rtl/wfg_drive_spi_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_spi/rtl/wfg_drive_spi_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_pat/rtl/wfg_drive_pat.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_pat/rtl/wfg_drive_pat_channel.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_pat/rtl/wfg_drive_pat_top.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_drive_pat/rtl/wfg_drive_pat_wishbone_reg.sv \
	$script_dir/../../verilog/rtl/wfg/wfg_top/rtl/wfg_top.sv"

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_PORT) "io_wbs_clk"
set ::env(CLOCK_PERIOD) "20"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 750 550"

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(PL_BASIC_PLACEMENT) 0
set ::env(PL_TARGET_DENSITY) 0.30

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
# 
set ::env(RT_MAX_LAYER) {met4}
set ::env(ROUTING_CORES) "6"

# You can draw more power domains if you need to 
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1
