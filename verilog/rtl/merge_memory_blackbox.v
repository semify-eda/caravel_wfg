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
    output [31:0] dout,
    
    // Memory 0
    output        csb_mem0,
    output [ 8:0] addr_mem0,
    input  [31:0] dout_mem0,
    
    // Memory 1
    output        csb_mem1,
    output [ 8:0] addr_mem1,
    input  [31:0] dout_mem1
);

endmodule
`default_nettype wire
