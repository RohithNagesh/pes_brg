###############################################################################
# Created by write_sdc
# Fri Nov  3 10:42:35 2023
###############################################################################
current_design pes_brg
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 2.1000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_input_delay 0.4200 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_input_delay 0.4200 -clock [get_clocks {clk}] -add_delay [get_ports {sel[0]}]
set_input_delay 0.4200 -clock [get_clocks {clk}] -add_delay [get_ports {sel[1]}]
set_output_delay 0.4200 -clock [get_clocks {clk}] -add_delay [get_ports {clkout}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {clkout}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {sel[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
