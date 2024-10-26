onbreak resume
onerror resume
vsim -voptargs=+acc work.quantum_search_fixpt_tb

add wave sim:/quantum_search_fixpt_tb/u_quantum_search_fixpt/clk
add wave sim:/quantum_search_fixpt_tb/u_quantum_search_fixpt/reset
add wave sim:/quantum_search_fixpt_tb/u_quantum_search_fixpt/clk_enable
add wave sim:/quantum_search_fixpt_tb/u_quantum_search_fixpt/ce_out
add wave sim:/quantum_search_fixpt_tb/u_quantum_search_fixpt/result
add wave sim:/quantum_search_fixpt_tb/result_ref
run -all
