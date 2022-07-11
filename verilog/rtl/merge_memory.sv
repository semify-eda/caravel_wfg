// SPDX-FileCopyrightText: © 2022 semify <office@semify-eda.com>
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
module merge_memory (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    // Memory interface
    input         csb,
    input  [ 9:0] addr,
    output logic [31:0] dout,
    
    // Memory 0
    output logic        csb_mem0,
    output logic [ 8:0] addr_mem0,
    input  [31:0] dout_mem0,
    
    // Memory 1
    output logic        csb_mem1,
    output logic [ 8:0] addr_mem1,
    input  [31:0] dout_mem1
);
    assign csb_mem0 = csb;
    assign csb_mem1 = csb;
    
    assign addr_mem0 = addr[8:0];
    assign addr_mem1 = addr[8:0];

    always_comb begin
        if (addr[9] == 0) begin
            dout = dout_mem0;
        end else begin
            dout = dout_mem1;
        end
    end

endmodule
`default_nettype wire
