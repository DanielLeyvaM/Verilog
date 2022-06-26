transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/ArchivosTAE/ContadorNbits {C:/intelFPGA_lite/ArchivosTAE/ContadorNbits/ContadorNbits.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/ArchivosTAE/PreescalerParametrico {C:/intelFPGA_lite/ArchivosTAE/PreescalerParametrico/Preescaler.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/ArchivosTAE/PWM {C:/intelFPGA_lite/ArchivosTAE/PWM/PWM.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/ArchivosTAE/PWM {C:/intelFPGA_lite/ArchivosTAE/PWM/comparadorPWM.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/ArchivosTAE/PWM {C:/intelFPGA_lite/ArchivosTAE/PWM/tb_PWM.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  tb_PWM

add wave *
add wave -position end  sim:/tb_PWM/DUT/con1/Qdata
view structure
view signals
run -all
