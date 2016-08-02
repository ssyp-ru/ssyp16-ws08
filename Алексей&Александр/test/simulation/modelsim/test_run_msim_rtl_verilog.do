transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/quartus_projects/test {C:/quartus_projects/test/test.v}
vlog -vlog01compat -work work +incdir+C:/quartus_projects/test {C:/quartus_projects/test/test_tb.v}

