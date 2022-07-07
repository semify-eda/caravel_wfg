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

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

// WB Peripheral 0
wire  [31:0] io_wbs_adr_0;
wire  [31:0] io_wbs_datwr_0;
wire  [31:0] io_wbs_datrd_0;
wire         io_wbs_we_0;
wire         io_wbs_stb_0;
wire         io_wbs_ack_0;
wire         io_wbs_cyc_0;

// WB Peripheral 1
wire  [31:0] io_wbs_adr_1;
wire  [31:0] io_wbs_datwr_1;
wire  [31:0] io_wbs_datrd_1;
wire         io_wbs_we_1;
wire         io_wbs_stb_1;
wire         io_wbs_ack_1;
wire         io_wbs_cyc_1;

assign io_wbs_datrd_1 = 0;
assign io_wbs_ack_1 = 0;

wb_mux wb_mux_inst (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    // WB Master
    .io_wbs_adr     (wbs_adr_i),
    .io_wbs_datwr   (wbs_dat_i),
    .io_wbs_datrd   (wbs_dat_o),
    .io_wbs_we      (wbs_we_i),
    .io_wbs_stb     (wbs_stb_i),
    .io_wbs_ack     (wbs_ack_o),
    .io_wbs_cyc     (wbs_cyc_i),
    
    // WB Peripheral 0
    .io_wbs_adr_0   (io_wbs_adr_0),
    .io_wbs_datwr_0 (io_wbs_datwr_0),
    .io_wbs_datrd_0 (io_wbs_datrd_0),
    .io_wbs_we_0    (io_wbs_we_0),
    .io_wbs_stb_0   (io_wbs_stb_0),
    .io_wbs_ack_0   (io_wbs_ack_0),
    .io_wbs_cyc_0   (io_wbs_cyc_0),
    
    
    // WB Peripheral 1
    .io_wbs_adr_1   (io_wbs_adr_1),
    .io_wbs_datwr_1 (io_wbs_datwr_1),
    .io_wbs_datrd_1 (io_wbs_datrd_1),
    .io_wbs_we_1    (io_wbs_we_1),
    .io_wbs_stb_1   (io_wbs_stb_1),
    .io_wbs_ack_1   (io_wbs_ack_1),
    .io_wbs_cyc_1   (io_wbs_cyc_1)
);


wire csb1;
wire [9:0 ] addr1;
wire [31:0] dout1;
wire [23:0] unused;

wfg_top my_wfg (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    
    .io_wbs_clk(wb_clk_i),
    .io_wbs_rst(wb_rst_i),
    
    // MGMT SoC Wishbone Slave
    
    .io_wbs_adr     (io_wbs_adr_0),
    .io_wbs_datwr   (io_wbs_datwr_0),
    .io_wbs_datrd   (io_wbs_datrd_0),
    .io_wbs_we      (io_wbs_we_0),
    .io_wbs_stb     (io_wbs_stb_0),
    .io_wbs_ack     (io_wbs_ack_0),
    .io_wbs_cyc     (io_wbs_cyc_0),

    // IO Pads

    .wfg_drive_spi_sclk_o(io_out[8]),
    .wfg_drive_spi_cs_no (io_out[9]),
    .wfg_drive_spi_sdo_o (io_out[10]),
    
    .wfg_drive_pat_dout_o({unused, io_out[18:11]}),
    
    .io_oeb(io_oeb[18:8]),
    
    // Memory
    
    .csb1   (csb1),
    .addr1  (addr1),
    .dout1  (dout1)
);

wire        csb_mem0;
wire [ 8:0] addr_mem0;
wire [31:0] dout_mem0;

wire        csb_mem1;
wire [ 8:0] addr_mem1;
wire [31:0] dout_mem1;

merge_memory merge_memory_inst (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    // Memory interface
    .csb    (csb1),
    .addr   (addr1),
    .dout   (dout1),
    
    // Memory 0
    .csb_mem0   (csb_mem0),
    .addr_mem0  (addr_mem0),
    .dout_mem0  (dout_mem0),
    
    // Memory 1
    .csb_mem1   (csb_mem1),
    .addr_mem1  (addr_mem1),
    .dout_mem1  (dout_mem1)
);

sky130_sram_2kbyte_1rw1r_32x512_8 sky130_sram_2kbyte_1rw1r_32x512_8_inst0 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    // TODO
    // Port 0: RW
    .clk0   (),
    .csb0   (),
    .web0   (),
    .wmask0 (),
    .addr0  (),
    .din0   (),
    .dout0  (),

    // Port 1: R
    .clk1   (wb_clk_i),
    .csb1   (csb_mem0),
    .addr1  (addr_mem0),
    .dout1  (dout_mem0)
);

sky130_sram_2kbyte_1rw1r_32x512_8 sky130_sram_2kbyte_1rw1r_32x512_8_inst1 (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif

    // TODO
    // Port 0: RW
    .clk0   (),
    .csb0   (),
    .web0   (),
    .wmask0 (),
    .addr0  (),
    .din0   (),
    .dout0  (),

    // Port 1: R
    .clk1   (wb_clk_i),
    .csb1   (csb_mem1),
    .addr1  (addr_mem1),
    .dout1  (dout_mem1)
);

endmodule	// user_project_wrapper

`default_nettype wire
