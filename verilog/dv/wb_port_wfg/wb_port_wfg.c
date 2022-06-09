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

    reg_mprj_io_8  = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_9  = GPIO_MODE_USER_STD_OUTPUT;
    reg_mprj_io_10 = GPIO_MODE_USER_STD_OUTPUT;

     /* Apply configuration */
    reg_mprj_xfer = 1;
    while (reg_mprj_xfer == 1);

    int sync_count = 16;
    int subcycle_count = 16;
    
    int cnt = 3;
    int cpol = 0;
    int lsbfirst = 0;
    int dff = 3;
    int sspol = 0;


    //*((volatile uint32_t*)0x30000000) = 0xDEADBEEF;

    // Core
    wfg_set_register(0x1, 0x4, (sync_count << 0) | (subcycle_count << 8));
    wfg_set_register(0x1, 0x0, 1); // Enable
    
    // Sine
    wfg_set_register(0x2, 0x0, 1); // Enable

    // SPI
    wfg_set_register(0x3, 0x8, cnt); // Clock divider
    wfg_set_register(0x3, 0x4, (cpol<<0) | (lsbfirst<<1) | (dff<<2) | (sspol<<4));
    wfg_set_register(0x3, 0x0, 1); // Enable SPI
}

volatile uint8_t test = 0;
#define WFG_BASE (volatile uint32_t*)0x30000000

/*
Write to a register of the waveform generator

peripheral:
 - core         - 0x01
 - stim_sine    - 0x02
 - drive_spi    - 0x03

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
