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
    output logic [31:0] io_wbs_datrd,
    input         io_wbs_we,
    input         io_wbs_stb,
    output logic  io_wbs_ack,
    input         io_wbs_cyc,
    
    // Memory 0
    output        csb_mem0,
    output logic       web_mem0,
    output [ 3:0] wmask_mem0,
    output [ 8:0] addr_mem0,
    output [31:0] din_mem0,
    input  [31:0] dout_mem0,
    
    // Memory 1
    output        csb_mem1,
    output logic       web_mem1,
    output [ 3:0] wmask_mem1,
    output [ 8:0] addr_mem1,
    output [31:0] din_mem1,
    input  [31:0] dout_mem1
);
    // Enable both memories
    assign csb_mem0 = 1'b0;
    assign csb_mem1 = 1'b0;

    // address
    logic [29:0] my_address;
    assign my_address = io_wbs_adr[31:2];
    
    // Read merging
    logic [31:0] dout_mem;
    always_comb begin
        if (my_address[9] == 0) begin
            dout_mem = dout_mem0;
        end else begin
            dout_mem = dout_mem1;
        end
    end
    
    assign addr_mem0 = my_address[8:0];
    assign addr_mem1 = my_address[8:0];
    
    assign csb_mem0 = 1'b0;
    assign csb_mem1 = 1'b0;
    
    assign wmask_mem0 = 4'b1111;
    assign wmask_mem1 = 4'b1111;
    
    assign din_mem0 = io_wbs_datwr;
    assign din_mem1 = io_wbs_datwr;
    
    // Write merging
    logic web_mem;
    always_comb begin
        web_mem0 = 1'b1;
        web_mem1 = 1'b1;
    
        if (my_address[9] == 0) begin
            web_mem0 = web_mem;
        end else begin
            web_mem1 = web_mem;
        end
    end
    
    always_ff @(posedge io_wbs_clk, posedge io_wbs_rst) begin
        if (io_wbs_rst) begin
            web_mem <= 1'b1;
            io_wbs_ack <= 1'b0;
            io_wbs_datrd <= '0;
        end else begin
            web_mem <= 1'b1;
            io_wbs_ack <= 1'b0;

            if (io_wbs_cyc && io_wbs_stb && !io_wbs_ack) begin
                io_wbs_ack <= 1'b1;
                
                // Always read the memory
                io_wbs_datrd <= dout_mem;
                
                if (io_wbs_we) begin
                    web_mem <= 1'b0;
                end
            end
            
            /*if (web_mem) begin
                io_wbs_ack <= 1'b1;
                web_mem <= 1'b0;
            end*/
        
        
        end
    end

endmodule
`default_nettype wire
