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

`timescale 1 ns / 1 ps

module wb_port_wfg_tb;
	reg my_clock;
	reg RSTB;
	reg CSB;
	reg power1, power2;
	reg power3, power4;

	wire gpio;
	wire [37:0] mprj_io;
	wire [7:0] mprj_io_0;
	
	wire sclk, cs, sdo;

	assign sclk = mprj_io[8];
	assign cs   = mprj_io[9];
	assign sdo  = mprj_io[10];

	assign mprj_io[3] = 1'b1;

	// External clock is used by default.  Make this artificially fast for the
	// simulation.  Normally this would be a slow clock and the digital PLL
	// would be the fast clock.

	initial begin
		my_clock = 1'b0;
	end

	always #12.5 my_clock <= !my_clock;

    wire clock;
    
    assign clock = my_clock;

	initial begin
		$dumpfile("wb_port_wfg.vcd");
		$dumpvars(0, wb_port_wfg_tb);

		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (200) begin
			repeat (1000) @(posedge my_clock);
			// $display("+1000 cycles");
		end
		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test Mega-Project WB WFG (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test Mega-Project WB WFG (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end
	
    initial begin
        $readmemh("memory.hex", uut.mprj.sky130_sram_2kbyte_1rw1r_32x512_8_inst0.mem);
        $readmemh("memory.hex", uut.mprj.sky130_sram_2kbyte_1rw1r_32x512_8_inst1.mem);
    end

    // Deserialize data
    integer data, i;
    always @(posedge cs) begin
        for (i=31;i>=0;i--) begin
            @(posedge sclk);
            data[i] = sdo;
        end
    end

	initial begin
        @(negedge cs);
		$display("Monitor: MPRJ-Logic WB WFG Started");
		
        @(posedge cs);
        wait(data === 25094);
        @(posedge cs);
        wait(data === 46345);
        @(posedge cs);
        wait(data === 60543);
        @(posedge cs);
        wait(data === 65533);
        @(posedge cs);
        wait(data === 60539);
        @(posedge cs);
        wait(data === 46336);
        @(posedge cs);
        wait(data === 25084);
        @(posedge cs);
        wait(data === 10);
        @(posedge cs);
        wait(data === 237050);
        @(posedge cs);
        wait(data === 215799);
        @(posedge cs);
        wait(data === 201601);
        @(posedge cs);
        wait(data === 196611);
        @(posedge cs);
        wait(data === 201605);
        @(posedge cs);
        wait(data === 215808);
        @(posedge cs);
        wait(data === 237060);
        @(posedge cs);
        wait(data === 262134);

		`ifdef GL
	    	$display("Monitor: Mega-Project WB WFG (GL) Passed");
		`else
		    $display("Monitor: Mega-Project WB WFG (RTL) Passed");
		`endif
	    $finish;
	end

	initial begin
		RSTB <= 1'b0;
		CSB  <= 1'b1;		// Force CSB high
		#2000;
		RSTB <= 1'b1;	    	// Release reset
		#100000;
		CSB = 1'b0;		// CSB can be released
	end

	initial begin		// Power-up sequence
		power1 <= 1'b0;
		power2 <= 1'b0;
		#200;
		power1 <= 1'b1;
		#200;
		power2 <= 1'b1;
	end

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	wire VDD3V3 = power1;
	wire VDD1V8 = power2;
	wire USER_VDD3V3 = power3;
	wire USER_VDD1V8 = power4;
	wire VSS = 1'b0;

	caravel uut (
		.vddio	  (VDD3V3),
		.vddio_2  (VDD3V3),
		.vssio	  (VSS),
		.vssio_2  (VSS),
		.vdda	  (VDD3V3),
		.vssa	  (VSS),
		.vccd	  (VDD1V8),
		.vssd	  (VSS),
		.vdda1    (VDD3V3),
		.vdda1_2  (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa1_2  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),
		.clock    (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb	  (RSTB)
	);

	spiflash #(
		.FILENAME("wb_port_wfg.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

endmodule
`default_nettype wire
