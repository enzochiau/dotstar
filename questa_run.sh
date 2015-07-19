# rm -rf work; qverilog dut.sv -vopt +designfile -R -qwavedb=+signal -c -do "run -all; exit"

rm -rf work
vlib work
vlog dut.sv
vopt +designfile +acc dut -o dut_opt
vsim -qwavedb=+signal -c -do "run -all; exit" dut_opt
