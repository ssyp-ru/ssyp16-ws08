set_global_assignment -entity "clk2" -library "lib_clk2" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clk2" -library "lib_clk2" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "clk2" -library "lib_clk2" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clk2" -name SPD_FILE [file join $::quartus(sip_path) "clk2.spd"]

set_global_assignment -library "lib_clk2" -name MISC_FILE [file join $::quartus(sip_path) "clk2_sim/clk2.vo"]
