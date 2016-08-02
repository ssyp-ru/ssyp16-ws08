set_global_assignment -entity "Clock" -library "lib_Clock" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "Clock" -library "lib_Clock" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "Clock" -library "lib_Clock" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_Clock" -name SPD_FILE [file join $::quartus(sip_path) "Clock.spd"]
