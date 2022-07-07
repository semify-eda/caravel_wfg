###############################################################################
# Created by write_sdc
# Wed Jul  6 13:02:39 2022
###############################################################################
current_design wfg_top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name io_wbs_clk -period 20.0000 [get_ports {io_wbs_clk}]
set_clock_transition 0.1500 [get_clocks {io_wbs_clk}]
set_clock_uncertainty 0.2500 io_wbs_clk
set_propagated_clock [get_clocks {io_wbs_clk}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[0]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[10]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[11]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[12]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[13]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[14]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[15]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[16]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[17]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[18]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[19]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[1]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[20]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[21]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[22]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[23]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[24]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[25]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[26]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[27]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[28]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[29]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[2]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[30]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[31]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[3]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[4]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[5]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[6]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[7]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[8]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {dout1[9]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[0]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[10]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[11]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[12]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[13]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[14]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[15]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[16]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[17]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[18]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[19]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[1]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[20]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[21]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[22]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[23]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[24]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[25]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[26]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[27]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[28]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[29]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[2]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[30]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[31]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[3]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[4]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[5]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[6]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[7]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[8]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_adr[9]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_cyc}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[0]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[10]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[11]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[12]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[13]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[14]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[15]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[16]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[17]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[18]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[19]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[1]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[20]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[21]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[22]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[23]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[24]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[25]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[26]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[27]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[28]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[29]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[2]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[30]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[31]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[3]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[4]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[5]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[6]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[7]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[8]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datwr[9]}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_rst}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_stb}]
set_input_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_we}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[0]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[1]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[2]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[3]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[4]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[5]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[6]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[7]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[8]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {addr1[9]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {csb1}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[0]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[10]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[1]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[2]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[3]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[4]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[5]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[6]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[7]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[8]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_oeb[9]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_ack}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[0]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[10]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[11]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[12]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[13]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[14]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[15]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[16]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[17]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[18]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[19]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[1]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[20]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[21]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[22]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[23]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[24]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[25]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[26]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[27]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[28]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[29]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[2]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[30]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[31]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[3]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[4]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[5]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[6]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[7]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[8]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {io_wbs_datrd[9]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[0]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[10]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[11]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[12]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[13]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[14]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[15]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[16]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[17]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[18]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[19]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[1]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[20]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[21]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[22]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[23]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[24]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[25]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[26]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[27]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[28]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[29]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[2]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[30]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[31]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[3]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[4]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[5]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[6]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[7]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[8]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_pat_dout_o[9]}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_spi_cs_no}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_spi_sclk_o}]
set_output_delay 4.0000 -clock [get_clocks {io_wbs_clk}] -add_delay [get_ports {wfg_drive_spi_sdo_o}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {csb1}]
set_load -pin_load 0.0334 [get_ports {io_wbs_ack}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_spi_cs_no}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_spi_sclk_o}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_spi_sdo_o}]
set_load -pin_load 0.0334 [get_ports {addr1[9]}]
set_load -pin_load 0.0334 [get_ports {addr1[8]}]
set_load -pin_load 0.0334 [get_ports {addr1[7]}]
set_load -pin_load 0.0334 [get_ports {addr1[6]}]
set_load -pin_load 0.0334 [get_ports {addr1[5]}]
set_load -pin_load 0.0334 [get_ports {addr1[4]}]
set_load -pin_load 0.0334 [get_ports {addr1[3]}]
set_load -pin_load 0.0334 [get_ports {addr1[2]}]
set_load -pin_load 0.0334 [get_ports {addr1[1]}]
set_load -pin_load 0.0334 [get_ports {addr1[0]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[10]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[9]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[8]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[7]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[6]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[5]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[4]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[3]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[2]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[1]}]
set_load -pin_load 0.0334 [get_ports {io_oeb[0]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[31]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[30]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[29]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[28]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[27]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[26]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[25]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[24]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[23]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[22]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[21]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[20]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[19]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[18]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[17]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[16]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[15]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[14]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[13]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[12]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[11]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[10]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[9]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[8]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[7]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[6]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[5]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[4]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[3]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[2]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[1]}]
set_load -pin_load 0.0334 [get_ports {io_wbs_datrd[0]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[31]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[30]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[29]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[28]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[27]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[26]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[25]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[24]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[23]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[22]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[21]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[20]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[19]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[18]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[17]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[16]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[15]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[14]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[13]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[12]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[11]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[10]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[9]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[8]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[7]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[6]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[5]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[4]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[3]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[2]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[1]}]
set_load -pin_load 0.0334 [get_ports {wfg_drive_pat_dout_o[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_cyc}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_stb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_we}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dout1[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_adr[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[31]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[30]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[29]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[28]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[27]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[26]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[25]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[24]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[23]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[22]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[21]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[20]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[19]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[18]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[17]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[16]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {io_wbs_datwr[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
