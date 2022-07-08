// SPDX-FileCopyrightText: © 2022 semify <office@semify-eda.com>
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
module wb_memory (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone interface signals
    input         io_wbs_clk,
    input         io_wbs_rst,
    input  [31:0] io_wbs_adr,
    input  [31:0] io_wbs_datwr,
    output [31:0] io_wbs_datrd,
    input         io_wbs_we,
    input         io_wbs_stb,
    output        io_wbs_ack,
    input         io_wbs_cyc,
    
    // Memory 0
    output        csb_mem0,
    output        web_mem0,
    output [ 3:0] wmask_mem0,
    output [ 8:0] addr_mem0,
    output [31:0] din_mem0,
    input  [31:0] dout_mem0,
    
    // Memory 1
    output        csb_mem1,
    output        web_mem1,
    output [ 3:0] wmask_mem1,
    output [ 8:0] addr_mem1,
    output [31:0] din_mem1,
    input  [31:0] dout_mem1
);

endmodule
`default_nettype wire
