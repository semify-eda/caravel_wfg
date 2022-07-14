/*
 * SPDX-FileCopyrightText: 2020 Efabless Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * SPDX-License-Identifier: Apache-2.0
 */

// This include is relative to $CARAVEL_PATH (see Makefile)
#include <defs.h>
#include <stub.c>

/*
	Wishbone Test:
		- Configures MPRJ lower 8-IO pins as outputs
		- Checks counter value through the wishbone port
*/

void wfg_set_register(uint32_t peripheral, uint32_t address, uint32_t value);

void main()
{

	/* 
	IO Control Registers
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 3-bits | 1-bit | 1-bit | 1-bit  | 1-bit  | 1-bit | 1-bit   | 1-bit   | 1-bit | 1-bit | 1-bit   |
	Output: 0000_0110_0000_1110  (0x1808) = GPIO_MODE_USER_STD_OUTPUT
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 110    | 0     | 0     | 0      | 0      | 0     | 0       | 1       | 0     | 0     | 0       |
	
	 
	Input: 0000_0001_0000_1111 (0x0402) = GPIO_MODE_USER_STD_INPUT_NOPULL
	| DM     | VTRIP | SLOW  | AN_POL | AN_SEL | AN_EN | MOD_SEL | INP_DIS | HOLDH | OEB_N | MGMT_EN |
	| 001    | 0     | 0     | 0      | 0      | 0     | 0       | 0       | 0     | 1     | 0       |
	*/

	/* Set up the housekeeping SPI to be connected internally so	*/
	/* that external pin changes don't affect it.			*/

    reg_spi_enable = 1;
    reg_wb_enable = 1;

    // SPI
    reg_mprj_io_8  = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_9  = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_10 = GPIO_MODE_USER_STD_OUTPUT;
    
    // Pattern
    reg_mprj_io_11 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_12 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_13 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_14 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_15 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_16 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_17 = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_18 = GPIO_MODE_USER_STD_OUTPUT;

     /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

    int core_sync_count = 16;
    int core_subcycle_count = 16;
    
    int subcore_sync_count = 32;
    int subcore_subcycle_count = 16;
    
    int cnt = 3;
    int cpol = 0;
    int lsbfirst = 0;
    int dff = 3;
    int sspol = 0;

    int core_sel_spi = 0;
    int core_sel_pat = 1;
    
    int pattern_start = 0x0;
    int pattern_end = 0xF;
    
    int mem_start = 0x000;
    int mem_end = 0x00F;
    int mem_inc = 0x2;
    int mem_gain = 0x0001;

    //*((volatile uint32_t*)0x30000000) = 0xDEADBEEF;

    // Write to memory
    for (int i=0; i<0xF; i++)
    {
        *(((volatile uint8_t*)0x30001000) + i) = i;
    }
    
    *(((volatile uint32_t*)0x30001000) + 4) = 0x00000000;
    *(((volatile uint32_t*)0x30001000) + 5) = 0x00000001;
    *(((volatile uint32_t*)0x30001000) + 6) = 0x00000004;
    *(((volatile uint32_t*)0x30001000) + 7) = 0x0000000C;
    *(((volatile uint32_t*)0x30001000) + 8) = 0x00000012;
    *(((volatile uint32_t*)0x30001000) + 9) = 0x00000024;
    *(((volatile uint32_t*)0x30001000) + 10) = 0x0000004F;
    *(((volatile uint32_t*)0x30001000) + 11) = 0x0000006A;
    *(((volatile uint32_t*)0x30001000) + 12) = 0x00000085;
    *(((volatile uint32_t*)0x30001000) + 13) = 0x000000A0;
    *(((volatile uint32_t*)0x30001000) + 14) = 0x000000BD;
    *(((volatile uint32_t*)0x30001000) + 15) = 0x000000FF;
    
    for (int i=0; i<0xF; i++)
    {
        *(((volatile uint32_t*)0x30001000) + 510 + i) = *(((volatile uint32_t*)0x30001000) + (i % 4));
    }
    
    for (int i=0; i<0xF; i++)
    {
        *(((volatile uint32_t*)0x30001000) + i + 0xFF) = *(((volatile uint32_t*)0x30001000) + 512 + i);
    }

    // Core
    wfg_set_register(0x1, 0x4, (core_sync_count << 0) | (core_subcycle_count << 8));
    wfg_set_register(0x1, 0x0, 1); // Enable
    
    // Subcore
    wfg_set_register(0x2, 0x4, (subcore_sync_count << 0) | (subcore_subcycle_count << 8));
    wfg_set_register(0x2, 0x0, 1); // Enable
    
    // Interconnect
    wfg_set_register(0x3, 0x4, 0); // Driver0
    wfg_set_register(0x3, 0x8, 1); // Driver1
    wfg_set_register(0x3, 0x0, 1); // Enable
    
    // Sine
    wfg_set_register(0x4, 0x0, 1); // Enable
    
    // Mem
    wfg_set_register(0x5, 0x4, mem_start); // Start
    wfg_set_register(0x5, 0x8, mem_end); // End
    wfg_set_register(0x5, 0xC, mem_gain<<8 | mem_inc); // Configuration
    wfg_set_register(0x5, 0x0, 1); // Enable

    // SPI
    wfg_set_register(0x6, 0x8, cnt); // Clock divider
    wfg_set_register(0x6, 0x4, (cpol<<0) | (lsbfirst<<1) | (dff<<2) | (sspol<<4) | (core_sel_spi<<5));
    wfg_set_register(0x6, 0x0, 1); // Enable SPI
    
    // Pattern
    wfg_set_register(0x7, 0x4, (pattern_start) | (pattern_end<<8) | (core_sel_pat<<16) ); // Start:End
    wfg_set_register(0x7, 0x8, 0xFFFFFFFF); // Low bit
    wfg_set_register(0x7, 0xC, 0xFFFFFFFF); // High bit
    wfg_set_register(0x7, 0x0, 0xFFFFFFFF); // Enable all bits
}

volatile uint8_t test = 0;
#define WFG_BASE (volatile uint32_t*)0x30000000

/*
Write to a register of the waveform generator

peripheral:
The address of the peripheral, can be 0-15

address:
The address of the register, can be 0-15
*/
void wfg_set_register(uint32_t peripheral, uint32_t address, uint32_t value)
{
    *(volatile uint32_t*)(WFG_BASE + (peripheral<<2) + ((address & 0xF)>>2)) = value;
    
    int readback = *(volatile uint32_t*)(WFG_BASE + (peripheral<<2) + ((address & 0xF)>>2));

    if (readback != value)
    {
        test = 1;
        //printf("Wrong value: %d != %d\n", readback, value); // TODO
    }    
}
