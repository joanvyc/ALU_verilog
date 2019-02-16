transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/fulladder.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_and.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_or.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_xor.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_not.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/fullsubstractor.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_adder.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU/basics {/home/jvinyals/Documents/Verilog/ALU/basics/nbit_subst.sv}
vlog -sv -work work +incdir+/home/jvinyals/Documents/Verilog/ALU {/home/jvinyals/Documents/Verilog/ALU/alu.sv}

