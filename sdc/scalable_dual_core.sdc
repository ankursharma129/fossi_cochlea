###############################################################################
# Created by write_sdc
# Thu Jun  9 05:19:51 2022
###############################################################################
current_design scalable_dual_core
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk_master -period 400.0000 [get_ports {clk_master}]
set_clock_transition 0.1500 [get_clocks {clk_master}]
set_clock_uncertainty 0.2500 clk_master
set_propagated_clock [get_clocks {clk_master}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clkdiv2_in}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {comp_high_I[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {comp_high_I[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {comp_high_Q[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {comp_high_Q[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[2]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[3]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[4]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[5]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[6]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[7]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[8]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_in[9]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_in[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_in[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_in[2]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {phi1b_dig_I[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {phi1b_dig_I[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {phi1b_dig_Q[0]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {phi1b_dig_Q[1]}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {rstb}]
set_input_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {ud_en}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cclk_I[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cclk_I[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cclk_Q[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cclk_Q[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clk_master_out}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clkdiv2_I[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clkdiv2_I[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clkdiv2_Q[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {clkdiv2_Q[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cos_out[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cos_out[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cos_outb[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {cos_outb[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {div2out}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb1_I[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb1_I[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb1_Q[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb1_Q[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb2_I[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb2_I[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb2_Q[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {fb2_Q[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[10]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[2]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[3]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[4]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[5]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[6]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[7]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[8]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {gray_clk_out[9]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_out[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_out[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {no_ones_below_out[2]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_I[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_I[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_I_top[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_I_top[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_Q[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_Q[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_Q_top[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {read_out_Q_top[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {rstb_out}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {sin_out[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {sin_out[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {sin_outb[0]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {sin_outb[1]}]
set_output_delay 80.0000 -clock [get_clocks {clk_master}] -add_delay [get_ports {ud_en_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clk_master_out}]
set_load -pin_load 0.0334 [get_ports {div2out}]
set_load -pin_load 0.0334 [get_ports {rstb_out}]
set_load -pin_load 0.0334 [get_ports {ud_en_out}]
set_load -pin_load 0.0334 [get_ports {cclk_I[1]}]
set_load -pin_load 0.0334 [get_ports {cclk_I[0]}]
set_load -pin_load 0.0334 [get_ports {cclk_Q[1]}]
set_load -pin_load 0.0334 [get_ports {cclk_Q[0]}]
set_load -pin_load 0.0334 [get_ports {clkdiv2_I[1]}]
set_load -pin_load 0.0334 [get_ports {clkdiv2_I[0]}]
set_load -pin_load 0.0334 [get_ports {clkdiv2_Q[1]}]
set_load -pin_load 0.0334 [get_ports {clkdiv2_Q[0]}]
set_load -pin_load 0.0334 [get_ports {cos_out[1]}]
set_load -pin_load 0.0334 [get_ports {cos_out[0]}]
set_load -pin_load 0.0334 [get_ports {cos_outb[1]}]
set_load -pin_load 0.0334 [get_ports {cos_outb[0]}]
set_load -pin_load 0.0334 [get_ports {fb1_I[1]}]
set_load -pin_load 0.0334 [get_ports {fb1_I[0]}]
set_load -pin_load 0.0334 [get_ports {fb1_Q[1]}]
set_load -pin_load 0.0334 [get_ports {fb1_Q[0]}]
set_load -pin_load 0.0334 [get_ports {fb2_I[1]}]
set_load -pin_load 0.0334 [get_ports {fb2_I[0]}]
set_load -pin_load 0.0334 [get_ports {fb2_Q[1]}]
set_load -pin_load 0.0334 [get_ports {fb2_Q[0]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[10]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[9]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[8]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[7]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[6]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[5]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[4]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[3]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[2]}]
set_load -pin_load 0.0334 [get_ports {gray_clk_out[1]}]
set_load -pin_load 0.0334 [get_ports {no_ones_below_out[2]}]
set_load -pin_load 0.0334 [get_ports {no_ones_below_out[1]}]
set_load -pin_load 0.0334 [get_ports {no_ones_below_out[0]}]
set_load -pin_load 0.0334 [get_ports {read_out_I[1]}]
set_load -pin_load 0.0334 [get_ports {read_out_I[0]}]
set_load -pin_load 0.0334 [get_ports {read_out_I_top[1]}]
set_load -pin_load 0.0334 [get_ports {read_out_I_top[0]}]
set_load -pin_load 0.0334 [get_ports {read_out_Q[1]}]
set_load -pin_load 0.0334 [get_ports {read_out_Q[0]}]
set_load -pin_load 0.0334 [get_ports {read_out_Q_top[1]}]
set_load -pin_load 0.0334 [get_ports {read_out_Q_top[0]}]
set_load -pin_load 0.0334 [get_ports {sin_out[1]}]
set_load -pin_load 0.0334 [get_ports {sin_out[0]}]
set_load -pin_load 0.0334 [get_ports {sin_outb[1]}]
set_load -pin_load 0.0334 [get_ports {sin_outb[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk_master}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clkdiv2_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rstb}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ud_en}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {comp_high_I[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {comp_high_I[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {comp_high_Q[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {comp_high_Q[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {gray_clk_in[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {no_ones_below_in[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {no_ones_below_in[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {no_ones_below_in[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {phi1b_dig_I[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {phi1b_dig_I[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {phi1b_dig_Q[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {phi1b_dig_Q[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
