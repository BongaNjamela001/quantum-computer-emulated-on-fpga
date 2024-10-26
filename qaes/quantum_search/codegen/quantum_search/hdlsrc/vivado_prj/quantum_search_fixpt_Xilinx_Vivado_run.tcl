# HDL Coder Downstream Integration Tcl Script

set myTool "Xilinx Vivado 2024.1"
set myProject "quantum_search_fixpt_vivado"
set myProjectFile "quantum_search_fixpt_vivado.xpr"
set myTopLevelEntity "quantum_search_fixpt"
set Family "Artix7"
set Device "xa7a100t"
set Package "csg324"
set Speed "-1I"
set MapTimePathNumber "3"
set MapTimeAdvAnalysis "True"
set PARTimePathNumber "3"
set PARTimeAdvAnalysis "True"

# Open existing project
puts "### Open existing $myTool project \/home\/bonga\/Desktop\/EEE4022S\/EEE4022S_Github\/qaes\/quantum_search\/codegen\/quantum_search\/hdlsrc\/vivado_prj\/quantum_search_fixpt_vivado.xpr"
open_project ${myProject}

# Running Implementation
puts "### Running Implementation in $myTool ..."
if { [llength [get_runs impl_1] ] > 0 } { reset_run impl_1}
launch_runs impl_1 -force
wait_on_run impl_1
puts "### Implementation Complete."

# Running PostPARTiming
puts "### Running PostPARTiming in $myTool ..."
open_run impl_1
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths $PARTimePathNumber -nworst $PARTimePathNumber -name timing_post_route -file timing_post_route.rpt
source -quiet "/usr/local/MATLAB/R2024b/toolbox/hdlcoder/hdlcommon/+downstreamtools/extractVivadoTiming.tcl"
extracTimingReport ${myTopLevelEntity}_postroute.tvr
puts "### PostPARTiming Complete."

# Close project
puts "### Close $myTool project."
close_project

