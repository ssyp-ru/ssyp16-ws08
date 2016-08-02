set_global_assignment -entity "pllmem" -library "lib_pllmem" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pllmem" -library "lib_pllmem" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "pllmem" -library "lib_pllmem" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pllmem" -name SPD_FILE [file join $::quartus(sip_path) "pllmem.spd"]

set_global_assignment -library "lib_pllmem" -name MISC_FILE [file join $::quartus(sip_path) "pllmem_sim/pllmem.vo"]
