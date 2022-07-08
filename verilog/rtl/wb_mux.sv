// SPDX-FileCopyrightText: © 2022 semify <office@semify-eda.com>
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
module wb_mux #(
    parameter MATCH_ADDR_0 = 32'h30000000,
    parameter MATCH_MASK_0 = 32'hFFFFF000,
    parameter MATCH_ADDR_1 = 32'h30001000,
    parameter MATCH_MASK_1 = 32'hFFFFF000
    )(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // WB Master
    input   [31:0] io_wbs_adr,
    input   [31:0] io_wbs_datwr,
    output logic [31:0] io_wbs_datrd,
    input          io_wbs_we,
    input   [ 3:0] io_wbs_sel,
    input          io_wbs_stb,
    output logic   io_wbs_ack,
    input          io_wbs_cyc,
    
    // WB Peripheral 0
    output  [31:0] io_wbs_adr_0,
    output  [31:0] io_wbs_datwr_0,
    input   [31:0] io_wbs_datrd_0,
    output         io_wbs_we_0,
    output  [ 3:0] io_wbs_sel_0,
    output         io_wbs_stb_0,
    input          io_wbs_ack_0,
    output         io_wbs_cyc_0,
    
    
    // WB Peripheral 1
    output  [31:0] io_wbs_adr_1,
    output  [31:0] io_wbs_datwr_1,
    input   [31:0] io_wbs_datrd_1,
    output         io_wbs_we_1,
    output  [ 3:0] io_wbs_sel_1,
    output         io_wbs_stb_1,
    input          io_wbs_ack_1,
    output         io_wbs_cyc_1
);

    logic match_0;
    logic match_1;

	assign match_0 = (io_wbs_adr & MATCH_MASK_0) == MATCH_ADDR_0;
	assign match_1 = (io_wbs_adr & MATCH_MASK_1) == MATCH_ADDR_1;

    // WB Peripheral 0
    assign io_wbs_adr_0     = io_wbs_adr;
    assign io_wbs_datwr_0   = io_wbs_datwr;
    assign io_wbs_we_0      = io_wbs_we;
    assign io_wbs_sel_0     = io_wbs_sel;
    assign io_wbs_stb_0     = io_wbs_stb & match_0;
    assign io_wbs_cyc_0     = io_wbs_cyc & match_0;

    // WB Peripheral 1
    assign io_wbs_adr_1     = io_wbs_adr;
    assign io_wbs_datwr_1   = io_wbs_datwr;
    assign io_wbs_we_1      = io_wbs_we;
    assign io_wbs_sel_1     = io_wbs_sel;
    assign io_wbs_stb_1     = io_wbs_stb & match_1;
    assign io_wbs_cyc_1     = io_wbs_cyc & match_1;
    
    always_comb begin
        io_wbs_datrd = '0;
        io_wbs_ack   = '0;
    
        if (match_0) begin
            io_wbs_datrd = io_wbs_datrd_0;
            io_wbs_ack   = io_wbs_ack_0;
        end 
        
        if (match_1) begin
            io_wbs_datrd = io_wbs_datrd_1;
            io_wbs_ack   = io_wbs_ack_1;
        end
    end

endmodule
`default_nettype wire
