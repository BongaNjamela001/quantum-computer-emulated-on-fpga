onbreak resume
onerror resume
vsim -voptargs=+acc work.qft_3qubit_fixpt_tb

add wave sim:/qft_3qubit_fixpt_tb/u_qft_3qubit_fixpt/initial_state
add wave sim:/qft_3qubit_fixpt_tb/u_qft_3qubit_fixpt/final_state_re
add wave sim:/qft_3qubit_fixpt_tb/final_state_re_ref
add wave sim:/qft_3qubit_fixpt_tb/u_qft_3qubit_fixpt/final_state_im
add wave sim:/qft_3qubit_fixpt_tb/final_state_im_ref
run -all
