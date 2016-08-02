onerror {exit -code 1}
vlib work
vlog -work work new_test.vo
vlog -work work DATAPATH.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.datapath_vlg_vec_tst -voptargs="+acc"
vcd file -direction new_test.msim.vcd
vcd add -internal datapath_vlg_vec_tst/*
vcd add -internal datapath_vlg_vec_tst/i1/*
run -all
quit -f
