// SPDX-FileCopyrightText: © 2022 semify <office@semify-eda.com>
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
module wfg_top #(
    parameter BUSW = 32
) (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Wishbone interface signals
    input                     io_wbs_clk,
    input                     io_wbs_rst,
    input        [(BUSW-1):0] io_wbs_adr,
    input        [(BUSW-1):0] io_wbs_datwr,
    output       [(BUSW-1):0] io_wbs_datrd,
    input                     io_wbs_we,
    input                     io_wbs_stb,
    output                    io_wbs_ack,
    input                     io_wbs_cyc,

    output       wfg_drive_spi_sclk_o,
    output       wfg_drive_spi_cs_no,
    output       wfg_drive_spi_sdo_o,
    
    output [2:0] io_oeb
);

endmodule
`default_nettype wire
