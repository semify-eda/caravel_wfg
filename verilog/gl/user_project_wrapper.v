module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire \addr0_mem0[0] ;
 wire \addr0_mem0[1] ;
 wire \addr0_mem0[2] ;
 wire \addr0_mem0[3] ;
 wire \addr0_mem0[4] ;
 wire \addr0_mem0[5] ;
 wire \addr0_mem0[6] ;
 wire \addr0_mem0[7] ;
 wire \addr0_mem0[8] ;
 wire \addr0_mem1[0] ;
 wire \addr0_mem1[1] ;
 wire \addr0_mem1[2] ;
 wire \addr0_mem1[3] ;
 wire \addr0_mem1[4] ;
 wire \addr0_mem1[5] ;
 wire \addr0_mem1[6] ;
 wire \addr0_mem1[7] ;
 wire \addr0_mem1[8] ;
 wire \addr1[0] ;
 wire \addr1[1] ;
 wire \addr1[2] ;
 wire \addr1[3] ;
 wire \addr1[4] ;
 wire \addr1[5] ;
 wire \addr1[6] ;
 wire \addr1[7] ;
 wire \addr1[8] ;
 wire \addr1[9] ;
 wire \addr1_mem0[0] ;
 wire \addr1_mem0[1] ;
 wire \addr1_mem0[2] ;
 wire \addr1_mem0[3] ;
 wire \addr1_mem0[4] ;
 wire \addr1_mem0[5] ;
 wire \addr1_mem0[6] ;
 wire \addr1_mem0[7] ;
 wire \addr1_mem0[8] ;
 wire \addr1_mem1[0] ;
 wire \addr1_mem1[1] ;
 wire \addr1_mem1[2] ;
 wire \addr1_mem1[3] ;
 wire \addr1_mem1[4] ;
 wire \addr1_mem1[5] ;
 wire \addr1_mem1[6] ;
 wire \addr1_mem1[7] ;
 wire \addr1_mem1[8] ;
 wire csb0_mem0;
 wire csb0_mem1;
 wire csb1;
 wire csb1_mem0;
 wire csb1_mem1;
 wire \din0_mem0[0] ;
 wire \din0_mem0[10] ;
 wire \din0_mem0[11] ;
 wire \din0_mem0[12] ;
 wire \din0_mem0[13] ;
 wire \din0_mem0[14] ;
 wire \din0_mem0[15] ;
 wire \din0_mem0[16] ;
 wire \din0_mem0[17] ;
 wire \din0_mem0[18] ;
 wire \din0_mem0[19] ;
 wire \din0_mem0[1] ;
 wire \din0_mem0[20] ;
 wire \din0_mem0[21] ;
 wire \din0_mem0[22] ;
 wire \din0_mem0[23] ;
 wire \din0_mem0[24] ;
 wire \din0_mem0[25] ;
 wire \din0_mem0[26] ;
 wire \din0_mem0[27] ;
 wire \din0_mem0[28] ;
 wire \din0_mem0[29] ;
 wire \din0_mem0[2] ;
 wire \din0_mem0[30] ;
 wire \din0_mem0[31] ;
 wire \din0_mem0[3] ;
 wire \din0_mem0[4] ;
 wire \din0_mem0[5] ;
 wire \din0_mem0[6] ;
 wire \din0_mem0[7] ;
 wire \din0_mem0[8] ;
 wire \din0_mem0[9] ;
 wire \din0_mem1[0] ;
 wire \din0_mem1[10] ;
 wire \din0_mem1[11] ;
 wire \din0_mem1[12] ;
 wire \din0_mem1[13] ;
 wire \din0_mem1[14] ;
 wire \din0_mem1[15] ;
 wire \din0_mem1[16] ;
 wire \din0_mem1[17] ;
 wire \din0_mem1[18] ;
 wire \din0_mem1[19] ;
 wire \din0_mem1[1] ;
 wire \din0_mem1[20] ;
 wire \din0_mem1[21] ;
 wire \din0_mem1[22] ;
 wire \din0_mem1[23] ;
 wire \din0_mem1[24] ;
 wire \din0_mem1[25] ;
 wire \din0_mem1[26] ;
 wire \din0_mem1[27] ;
 wire \din0_mem1[28] ;
 wire \din0_mem1[29] ;
 wire \din0_mem1[2] ;
 wire \din0_mem1[30] ;
 wire \din0_mem1[31] ;
 wire \din0_mem1[3] ;
 wire \din0_mem1[4] ;
 wire \din0_mem1[5] ;
 wire \din0_mem1[6] ;
 wire \din0_mem1[7] ;
 wire \din0_mem1[8] ;
 wire \din0_mem1[9] ;
 wire \dout0_mem0[0] ;
 wire \dout0_mem0[10] ;
 wire \dout0_mem0[11] ;
 wire \dout0_mem0[12] ;
 wire \dout0_mem0[13] ;
 wire \dout0_mem0[14] ;
 wire \dout0_mem0[15] ;
 wire \dout0_mem0[16] ;
 wire \dout0_mem0[17] ;
 wire \dout0_mem0[18] ;
 wire \dout0_mem0[19] ;
 wire \dout0_mem0[1] ;
 wire \dout0_mem0[20] ;
 wire \dout0_mem0[21] ;
 wire \dout0_mem0[22] ;
 wire \dout0_mem0[23] ;
 wire \dout0_mem0[24] ;
 wire \dout0_mem0[25] ;
 wire \dout0_mem0[26] ;
 wire \dout0_mem0[27] ;
 wire \dout0_mem0[28] ;
 wire \dout0_mem0[29] ;
 wire \dout0_mem0[2] ;
 wire \dout0_mem0[30] ;
 wire \dout0_mem0[31] ;
 wire \dout0_mem0[3] ;
 wire \dout0_mem0[4] ;
 wire \dout0_mem0[5] ;
 wire \dout0_mem0[6] ;
 wire \dout0_mem0[7] ;
 wire \dout0_mem0[8] ;
 wire \dout0_mem0[9] ;
 wire \dout0_mem1[0] ;
 wire \dout0_mem1[10] ;
 wire \dout0_mem1[11] ;
 wire \dout0_mem1[12] ;
 wire \dout0_mem1[13] ;
 wire \dout0_mem1[14] ;
 wire \dout0_mem1[15] ;
 wire \dout0_mem1[16] ;
 wire \dout0_mem1[17] ;
 wire \dout0_mem1[18] ;
 wire \dout0_mem1[19] ;
 wire \dout0_mem1[1] ;
 wire \dout0_mem1[20] ;
 wire \dout0_mem1[21] ;
 wire \dout0_mem1[22] ;
 wire \dout0_mem1[23] ;
 wire \dout0_mem1[24] ;
 wire \dout0_mem1[25] ;
 wire \dout0_mem1[26] ;
 wire \dout0_mem1[27] ;
 wire \dout0_mem1[28] ;
 wire \dout0_mem1[29] ;
 wire \dout0_mem1[2] ;
 wire \dout0_mem1[30] ;
 wire \dout0_mem1[31] ;
 wire \dout0_mem1[3] ;
 wire \dout0_mem1[4] ;
 wire \dout0_mem1[5] ;
 wire \dout0_mem1[6] ;
 wire \dout0_mem1[7] ;
 wire \dout0_mem1[8] ;
 wire \dout0_mem1[9] ;
 wire \dout1[0] ;
 wire \dout1[10] ;
 wire \dout1[11] ;
 wire \dout1[12] ;
 wire \dout1[13] ;
 wire \dout1[14] ;
 wire \dout1[15] ;
 wire \dout1[16] ;
 wire \dout1[17] ;
 wire \dout1[18] ;
 wire \dout1[19] ;
 wire \dout1[1] ;
 wire \dout1[20] ;
 wire \dout1[21] ;
 wire \dout1[22] ;
 wire \dout1[23] ;
 wire \dout1[24] ;
 wire \dout1[25] ;
 wire \dout1[26] ;
 wire \dout1[27] ;
 wire \dout1[28] ;
 wire \dout1[29] ;
 wire \dout1[2] ;
 wire \dout1[30] ;
 wire \dout1[31] ;
 wire \dout1[3] ;
 wire \dout1[4] ;
 wire \dout1[5] ;
 wire \dout1[6] ;
 wire \dout1[7] ;
 wire \dout1[8] ;
 wire \dout1[9] ;
 wire \dout1_mem0[0] ;
 wire \dout1_mem0[10] ;
 wire \dout1_mem0[11] ;
 wire \dout1_mem0[12] ;
 wire \dout1_mem0[13] ;
 wire \dout1_mem0[14] ;
 wire \dout1_mem0[15] ;
 wire \dout1_mem0[16] ;
 wire \dout1_mem0[17] ;
 wire \dout1_mem0[18] ;
 wire \dout1_mem0[19] ;
 wire \dout1_mem0[1] ;
 wire \dout1_mem0[20] ;
 wire \dout1_mem0[21] ;
 wire \dout1_mem0[22] ;
 wire \dout1_mem0[23] ;
 wire \dout1_mem0[24] ;
 wire \dout1_mem0[25] ;
 wire \dout1_mem0[26] ;
 wire \dout1_mem0[27] ;
 wire \dout1_mem0[28] ;
 wire \dout1_mem0[29] ;
 wire \dout1_mem0[2] ;
 wire \dout1_mem0[30] ;
 wire \dout1_mem0[31] ;
 wire \dout1_mem0[3] ;
 wire \dout1_mem0[4] ;
 wire \dout1_mem0[5] ;
 wire \dout1_mem0[6] ;
 wire \dout1_mem0[7] ;
 wire \dout1_mem0[8] ;
 wire \dout1_mem0[9] ;
 wire \dout1_mem1[0] ;
 wire \dout1_mem1[10] ;
 wire \dout1_mem1[11] ;
 wire \dout1_mem1[12] ;
 wire \dout1_mem1[13] ;
 wire \dout1_mem1[14] ;
 wire \dout1_mem1[15] ;
 wire \dout1_mem1[16] ;
 wire \dout1_mem1[17] ;
 wire \dout1_mem1[18] ;
 wire \dout1_mem1[19] ;
 wire \dout1_mem1[1] ;
 wire \dout1_mem1[20] ;
 wire \dout1_mem1[21] ;
 wire \dout1_mem1[22] ;
 wire \dout1_mem1[23] ;
 wire \dout1_mem1[24] ;
 wire \dout1_mem1[25] ;
 wire \dout1_mem1[26] ;
 wire \dout1_mem1[27] ;
 wire \dout1_mem1[28] ;
 wire \dout1_mem1[29] ;
 wire \dout1_mem1[2] ;
 wire \dout1_mem1[30] ;
 wire \dout1_mem1[31] ;
 wire \dout1_mem1[3] ;
 wire \dout1_mem1[4] ;
 wire \dout1_mem1[5] ;
 wire \dout1_mem1[6] ;
 wire \dout1_mem1[7] ;
 wire \dout1_mem1[8] ;
 wire \dout1_mem1[9] ;
 wire io_wbs_ack_0;
 wire io_wbs_ack_1;
 wire \io_wbs_adr_0[0] ;
 wire \io_wbs_adr_0[10] ;
 wire \io_wbs_adr_0[11] ;
 wire \io_wbs_adr_0[12] ;
 wire \io_wbs_adr_0[13] ;
 wire \io_wbs_adr_0[14] ;
 wire \io_wbs_adr_0[15] ;
 wire \io_wbs_adr_0[16] ;
 wire \io_wbs_adr_0[17] ;
 wire \io_wbs_adr_0[18] ;
 wire \io_wbs_adr_0[19] ;
 wire \io_wbs_adr_0[1] ;
 wire \io_wbs_adr_0[20] ;
 wire \io_wbs_adr_0[21] ;
 wire \io_wbs_adr_0[22] ;
 wire \io_wbs_adr_0[23] ;
 wire \io_wbs_adr_0[24] ;
 wire \io_wbs_adr_0[25] ;
 wire \io_wbs_adr_0[26] ;
 wire \io_wbs_adr_0[27] ;
 wire \io_wbs_adr_0[28] ;
 wire \io_wbs_adr_0[29] ;
 wire \io_wbs_adr_0[2] ;
 wire \io_wbs_adr_0[30] ;
 wire \io_wbs_adr_0[31] ;
 wire \io_wbs_adr_0[3] ;
 wire \io_wbs_adr_0[4] ;
 wire \io_wbs_adr_0[5] ;
 wire \io_wbs_adr_0[6] ;
 wire \io_wbs_adr_0[7] ;
 wire \io_wbs_adr_0[8] ;
 wire \io_wbs_adr_0[9] ;
 wire \io_wbs_adr_1[0] ;
 wire \io_wbs_adr_1[10] ;
 wire \io_wbs_adr_1[11] ;
 wire \io_wbs_adr_1[12] ;
 wire \io_wbs_adr_1[13] ;
 wire \io_wbs_adr_1[14] ;
 wire \io_wbs_adr_1[15] ;
 wire \io_wbs_adr_1[16] ;
 wire \io_wbs_adr_1[17] ;
 wire \io_wbs_adr_1[18] ;
 wire \io_wbs_adr_1[19] ;
 wire \io_wbs_adr_1[1] ;
 wire \io_wbs_adr_1[20] ;
 wire \io_wbs_adr_1[21] ;
 wire \io_wbs_adr_1[22] ;
 wire \io_wbs_adr_1[23] ;
 wire \io_wbs_adr_1[24] ;
 wire \io_wbs_adr_1[25] ;
 wire \io_wbs_adr_1[26] ;
 wire \io_wbs_adr_1[27] ;
 wire \io_wbs_adr_1[28] ;
 wire \io_wbs_adr_1[29] ;
 wire \io_wbs_adr_1[2] ;
 wire \io_wbs_adr_1[30] ;
 wire \io_wbs_adr_1[31] ;
 wire \io_wbs_adr_1[3] ;
 wire \io_wbs_adr_1[4] ;
 wire \io_wbs_adr_1[5] ;
 wire \io_wbs_adr_1[6] ;
 wire \io_wbs_adr_1[7] ;
 wire \io_wbs_adr_1[8] ;
 wire \io_wbs_adr_1[9] ;
 wire io_wbs_cyc_0;
 wire io_wbs_cyc_1;
 wire \io_wbs_datrd_0[0] ;
 wire \io_wbs_datrd_0[10] ;
 wire \io_wbs_datrd_0[11] ;
 wire \io_wbs_datrd_0[12] ;
 wire \io_wbs_datrd_0[13] ;
 wire \io_wbs_datrd_0[14] ;
 wire \io_wbs_datrd_0[15] ;
 wire \io_wbs_datrd_0[16] ;
 wire \io_wbs_datrd_0[17] ;
 wire \io_wbs_datrd_0[18] ;
 wire \io_wbs_datrd_0[19] ;
 wire \io_wbs_datrd_0[1] ;
 wire \io_wbs_datrd_0[20] ;
 wire \io_wbs_datrd_0[21] ;
 wire \io_wbs_datrd_0[22] ;
 wire \io_wbs_datrd_0[23] ;
 wire \io_wbs_datrd_0[24] ;
 wire \io_wbs_datrd_0[25] ;
 wire \io_wbs_datrd_0[26] ;
 wire \io_wbs_datrd_0[27] ;
 wire \io_wbs_datrd_0[28] ;
 wire \io_wbs_datrd_0[29] ;
 wire \io_wbs_datrd_0[2] ;
 wire \io_wbs_datrd_0[30] ;
 wire \io_wbs_datrd_0[31] ;
 wire \io_wbs_datrd_0[3] ;
 wire \io_wbs_datrd_0[4] ;
 wire \io_wbs_datrd_0[5] ;
 wire \io_wbs_datrd_0[6] ;
 wire \io_wbs_datrd_0[7] ;
 wire \io_wbs_datrd_0[8] ;
 wire \io_wbs_datrd_0[9] ;
 wire \io_wbs_datrd_1[0] ;
 wire \io_wbs_datrd_1[10] ;
 wire \io_wbs_datrd_1[11] ;
 wire \io_wbs_datrd_1[12] ;
 wire \io_wbs_datrd_1[13] ;
 wire \io_wbs_datrd_1[14] ;
 wire \io_wbs_datrd_1[15] ;
 wire \io_wbs_datrd_1[16] ;
 wire \io_wbs_datrd_1[17] ;
 wire \io_wbs_datrd_1[18] ;
 wire \io_wbs_datrd_1[19] ;
 wire \io_wbs_datrd_1[1] ;
 wire \io_wbs_datrd_1[20] ;
 wire \io_wbs_datrd_1[21] ;
 wire \io_wbs_datrd_1[22] ;
 wire \io_wbs_datrd_1[23] ;
 wire \io_wbs_datrd_1[24] ;
 wire \io_wbs_datrd_1[25] ;
 wire \io_wbs_datrd_1[26] ;
 wire \io_wbs_datrd_1[27] ;
 wire \io_wbs_datrd_1[28] ;
 wire \io_wbs_datrd_1[29] ;
 wire \io_wbs_datrd_1[2] ;
 wire \io_wbs_datrd_1[30] ;
 wire \io_wbs_datrd_1[31] ;
 wire \io_wbs_datrd_1[3] ;
 wire \io_wbs_datrd_1[4] ;
 wire \io_wbs_datrd_1[5] ;
 wire \io_wbs_datrd_1[6] ;
 wire \io_wbs_datrd_1[7] ;
 wire \io_wbs_datrd_1[8] ;
 wire \io_wbs_datrd_1[9] ;
 wire \io_wbs_datwr_0[0] ;
 wire \io_wbs_datwr_0[10] ;
 wire \io_wbs_datwr_0[11] ;
 wire \io_wbs_datwr_0[12] ;
 wire \io_wbs_datwr_0[13] ;
 wire \io_wbs_datwr_0[14] ;
 wire \io_wbs_datwr_0[15] ;
 wire \io_wbs_datwr_0[16] ;
 wire \io_wbs_datwr_0[17] ;
 wire \io_wbs_datwr_0[18] ;
 wire \io_wbs_datwr_0[19] ;
 wire \io_wbs_datwr_0[1] ;
 wire \io_wbs_datwr_0[20] ;
 wire \io_wbs_datwr_0[21] ;
 wire \io_wbs_datwr_0[22] ;
 wire \io_wbs_datwr_0[23] ;
 wire \io_wbs_datwr_0[24] ;
 wire \io_wbs_datwr_0[25] ;
 wire \io_wbs_datwr_0[26] ;
 wire \io_wbs_datwr_0[27] ;
 wire \io_wbs_datwr_0[28] ;
 wire \io_wbs_datwr_0[29] ;
 wire \io_wbs_datwr_0[2] ;
 wire \io_wbs_datwr_0[30] ;
 wire \io_wbs_datwr_0[31] ;
 wire \io_wbs_datwr_0[3] ;
 wire \io_wbs_datwr_0[4] ;
 wire \io_wbs_datwr_0[5] ;
 wire \io_wbs_datwr_0[6] ;
 wire \io_wbs_datwr_0[7] ;
 wire \io_wbs_datwr_0[8] ;
 wire \io_wbs_datwr_0[9] ;
 wire \io_wbs_datwr_1[0] ;
 wire \io_wbs_datwr_1[10] ;
 wire \io_wbs_datwr_1[11] ;
 wire \io_wbs_datwr_1[12] ;
 wire \io_wbs_datwr_1[13] ;
 wire \io_wbs_datwr_1[14] ;
 wire \io_wbs_datwr_1[15] ;
 wire \io_wbs_datwr_1[16] ;
 wire \io_wbs_datwr_1[17] ;
 wire \io_wbs_datwr_1[18] ;
 wire \io_wbs_datwr_1[19] ;
 wire \io_wbs_datwr_1[1] ;
 wire \io_wbs_datwr_1[20] ;
 wire \io_wbs_datwr_1[21] ;
 wire \io_wbs_datwr_1[22] ;
 wire \io_wbs_datwr_1[23] ;
 wire \io_wbs_datwr_1[24] ;
 wire \io_wbs_datwr_1[25] ;
 wire \io_wbs_datwr_1[26] ;
 wire \io_wbs_datwr_1[27] ;
 wire \io_wbs_datwr_1[28] ;
 wire \io_wbs_datwr_1[29] ;
 wire \io_wbs_datwr_1[2] ;
 wire \io_wbs_datwr_1[30] ;
 wire \io_wbs_datwr_1[31] ;
 wire \io_wbs_datwr_1[3] ;
 wire \io_wbs_datwr_1[4] ;
 wire \io_wbs_datwr_1[5] ;
 wire \io_wbs_datwr_1[6] ;
 wire \io_wbs_datwr_1[7] ;
 wire \io_wbs_datwr_1[8] ;
 wire \io_wbs_datwr_1[9] ;
 wire io_wbs_stb_0;
 wire io_wbs_stb_1;
 wire io_wbs_we_0;
 wire io_wbs_we_1;
 wire \unused[0] ;
 wire \unused[10] ;
 wire \unused[11] ;
 wire \unused[12] ;
 wire \unused[13] ;
 wire \unused[14] ;
 wire \unused[15] ;
 wire \unused[16] ;
 wire \unused[17] ;
 wire \unused[18] ;
 wire \unused[19] ;
 wire \unused[1] ;
 wire \unused[20] ;
 wire \unused[21] ;
 wire \unused[22] ;
 wire \unused[23] ;
 wire \unused[2] ;
 wire \unused[3] ;
 wire \unused[4] ;
 wire \unused[5] ;
 wire \unused[6] ;
 wire \unused[7] ;
 wire \unused[8] ;
 wire \unused[9] ;
 wire web0_mem0;
 wire web0_mem1;
 wire \wmask0_mem0[0] ;
 wire \wmask0_mem0[1] ;
 wire \wmask0_mem0[2] ;
 wire \wmask0_mem0[3] ;
 wire \wmask0_mem1[0] ;
 wire \wmask0_mem1[1] ;
 wire \wmask0_mem1[2] ;
 wire \wmask0_mem1[3] ;

 merge_memory merge_memory_inst (.csb(csb1),
    .csb_mem0(csb1_mem0),
    .csb_mem1(csb1_mem1),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr({\addr1[9] ,
    \addr1[8] ,
    \addr1[7] ,
    \addr1[6] ,
    \addr1[5] ,
    \addr1[4] ,
    \addr1[3] ,
    \addr1[2] ,
    \addr1[1] ,
    \addr1[0] }),
    .addr_mem0({\addr1_mem0[8] ,
    \addr1_mem0[7] ,
    \addr1_mem0[6] ,
    \addr1_mem0[5] ,
    \addr1_mem0[4] ,
    \addr1_mem0[3] ,
    \addr1_mem0[2] ,
    \addr1_mem0[1] ,
    \addr1_mem0[0] }),
    .addr_mem1({\addr1_mem1[8] ,
    \addr1_mem1[7] ,
    \addr1_mem1[6] ,
    \addr1_mem1[5] ,
    \addr1_mem1[4] ,
    \addr1_mem1[3] ,
    \addr1_mem1[2] ,
    \addr1_mem1[1] ,
    \addr1_mem1[0] }),
    .dout({\dout1[31] ,
    \dout1[30] ,
    \dout1[29] ,
    \dout1[28] ,
    \dout1[27] ,
    \dout1[26] ,
    \dout1[25] ,
    \dout1[24] ,
    \dout1[23] ,
    \dout1[22] ,
    \dout1[21] ,
    \dout1[20] ,
    \dout1[19] ,
    \dout1[18] ,
    \dout1[17] ,
    \dout1[16] ,
    \dout1[15] ,
    \dout1[14] ,
    \dout1[13] ,
    \dout1[12] ,
    \dout1[11] ,
    \dout1[10] ,
    \dout1[9] ,
    \dout1[8] ,
    \dout1[7] ,
    \dout1[6] ,
    \dout1[5] ,
    \dout1[4] ,
    \dout1[3] ,
    \dout1[2] ,
    \dout1[1] ,
    \dout1[0] }),
    .dout_mem0({\dout1_mem0[31] ,
    \dout1_mem0[30] ,
    \dout1_mem0[29] ,
    \dout1_mem0[28] ,
    \dout1_mem0[27] ,
    \dout1_mem0[26] ,
    \dout1_mem0[25] ,
    \dout1_mem0[24] ,
    \dout1_mem0[23] ,
    \dout1_mem0[22] ,
    \dout1_mem0[21] ,
    \dout1_mem0[20] ,
    \dout1_mem0[19] ,
    \dout1_mem0[18] ,
    \dout1_mem0[17] ,
    \dout1_mem0[16] ,
    \dout1_mem0[15] ,
    \dout1_mem0[14] ,
    \dout1_mem0[13] ,
    \dout1_mem0[12] ,
    \dout1_mem0[11] ,
    \dout1_mem0[10] ,
    \dout1_mem0[9] ,
    \dout1_mem0[8] ,
    \dout1_mem0[7] ,
    \dout1_mem0[6] ,
    \dout1_mem0[5] ,
    \dout1_mem0[4] ,
    \dout1_mem0[3] ,
    \dout1_mem0[2] ,
    \dout1_mem0[1] ,
    \dout1_mem0[0] }),
    .dout_mem1({\dout1_mem1[31] ,
    \dout1_mem1[30] ,
    \dout1_mem1[29] ,
    \dout1_mem1[28] ,
    \dout1_mem1[27] ,
    \dout1_mem1[26] ,
    \dout1_mem1[25] ,
    \dout1_mem1[24] ,
    \dout1_mem1[23] ,
    \dout1_mem1[22] ,
    \dout1_mem1[21] ,
    \dout1_mem1[20] ,
    \dout1_mem1[19] ,
    \dout1_mem1[18] ,
    \dout1_mem1[17] ,
    \dout1_mem1[16] ,
    \dout1_mem1[15] ,
    \dout1_mem1[14] ,
    \dout1_mem1[13] ,
    \dout1_mem1[12] ,
    \dout1_mem1[11] ,
    \dout1_mem1[10] ,
    \dout1_mem1[9] ,
    \dout1_mem1[8] ,
    \dout1_mem1[7] ,
    \dout1_mem1[6] ,
    \dout1_mem1[5] ,
    \dout1_mem1[4] ,
    \dout1_mem1[3] ,
    \dout1_mem1[2] ,
    \dout1_mem1[1] ,
    \dout1_mem1[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sky130_sram_2kbyte_1rw1r_32x512_8_inst0 (.csb0(csb0_mem0),
    .csb1(csb1_mem0),
    .web0(web0_mem0),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\addr0_mem0[8] ,
    \addr0_mem0[7] ,
    \addr0_mem0[6] ,
    \addr0_mem0[5] ,
    \addr0_mem0[4] ,
    \addr0_mem0[3] ,
    \addr0_mem0[2] ,
    \addr0_mem0[1] ,
    \addr0_mem0[0] }),
    .addr1({\addr1_mem0[8] ,
    \addr1_mem0[7] ,
    \addr1_mem0[6] ,
    \addr1_mem0[5] ,
    \addr1_mem0[4] ,
    \addr1_mem0[3] ,
    \addr1_mem0[2] ,
    \addr1_mem0[1] ,
    \addr1_mem0[0] }),
    .din0({\din0_mem0[31] ,
    \din0_mem0[30] ,
    \din0_mem0[29] ,
    \din0_mem0[28] ,
    \din0_mem0[27] ,
    \din0_mem0[26] ,
    \din0_mem0[25] ,
    \din0_mem0[24] ,
    \din0_mem0[23] ,
    \din0_mem0[22] ,
    \din0_mem0[21] ,
    \din0_mem0[20] ,
    \din0_mem0[19] ,
    \din0_mem0[18] ,
    \din0_mem0[17] ,
    \din0_mem0[16] ,
    \din0_mem0[15] ,
    \din0_mem0[14] ,
    \din0_mem0[13] ,
    \din0_mem0[12] ,
    \din0_mem0[11] ,
    \din0_mem0[10] ,
    \din0_mem0[9] ,
    \din0_mem0[8] ,
    \din0_mem0[7] ,
    \din0_mem0[6] ,
    \din0_mem0[5] ,
    \din0_mem0[4] ,
    \din0_mem0[3] ,
    \din0_mem0[2] ,
    \din0_mem0[1] ,
    \din0_mem0[0] }),
    .dout0({\dout0_mem0[31] ,
    \dout0_mem0[30] ,
    \dout0_mem0[29] ,
    \dout0_mem0[28] ,
    \dout0_mem0[27] ,
    \dout0_mem0[26] ,
    \dout0_mem0[25] ,
    \dout0_mem0[24] ,
    \dout0_mem0[23] ,
    \dout0_mem0[22] ,
    \dout0_mem0[21] ,
    \dout0_mem0[20] ,
    \dout0_mem0[19] ,
    \dout0_mem0[18] ,
    \dout0_mem0[17] ,
    \dout0_mem0[16] ,
    \dout0_mem0[15] ,
    \dout0_mem0[14] ,
    \dout0_mem0[13] ,
    \dout0_mem0[12] ,
    \dout0_mem0[11] ,
    \dout0_mem0[10] ,
    \dout0_mem0[9] ,
    \dout0_mem0[8] ,
    \dout0_mem0[7] ,
    \dout0_mem0[6] ,
    \dout0_mem0[5] ,
    \dout0_mem0[4] ,
    \dout0_mem0[3] ,
    \dout0_mem0[2] ,
    \dout0_mem0[1] ,
    \dout0_mem0[0] }),
    .dout1({\dout1_mem0[31] ,
    \dout1_mem0[30] ,
    \dout1_mem0[29] ,
    \dout1_mem0[28] ,
    \dout1_mem0[27] ,
    \dout1_mem0[26] ,
    \dout1_mem0[25] ,
    \dout1_mem0[24] ,
    \dout1_mem0[23] ,
    \dout1_mem0[22] ,
    \dout1_mem0[21] ,
    \dout1_mem0[20] ,
    \dout1_mem0[19] ,
    \dout1_mem0[18] ,
    \dout1_mem0[17] ,
    \dout1_mem0[16] ,
    \dout1_mem0[15] ,
    \dout1_mem0[14] ,
    \dout1_mem0[13] ,
    \dout1_mem0[12] ,
    \dout1_mem0[11] ,
    \dout1_mem0[10] ,
    \dout1_mem0[9] ,
    \dout1_mem0[8] ,
    \dout1_mem0[7] ,
    \dout1_mem0[6] ,
    \dout1_mem0[5] ,
    \dout1_mem0[4] ,
    \dout1_mem0[3] ,
    \dout1_mem0[2] ,
    \dout1_mem0[1] ,
    \dout1_mem0[0] }),
    .wmask0({\wmask0_mem0[3] ,
    \wmask0_mem0[2] ,
    \wmask0_mem0[1] ,
    \wmask0_mem0[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sky130_sram_2kbyte_1rw1r_32x512_8_inst1 (.csb0(csb0_mem1),
    .csb1(csb1_mem1),
    .web0(web0_mem1),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\addr0_mem1[8] ,
    \addr0_mem1[7] ,
    \addr0_mem1[6] ,
    \addr0_mem1[5] ,
    \addr0_mem1[4] ,
    \addr0_mem1[3] ,
    \addr0_mem1[2] ,
    \addr0_mem1[1] ,
    \addr0_mem1[0] }),
    .addr1({\addr1_mem1[8] ,
    \addr1_mem1[7] ,
    \addr1_mem1[6] ,
    \addr1_mem1[5] ,
    \addr1_mem1[4] ,
    \addr1_mem1[3] ,
    \addr1_mem1[2] ,
    \addr1_mem1[1] ,
    \addr1_mem1[0] }),
    .din0({\din0_mem1[31] ,
    \din0_mem1[30] ,
    \din0_mem1[29] ,
    \din0_mem1[28] ,
    \din0_mem1[27] ,
    \din0_mem1[26] ,
    \din0_mem1[25] ,
    \din0_mem1[24] ,
    \din0_mem1[23] ,
    \din0_mem1[22] ,
    \din0_mem1[21] ,
    \din0_mem1[20] ,
    \din0_mem1[19] ,
    \din0_mem1[18] ,
    \din0_mem1[17] ,
    \din0_mem1[16] ,
    \din0_mem1[15] ,
    \din0_mem1[14] ,
    \din0_mem1[13] ,
    \din0_mem1[12] ,
    \din0_mem1[11] ,
    \din0_mem1[10] ,
    \din0_mem1[9] ,
    \din0_mem1[8] ,
    \din0_mem1[7] ,
    \din0_mem1[6] ,
    \din0_mem1[5] ,
    \din0_mem1[4] ,
    \din0_mem1[3] ,
    \din0_mem1[2] ,
    \din0_mem1[1] ,
    \din0_mem1[0] }),
    .dout0({\dout0_mem1[31] ,
    \dout0_mem1[30] ,
    \dout0_mem1[29] ,
    \dout0_mem1[28] ,
    \dout0_mem1[27] ,
    \dout0_mem1[26] ,
    \dout0_mem1[25] ,
    \dout0_mem1[24] ,
    \dout0_mem1[23] ,
    \dout0_mem1[22] ,
    \dout0_mem1[21] ,
    \dout0_mem1[20] ,
    \dout0_mem1[19] ,
    \dout0_mem1[18] ,
    \dout0_mem1[17] ,
    \dout0_mem1[16] ,
    \dout0_mem1[15] ,
    \dout0_mem1[14] ,
    \dout0_mem1[13] ,
    \dout0_mem1[12] ,
    \dout0_mem1[11] ,
    \dout0_mem1[10] ,
    \dout0_mem1[9] ,
    \dout0_mem1[8] ,
    \dout0_mem1[7] ,
    \dout0_mem1[6] ,
    \dout0_mem1[5] ,
    \dout0_mem1[4] ,
    \dout0_mem1[3] ,
    \dout0_mem1[2] ,
    \dout0_mem1[1] ,
    \dout0_mem1[0] }),
    .dout1({\dout1_mem1[31] ,
    \dout1_mem1[30] ,
    \dout1_mem1[29] ,
    \dout1_mem1[28] ,
    \dout1_mem1[27] ,
    \dout1_mem1[26] ,
    \dout1_mem1[25] ,
    \dout1_mem1[24] ,
    \dout1_mem1[23] ,
    \dout1_mem1[22] ,
    \dout1_mem1[21] ,
    \dout1_mem1[20] ,
    \dout1_mem1[19] ,
    \dout1_mem1[18] ,
    \dout1_mem1[17] ,
    \dout1_mem1[16] ,
    \dout1_mem1[15] ,
    \dout1_mem1[14] ,
    \dout1_mem1[13] ,
    \dout1_mem1[12] ,
    \dout1_mem1[11] ,
    \dout1_mem1[10] ,
    \dout1_mem1[9] ,
    \dout1_mem1[8] ,
    \dout1_mem1[7] ,
    \dout1_mem1[6] ,
    \dout1_mem1[5] ,
    \dout1_mem1[4] ,
    \dout1_mem1[3] ,
    \dout1_mem1[2] ,
    \dout1_mem1[1] ,
    \dout1_mem1[0] }),
    .wmask0({\wmask0_mem1[3] ,
    \wmask0_mem1[2] ,
    \wmask0_mem1[1] ,
    \wmask0_mem1[0] }));
 wb_memory wb_memory_inst (.csb_mem0(csb0_mem0),
    .csb_mem1(csb0_mem1),
    .io_wbs_ack(io_wbs_ack_1),
    .io_wbs_clk(wb_clk_i),
    .io_wbs_cyc(io_wbs_cyc_1),
    .io_wbs_rst(wb_rst_i),
    .io_wbs_stb(io_wbs_stb_1),
    .io_wbs_we(io_wbs_we_1),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .web_mem0(web0_mem0),
    .web_mem1(web0_mem1),
    .addr_mem0({\addr0_mem0[8] ,
    \addr0_mem0[7] ,
    \addr0_mem0[6] ,
    \addr0_mem0[5] ,
    \addr0_mem0[4] ,
    \addr0_mem0[3] ,
    \addr0_mem0[2] ,
    \addr0_mem0[1] ,
    \addr0_mem0[0] }),
    .addr_mem1({\addr0_mem1[8] ,
    \addr0_mem1[7] ,
    \addr0_mem1[6] ,
    \addr0_mem1[5] ,
    \addr0_mem1[4] ,
    \addr0_mem1[3] ,
    \addr0_mem1[2] ,
    \addr0_mem1[1] ,
    \addr0_mem1[0] }),
    .din_mem0({\din0_mem0[31] ,
    \din0_mem0[30] ,
    \din0_mem0[29] ,
    \din0_mem0[28] ,
    \din0_mem0[27] ,
    \din0_mem0[26] ,
    \din0_mem0[25] ,
    \din0_mem0[24] ,
    \din0_mem0[23] ,
    \din0_mem0[22] ,
    \din0_mem0[21] ,
    \din0_mem0[20] ,
    \din0_mem0[19] ,
    \din0_mem0[18] ,
    \din0_mem0[17] ,
    \din0_mem0[16] ,
    \din0_mem0[15] ,
    \din0_mem0[14] ,
    \din0_mem0[13] ,
    \din0_mem0[12] ,
    \din0_mem0[11] ,
    \din0_mem0[10] ,
    \din0_mem0[9] ,
    \din0_mem0[8] ,
    \din0_mem0[7] ,
    \din0_mem0[6] ,
    \din0_mem0[5] ,
    \din0_mem0[4] ,
    \din0_mem0[3] ,
    \din0_mem0[2] ,
    \din0_mem0[1] ,
    \din0_mem0[0] }),
    .din_mem1({\din0_mem1[31] ,
    \din0_mem1[30] ,
    \din0_mem1[29] ,
    \din0_mem1[28] ,
    \din0_mem1[27] ,
    \din0_mem1[26] ,
    \din0_mem1[25] ,
    \din0_mem1[24] ,
    \din0_mem1[23] ,
    \din0_mem1[22] ,
    \din0_mem1[21] ,
    \din0_mem1[20] ,
    \din0_mem1[19] ,
    \din0_mem1[18] ,
    \din0_mem1[17] ,
    \din0_mem1[16] ,
    \din0_mem1[15] ,
    \din0_mem1[14] ,
    \din0_mem1[13] ,
    \din0_mem1[12] ,
    \din0_mem1[11] ,
    \din0_mem1[10] ,
    \din0_mem1[9] ,
    \din0_mem1[8] ,
    \din0_mem1[7] ,
    \din0_mem1[6] ,
    \din0_mem1[5] ,
    \din0_mem1[4] ,
    \din0_mem1[3] ,
    \din0_mem1[2] ,
    \din0_mem1[1] ,
    \din0_mem1[0] }),
    .dout_mem0({\dout0_mem0[31] ,
    \dout0_mem0[30] ,
    \dout0_mem0[29] ,
    \dout0_mem0[28] ,
    \dout0_mem0[27] ,
    \dout0_mem0[26] ,
    \dout0_mem0[25] ,
    \dout0_mem0[24] ,
    \dout0_mem0[23] ,
    \dout0_mem0[22] ,
    \dout0_mem0[21] ,
    \dout0_mem0[20] ,
    \dout0_mem0[19] ,
    \dout0_mem0[18] ,
    \dout0_mem0[17] ,
    \dout0_mem0[16] ,
    \dout0_mem0[15] ,
    \dout0_mem0[14] ,
    \dout0_mem0[13] ,
    \dout0_mem0[12] ,
    \dout0_mem0[11] ,
    \dout0_mem0[10] ,
    \dout0_mem0[9] ,
    \dout0_mem0[8] ,
    \dout0_mem0[7] ,
    \dout0_mem0[6] ,
    \dout0_mem0[5] ,
    \dout0_mem0[4] ,
    \dout0_mem0[3] ,
    \dout0_mem0[2] ,
    \dout0_mem0[1] ,
    \dout0_mem0[0] }),
    .dout_mem1({\dout0_mem1[31] ,
    \dout0_mem1[30] ,
    \dout0_mem1[29] ,
    \dout0_mem1[28] ,
    \dout0_mem1[27] ,
    \dout0_mem1[26] ,
    \dout0_mem1[25] ,
    \dout0_mem1[24] ,
    \dout0_mem1[23] ,
    \dout0_mem1[22] ,
    \dout0_mem1[21] ,
    \dout0_mem1[20] ,
    \dout0_mem1[19] ,
    \dout0_mem1[18] ,
    \dout0_mem1[17] ,
    \dout0_mem1[16] ,
    \dout0_mem1[15] ,
    \dout0_mem1[14] ,
    \dout0_mem1[13] ,
    \dout0_mem1[12] ,
    \dout0_mem1[11] ,
    \dout0_mem1[10] ,
    \dout0_mem1[9] ,
    \dout0_mem1[8] ,
    \dout0_mem1[7] ,
    \dout0_mem1[6] ,
    \dout0_mem1[5] ,
    \dout0_mem1[4] ,
    \dout0_mem1[3] ,
    \dout0_mem1[2] ,
    \dout0_mem1[1] ,
    \dout0_mem1[0] }),
    .io_wbs_adr({\io_wbs_adr_1[31] ,
    \io_wbs_adr_1[30] ,
    \io_wbs_adr_1[29] ,
    \io_wbs_adr_1[28] ,
    \io_wbs_adr_1[27] ,
    \io_wbs_adr_1[26] ,
    \io_wbs_adr_1[25] ,
    \io_wbs_adr_1[24] ,
    \io_wbs_adr_1[23] ,
    \io_wbs_adr_1[22] ,
    \io_wbs_adr_1[21] ,
    \io_wbs_adr_1[20] ,
    \io_wbs_adr_1[19] ,
    \io_wbs_adr_1[18] ,
    \io_wbs_adr_1[17] ,
    \io_wbs_adr_1[16] ,
    \io_wbs_adr_1[15] ,
    \io_wbs_adr_1[14] ,
    \io_wbs_adr_1[13] ,
    \io_wbs_adr_1[12] ,
    \io_wbs_adr_1[11] ,
    \io_wbs_adr_1[10] ,
    \io_wbs_adr_1[9] ,
    \io_wbs_adr_1[8] ,
    \io_wbs_adr_1[7] ,
    \io_wbs_adr_1[6] ,
    \io_wbs_adr_1[5] ,
    \io_wbs_adr_1[4] ,
    \io_wbs_adr_1[3] ,
    \io_wbs_adr_1[2] ,
    \io_wbs_adr_1[1] ,
    \io_wbs_adr_1[0] }),
    .io_wbs_datrd({\io_wbs_datrd_1[31] ,
    \io_wbs_datrd_1[30] ,
    \io_wbs_datrd_1[29] ,
    \io_wbs_datrd_1[28] ,
    \io_wbs_datrd_1[27] ,
    \io_wbs_datrd_1[26] ,
    \io_wbs_datrd_1[25] ,
    \io_wbs_datrd_1[24] ,
    \io_wbs_datrd_1[23] ,
    \io_wbs_datrd_1[22] ,
    \io_wbs_datrd_1[21] ,
    \io_wbs_datrd_1[20] ,
    \io_wbs_datrd_1[19] ,
    \io_wbs_datrd_1[18] ,
    \io_wbs_datrd_1[17] ,
    \io_wbs_datrd_1[16] ,
    \io_wbs_datrd_1[15] ,
    \io_wbs_datrd_1[14] ,
    \io_wbs_datrd_1[13] ,
    \io_wbs_datrd_1[12] ,
    \io_wbs_datrd_1[11] ,
    \io_wbs_datrd_1[10] ,
    \io_wbs_datrd_1[9] ,
    \io_wbs_datrd_1[8] ,
    \io_wbs_datrd_1[7] ,
    \io_wbs_datrd_1[6] ,
    \io_wbs_datrd_1[5] ,
    \io_wbs_datrd_1[4] ,
    \io_wbs_datrd_1[3] ,
    \io_wbs_datrd_1[2] ,
    \io_wbs_datrd_1[1] ,
    \io_wbs_datrd_1[0] }),
    .io_wbs_datwr({\io_wbs_datwr_1[31] ,
    \io_wbs_datwr_1[30] ,
    \io_wbs_datwr_1[29] ,
    \io_wbs_datwr_1[28] ,
    \io_wbs_datwr_1[27] ,
    \io_wbs_datwr_1[26] ,
    \io_wbs_datwr_1[25] ,
    \io_wbs_datwr_1[24] ,
    \io_wbs_datwr_1[23] ,
    \io_wbs_datwr_1[22] ,
    \io_wbs_datwr_1[21] ,
    \io_wbs_datwr_1[20] ,
    \io_wbs_datwr_1[19] ,
    \io_wbs_datwr_1[18] ,
    \io_wbs_datwr_1[17] ,
    \io_wbs_datwr_1[16] ,
    \io_wbs_datwr_1[15] ,
    \io_wbs_datwr_1[14] ,
    \io_wbs_datwr_1[13] ,
    \io_wbs_datwr_1[12] ,
    \io_wbs_datwr_1[11] ,
    \io_wbs_datwr_1[10] ,
    \io_wbs_datwr_1[9] ,
    \io_wbs_datwr_1[8] ,
    \io_wbs_datwr_1[7] ,
    \io_wbs_datwr_1[6] ,
    \io_wbs_datwr_1[5] ,
    \io_wbs_datwr_1[4] ,
    \io_wbs_datwr_1[3] ,
    \io_wbs_datwr_1[2] ,
    \io_wbs_datwr_1[1] ,
    \io_wbs_datwr_1[0] }),
    .wmask_mem0({\wmask0_mem0[3] ,
    \wmask0_mem0[2] ,
    \wmask0_mem0[1] ,
    \wmask0_mem0[0] }),
    .wmask_mem1({\wmask0_mem1[3] ,
    \wmask0_mem1[2] ,
    \wmask0_mem1[1] ,
    \wmask0_mem1[0] }));
 wb_mux wb_mux_inst (.io_wbs_ack(wbs_ack_o),
    .io_wbs_ack_0(io_wbs_ack_0),
    .io_wbs_ack_1(io_wbs_ack_1),
    .io_wbs_cyc(wbs_cyc_i),
    .io_wbs_cyc_0(io_wbs_cyc_0),
    .io_wbs_cyc_1(io_wbs_cyc_1),
    .io_wbs_stb(wbs_stb_i),
    .io_wbs_stb_0(io_wbs_stb_0),
    .io_wbs_stb_1(io_wbs_stb_1),
    .io_wbs_we(wbs_we_i),
    .io_wbs_we_0(io_wbs_we_0),
    .io_wbs_we_1(io_wbs_we_1),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .io_wbs_adr({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .io_wbs_adr_0({\io_wbs_adr_0[31] ,
    \io_wbs_adr_0[30] ,
    \io_wbs_adr_0[29] ,
    \io_wbs_adr_0[28] ,
    \io_wbs_adr_0[27] ,
    \io_wbs_adr_0[26] ,
    \io_wbs_adr_0[25] ,
    \io_wbs_adr_0[24] ,
    \io_wbs_adr_0[23] ,
    \io_wbs_adr_0[22] ,
    \io_wbs_adr_0[21] ,
    \io_wbs_adr_0[20] ,
    \io_wbs_adr_0[19] ,
    \io_wbs_adr_0[18] ,
    \io_wbs_adr_0[17] ,
    \io_wbs_adr_0[16] ,
    \io_wbs_adr_0[15] ,
    \io_wbs_adr_0[14] ,
    \io_wbs_adr_0[13] ,
    \io_wbs_adr_0[12] ,
    \io_wbs_adr_0[11] ,
    \io_wbs_adr_0[10] ,
    \io_wbs_adr_0[9] ,
    \io_wbs_adr_0[8] ,
    \io_wbs_adr_0[7] ,
    \io_wbs_adr_0[6] ,
    \io_wbs_adr_0[5] ,
    \io_wbs_adr_0[4] ,
    \io_wbs_adr_0[3] ,
    \io_wbs_adr_0[2] ,
    \io_wbs_adr_0[1] ,
    \io_wbs_adr_0[0] }),
    .io_wbs_adr_1({\io_wbs_adr_1[31] ,
    \io_wbs_adr_1[30] ,
    \io_wbs_adr_1[29] ,
    \io_wbs_adr_1[28] ,
    \io_wbs_adr_1[27] ,
    \io_wbs_adr_1[26] ,
    \io_wbs_adr_1[25] ,
    \io_wbs_adr_1[24] ,
    \io_wbs_adr_1[23] ,
    \io_wbs_adr_1[22] ,
    \io_wbs_adr_1[21] ,
    \io_wbs_adr_1[20] ,
    \io_wbs_adr_1[19] ,
    \io_wbs_adr_1[18] ,
    \io_wbs_adr_1[17] ,
    \io_wbs_adr_1[16] ,
    \io_wbs_adr_1[15] ,
    \io_wbs_adr_1[14] ,
    \io_wbs_adr_1[13] ,
    \io_wbs_adr_1[12] ,
    \io_wbs_adr_1[11] ,
    \io_wbs_adr_1[10] ,
    \io_wbs_adr_1[9] ,
    \io_wbs_adr_1[8] ,
    \io_wbs_adr_1[7] ,
    \io_wbs_adr_1[6] ,
    \io_wbs_adr_1[5] ,
    \io_wbs_adr_1[4] ,
    \io_wbs_adr_1[3] ,
    \io_wbs_adr_1[2] ,
    \io_wbs_adr_1[1] ,
    \io_wbs_adr_1[0] }),
    .io_wbs_datrd({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .io_wbs_datrd_0({\io_wbs_datrd_0[31] ,
    \io_wbs_datrd_0[30] ,
    \io_wbs_datrd_0[29] ,
    \io_wbs_datrd_0[28] ,
    \io_wbs_datrd_0[27] ,
    \io_wbs_datrd_0[26] ,
    \io_wbs_datrd_0[25] ,
    \io_wbs_datrd_0[24] ,
    \io_wbs_datrd_0[23] ,
    \io_wbs_datrd_0[22] ,
    \io_wbs_datrd_0[21] ,
    \io_wbs_datrd_0[20] ,
    \io_wbs_datrd_0[19] ,
    \io_wbs_datrd_0[18] ,
    \io_wbs_datrd_0[17] ,
    \io_wbs_datrd_0[16] ,
    \io_wbs_datrd_0[15] ,
    \io_wbs_datrd_0[14] ,
    \io_wbs_datrd_0[13] ,
    \io_wbs_datrd_0[12] ,
    \io_wbs_datrd_0[11] ,
    \io_wbs_datrd_0[10] ,
    \io_wbs_datrd_0[9] ,
    \io_wbs_datrd_0[8] ,
    \io_wbs_datrd_0[7] ,
    \io_wbs_datrd_0[6] ,
    \io_wbs_datrd_0[5] ,
    \io_wbs_datrd_0[4] ,
    \io_wbs_datrd_0[3] ,
    \io_wbs_datrd_0[2] ,
    \io_wbs_datrd_0[1] ,
    \io_wbs_datrd_0[0] }),
    .io_wbs_datrd_1({\io_wbs_datrd_1[31] ,
    \io_wbs_datrd_1[30] ,
    \io_wbs_datrd_1[29] ,
    \io_wbs_datrd_1[28] ,
    \io_wbs_datrd_1[27] ,
    \io_wbs_datrd_1[26] ,
    \io_wbs_datrd_1[25] ,
    \io_wbs_datrd_1[24] ,
    \io_wbs_datrd_1[23] ,
    \io_wbs_datrd_1[22] ,
    \io_wbs_datrd_1[21] ,
    \io_wbs_datrd_1[20] ,
    \io_wbs_datrd_1[19] ,
    \io_wbs_datrd_1[18] ,
    \io_wbs_datrd_1[17] ,
    \io_wbs_datrd_1[16] ,
    \io_wbs_datrd_1[15] ,
    \io_wbs_datrd_1[14] ,
    \io_wbs_datrd_1[13] ,
    \io_wbs_datrd_1[12] ,
    \io_wbs_datrd_1[11] ,
    \io_wbs_datrd_1[10] ,
    \io_wbs_datrd_1[9] ,
    \io_wbs_datrd_1[8] ,
    \io_wbs_datrd_1[7] ,
    \io_wbs_datrd_1[6] ,
    \io_wbs_datrd_1[5] ,
    \io_wbs_datrd_1[4] ,
    \io_wbs_datrd_1[3] ,
    \io_wbs_datrd_1[2] ,
    \io_wbs_datrd_1[1] ,
    \io_wbs_datrd_1[0] }),
    .io_wbs_datwr({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .io_wbs_datwr_0({\io_wbs_datwr_0[31] ,
    \io_wbs_datwr_0[30] ,
    \io_wbs_datwr_0[29] ,
    \io_wbs_datwr_0[28] ,
    \io_wbs_datwr_0[27] ,
    \io_wbs_datwr_0[26] ,
    \io_wbs_datwr_0[25] ,
    \io_wbs_datwr_0[24] ,
    \io_wbs_datwr_0[23] ,
    \io_wbs_datwr_0[22] ,
    \io_wbs_datwr_0[21] ,
    \io_wbs_datwr_0[20] ,
    \io_wbs_datwr_0[19] ,
    \io_wbs_datwr_0[18] ,
    \io_wbs_datwr_0[17] ,
    \io_wbs_datwr_0[16] ,
    \io_wbs_datwr_0[15] ,
    \io_wbs_datwr_0[14] ,
    \io_wbs_datwr_0[13] ,
    \io_wbs_datwr_0[12] ,
    \io_wbs_datwr_0[11] ,
    \io_wbs_datwr_0[10] ,
    \io_wbs_datwr_0[9] ,
    \io_wbs_datwr_0[8] ,
    \io_wbs_datwr_0[7] ,
    \io_wbs_datwr_0[6] ,
    \io_wbs_datwr_0[5] ,
    \io_wbs_datwr_0[4] ,
    \io_wbs_datwr_0[3] ,
    \io_wbs_datwr_0[2] ,
    \io_wbs_datwr_0[1] ,
    \io_wbs_datwr_0[0] }),
    .io_wbs_datwr_1({\io_wbs_datwr_1[31] ,
    \io_wbs_datwr_1[30] ,
    \io_wbs_datwr_1[29] ,
    \io_wbs_datwr_1[28] ,
    \io_wbs_datwr_1[27] ,
    \io_wbs_datwr_1[26] ,
    \io_wbs_datwr_1[25] ,
    \io_wbs_datwr_1[24] ,
    \io_wbs_datwr_1[23] ,
    \io_wbs_datwr_1[22] ,
    \io_wbs_datwr_1[21] ,
    \io_wbs_datwr_1[20] ,
    \io_wbs_datwr_1[19] ,
    \io_wbs_datwr_1[18] ,
    \io_wbs_datwr_1[17] ,
    \io_wbs_datwr_1[16] ,
    \io_wbs_datwr_1[15] ,
    \io_wbs_datwr_1[14] ,
    \io_wbs_datwr_1[13] ,
    \io_wbs_datwr_1[12] ,
    \io_wbs_datwr_1[11] ,
    \io_wbs_datwr_1[10] ,
    \io_wbs_datwr_1[9] ,
    \io_wbs_datwr_1[8] ,
    \io_wbs_datwr_1[7] ,
    \io_wbs_datwr_1[6] ,
    \io_wbs_datwr_1[5] ,
    \io_wbs_datwr_1[4] ,
    \io_wbs_datwr_1[3] ,
    \io_wbs_datwr_1[2] ,
    \io_wbs_datwr_1[1] ,
    \io_wbs_datwr_1[0] }));
 wfg_top wfg_top_inst (.csb1(csb1),
    .io_wbs_ack(io_wbs_ack_0),
    .io_wbs_clk(wb_clk_i),
    .io_wbs_cyc(io_wbs_cyc_0),
    .io_wbs_rst(wb_rst_i),
    .io_wbs_stb(io_wbs_stb_0),
    .io_wbs_we(io_wbs_we_0),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wfg_drive_spi_cs_no(io_out[9]),
    .wfg_drive_spi_sclk_o(io_out[8]),
    .wfg_drive_spi_sdo_o(io_out[10]),
    .addr1({\addr1[9] ,
    \addr1[8] ,
    \addr1[7] ,
    \addr1[6] ,
    \addr1[5] ,
    \addr1[4] ,
    \addr1[3] ,
    \addr1[2] ,
    \addr1[1] ,
    \addr1[0] }),
    .dout1({\dout1[31] ,
    \dout1[30] ,
    \dout1[29] ,
    \dout1[28] ,
    \dout1[27] ,
    \dout1[26] ,
    \dout1[25] ,
    \dout1[24] ,
    \dout1[23] ,
    \dout1[22] ,
    \dout1[21] ,
    \dout1[20] ,
    \dout1[19] ,
    \dout1[18] ,
    \dout1[17] ,
    \dout1[16] ,
    \dout1[15] ,
    \dout1[14] ,
    \dout1[13] ,
    \dout1[12] ,
    \dout1[11] ,
    \dout1[10] ,
    \dout1[9] ,
    \dout1[8] ,
    \dout1[7] ,
    \dout1[6] ,
    \dout1[5] ,
    \dout1[4] ,
    \dout1[3] ,
    \dout1[2] ,
    \dout1[1] ,
    \dout1[0] }),
    .io_oeb({io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8]}),
    .io_wbs_adr({\io_wbs_adr_0[31] ,
    \io_wbs_adr_0[30] ,
    \io_wbs_adr_0[29] ,
    \io_wbs_adr_0[28] ,
    \io_wbs_adr_0[27] ,
    \io_wbs_adr_0[26] ,
    \io_wbs_adr_0[25] ,
    \io_wbs_adr_0[24] ,
    \io_wbs_adr_0[23] ,
    \io_wbs_adr_0[22] ,
    \io_wbs_adr_0[21] ,
    \io_wbs_adr_0[20] ,
    \io_wbs_adr_0[19] ,
    \io_wbs_adr_0[18] ,
    \io_wbs_adr_0[17] ,
    \io_wbs_adr_0[16] ,
    \io_wbs_adr_0[15] ,
    \io_wbs_adr_0[14] ,
    \io_wbs_adr_0[13] ,
    \io_wbs_adr_0[12] ,
    \io_wbs_adr_0[11] ,
    \io_wbs_adr_0[10] ,
    \io_wbs_adr_0[9] ,
    \io_wbs_adr_0[8] ,
    \io_wbs_adr_0[7] ,
    \io_wbs_adr_0[6] ,
    \io_wbs_adr_0[5] ,
    \io_wbs_adr_0[4] ,
    \io_wbs_adr_0[3] ,
    \io_wbs_adr_0[2] ,
    \io_wbs_adr_0[1] ,
    \io_wbs_adr_0[0] }),
    .io_wbs_datrd({\io_wbs_datrd_0[31] ,
    \io_wbs_datrd_0[30] ,
    \io_wbs_datrd_0[29] ,
    \io_wbs_datrd_0[28] ,
    \io_wbs_datrd_0[27] ,
    \io_wbs_datrd_0[26] ,
    \io_wbs_datrd_0[25] ,
    \io_wbs_datrd_0[24] ,
    \io_wbs_datrd_0[23] ,
    \io_wbs_datrd_0[22] ,
    \io_wbs_datrd_0[21] ,
    \io_wbs_datrd_0[20] ,
    \io_wbs_datrd_0[19] ,
    \io_wbs_datrd_0[18] ,
    \io_wbs_datrd_0[17] ,
    \io_wbs_datrd_0[16] ,
    \io_wbs_datrd_0[15] ,
    \io_wbs_datrd_0[14] ,
    \io_wbs_datrd_0[13] ,
    \io_wbs_datrd_0[12] ,
    \io_wbs_datrd_0[11] ,
    \io_wbs_datrd_0[10] ,
    \io_wbs_datrd_0[9] ,
    \io_wbs_datrd_0[8] ,
    \io_wbs_datrd_0[7] ,
    \io_wbs_datrd_0[6] ,
    \io_wbs_datrd_0[5] ,
    \io_wbs_datrd_0[4] ,
    \io_wbs_datrd_0[3] ,
    \io_wbs_datrd_0[2] ,
    \io_wbs_datrd_0[1] ,
    \io_wbs_datrd_0[0] }),
    .io_wbs_datwr({\io_wbs_datwr_0[31] ,
    \io_wbs_datwr_0[30] ,
    \io_wbs_datwr_0[29] ,
    \io_wbs_datwr_0[28] ,
    \io_wbs_datwr_0[27] ,
    \io_wbs_datwr_0[26] ,
    \io_wbs_datwr_0[25] ,
    \io_wbs_datwr_0[24] ,
    \io_wbs_datwr_0[23] ,
    \io_wbs_datwr_0[22] ,
    \io_wbs_datwr_0[21] ,
    \io_wbs_datwr_0[20] ,
    \io_wbs_datwr_0[19] ,
    \io_wbs_datwr_0[18] ,
    \io_wbs_datwr_0[17] ,
    \io_wbs_datwr_0[16] ,
    \io_wbs_datwr_0[15] ,
    \io_wbs_datwr_0[14] ,
    \io_wbs_datwr_0[13] ,
    \io_wbs_datwr_0[12] ,
    \io_wbs_datwr_0[11] ,
    \io_wbs_datwr_0[10] ,
    \io_wbs_datwr_0[9] ,
    \io_wbs_datwr_0[8] ,
    \io_wbs_datwr_0[7] ,
    \io_wbs_datwr_0[6] ,
    \io_wbs_datwr_0[5] ,
    \io_wbs_datwr_0[4] ,
    \io_wbs_datwr_0[3] ,
    \io_wbs_datwr_0[2] ,
    \io_wbs_datwr_0[1] ,
    \io_wbs_datwr_0[0] }),
    .wfg_drive_pat_dout_o({\unused[23] ,
    \unused[22] ,
    \unused[21] ,
    \unused[20] ,
    \unused[19] ,
    \unused[18] ,
    \unused[17] ,
    \unused[16] ,
    \unused[15] ,
    \unused[14] ,
    \unused[13] ,
    \unused[12] ,
    \unused[11] ,
    \unused[10] ,
    \unused[9] ,
    \unused[8] ,
    \unused[7] ,
    \unused[6] ,
    \unused[5] ,
    \unused[4] ,
    \unused[3] ,
    \unused[2] ,
    \unused[1] ,
    \unused[0] ,
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11]}));
endmodule
