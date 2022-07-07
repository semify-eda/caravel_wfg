// SPDX-FileCopyrightText: © 2022 semify <office@semify-eda.com>
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
module wb_mux #(
    parameter MATCH_ADDR_0 = 0,
    parameter MATCH_MASK_0 = 0,
    parameter MATCH_ADDR_1 = 0,
    parameter MATCH_MASK_1 = 0
    )(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // WB Master
    input   [31:0] io_wbs_adr,
    input   [31:0] io_wbs_datwr,
    output  [31:0] io_wbs_datrd,
    input          io_wbs_we,
    input          io_wbs_stb,
    output         io_wbs_ack,
    input          io_wbs_cyc,
    
    // WB Peripheral 0
    output  [31:0] io_wbs_adr_0,
    output  [31:0] io_wbs_datwr_0,
    input   [31:0] io_wbs_datrd_0,
    output         io_wbs_we_0,
    output         io_wbs_stb_0,
    input          io_wbs_ack_0,
    output         io_wbs_cyc_0,
    
    
    // WB Peripheral 1
    output  [31:0] io_wbs_adr_1,
    output  [31:0] io_wbs_datwr_1,
    input   [31:0] io_wbs_datrd_1,
    output         io_wbs_we_1,
    output         io_wbs_stb_1,
    input          io_wbs_ack_1,
    output         io_wbs_cyc_1
);

endmodule
`default_nettype wire
