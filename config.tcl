# Design
set ::env(DESIGN_NAME) "pes_brg"

set ::env(VERILOG_FILES) "./designs/pes_brg/src/pes_brg.v"

set ::env(CLOCK_PERIOD) "5.000"
set ::env(CLOCK_PORT) "clk"


set ::env(CLOCK_NET) $::env(CLOCK_PORT)

set ::env(LIB_SYNTH) "$::env(OPENLANE_ROOT)/designs/pes_brg/src/sky130_fd_sc_hd__typical.lib"
set ::env(LIB_FASTEST) "$::env(OPENLANE_ROOT)/designs/pes_brg/src/sky130_fd_sc_hd__fast.lib"
set ::env(LIB_SLOWEST) "$::env(OPENLANE_ROOT)/designs/pes_brg/src/sky130_fd_sc_hd__slow.lib"
set ::env(LIB_TYPICAL) "$::env(OPENLANE_ROOT)/designs/pes_brg/src/sky130_fd_sc_hd__typical.lib"

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
