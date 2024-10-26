onbreak resume
onerror resume
vsim -voptargs=+acc work.x_gate_fixpt_tb

add wave sim:/x_gate_fixpt_tb/u_x_gate_fixpt/state
add wave sim:/x_gate_fixpt_tb/u_x_gate_fixpt/new_state
add wave sim:/x_gate_fixpt_tb/new_state_ref
run -all
