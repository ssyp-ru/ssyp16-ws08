set_global_assignment -entity "CLK" -library "lib_CLK" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "CLK" -library "lib_CLK" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "CLK" -library "lib_CLK" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_CLK" -name SPD_FILE [file join $::quartus(sip_path) "CLK.spd"]

set_global_assignment -library "lib_CLK" -name MISC_FILE [file join $::quartus(sip_path) "CLK_sim/CLK.vo"]
