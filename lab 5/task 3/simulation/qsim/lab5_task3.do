onerror {exit -code 1}
vlib work
vcom -work work decoder_3to7seg.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax decoder_3to7seg_vhd_vec_tst/i1=decoder_3to7seg_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.decoder_3to7seg_vhd_vec_tst
vcd file -direction lab5_task3.msim.vcd
vcd add -internal decoder_3to7seg_vhd_vec_tst/*
vcd add -internal decoder_3to7seg_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
