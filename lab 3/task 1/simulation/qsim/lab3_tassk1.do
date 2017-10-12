onerror {exit -code 1}
vlib work
vcom -work work compare_signed_.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax compare_signed_2bit_vhd_vec_tst/i1=compare_signed__vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.compare_signed_2bit_vhd_vec_tst
vcd file -direction lab3_tassk1.msim.vcd
vcd add -internal compare_signed_2bit_vhd_vec_tst/*
vcd add -internal compare_signed_2bit_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
