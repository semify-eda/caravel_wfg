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

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
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
 wire csb1;
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

 wfg_top my_wfg (.csb1(csb1),
    .io_wbs_ack(wbs_ack_o),
    .io_wbs_clk(wb_clk_i),
    .io_wbs_cyc(wbs_cyc_i),
    .io_wbs_rst(wb_rst_i),
    .io_wbs_stb(wbs_stb_i),
    .io_wbs_we(wbs_we_i),
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
    .wfg_drive_pat_dout_o({_15_,
    _14_,
    _13_,
    _12_,
    _10_,
    _09_,
    _08_,
    _07_,
    _06_,
    _05_,
    _04_,
    _03_,
    _02_,
    _01_,
    _23_,
    _22_,
    _21_,
    _20_,
    _19_,
    _18_,
    _17_,
    _16_,
    _11_,
    _00_,
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[12],
    io_out[11]}));
 sky130_sram_2kbyte_1rw1r_32x512_8 sky130_sram_2kbyte_1rw1r_32x512_8 (.csb1(csb1),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9}),
    .addr1({\addr1[8] ,
    \addr1[7] ,
    \addr1[6] ,
    \addr1[5] ,
    \addr1[4] ,
    \addr1[3] ,
    \addr1[2] ,
    \addr1[1] ,
    \addr1[0] }),
    .din0({_NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32,
    _NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40,
    _NC41}),
    .dout0({_NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48,
    _NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56,
    _NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64,
    _NC65,
    _NC66,
    _NC67,
    _NC68,
    _NC69,
    _NC70,
    _NC71,
    _NC72,
    _NC73}),
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
    .wmask0({_NC74,
    _NC75,
    _NC76,
    _NC77}));
endmodule
