
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:082

00:00:082

1398.8482
41.8362
36882
8611Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.srcs/utils_1/imports/synth_1/qft_3qubit_fixpt.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.srcs/utils_1/imports/synth_1/qft_3qubit_fixpt.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2w
usynth_design -top qft_3qubit_fixpt -part xa7a100tcsg324-1I -directive AreaOptimized_high -control_set_opt_threshold 1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xa7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xa7a100tZ17-349h px� 
F
Loading part %s157*device2
xa7a100tcsg324-1IZ21-403h px� 
\
$Part: %s does not have CEAM library.966*device2
xa7a100tcsg324-1IZ21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
P
#Helper process launched with PID %s4824*oasys2	
1116792Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2170.477 ; gain = 413.715 ; free physical = 2558 ; free virtual = 7484
h px� 
�
synthesizing module '%s'%s4497*oasys2
qft_3qubit_fixpt2
 2c
_/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/qft_3qubit_fixpt.sv2
308@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
qft_3qubit_fixpt2
 2
02
12c
_/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/qft_3qubit_fixpt.sv2
308@Z8-6155h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[0][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[1][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[2][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[3][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[4][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[5][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[6][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[7][0]2
0Z8-3917h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2260.445 ; gain = 503.684 ; free physical = 2456 ; free virtual = 7381
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2278.258 ; gain = 521.496 ; free physical = 2456 ; free virtual = 7381
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2278.258 ; gain = 521.496 ; free physical = 2456 ; free virtual = 7381
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002
00:00:00.012

2278.2582
0.0002
24562
7381Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
�/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.srcs/constrs_1/imports/xdc/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
�/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.srcs/constrs_1/imports/xdc/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.srcs/constrs_1/imports/xdc/Nexys-A7-100T-Master.xdc2$
".Xil/qft_3qubit_fixpt_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2413.0082
0.0002
24652
7386Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2

00:00:002

00:00:002

2413.0082
0.0002
24652
7386Z17-722h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2413.008 ; gain = 656.246 ; free physical = 2464 ; free virtual = 7388
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Loading part: xa7a100tcsg324-1I
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2464 ; free virtual = 7388
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2464 ; free virtual = 7387
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2463 ; free virtual = 7387
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   19 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit       Adders := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit        Muxes := 4     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[0]3, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]3 is absorbed into DSP final_state_re[0]3.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[0]2, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]2 is absorbed into DSP final_state_re[0]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]3 is absorbed into DSP final_state_re[0]2.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[0]1, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]1 is absorbed into DSP final_state_re[0]1.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[0]3, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]3 is absorbed into DSP final_state_re[0]3.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[0]2, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]2 is absorbed into DSP final_state_re[0]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]3 is absorbed into DSP final_state_re[0]2.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[0]0, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]0 is absorbed into DSP final_state_re[0]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[0]1 is absorbed into DSP final_state_re[0]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[1]0, operation Mode is: C+(A:0x3fffe95f)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[1]0 is absorbed into DSP final_state_re[1]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[1]1 is absorbed into DSP final_state_re[1]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[2]2, operation Mode is: C+(A:0x3fffe95e)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]2 is absorbed into DSP final_state_re[2]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]3 is absorbed into DSP final_state_re[2]2.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[2]1, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]1 is absorbed into DSP final_state_re[2]1.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[2]2, operation Mode is: C+(A:0x3fffe95e)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]2 is absorbed into DSP final_state_re[2]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]3 is absorbed into DSP final_state_re[2]2.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[2]0, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]0 is absorbed into DSP final_state_re[2]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[2]1 is absorbed into DSP final_state_re[2]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[3]0, operation Mode is: C+(A:0x3fffe95f)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[3]0 is absorbed into DSP final_state_re[3]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[3]1 is absorbed into DSP final_state_re[3]0.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[4]3, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]3 is absorbed into DSP final_state_re[4]3.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[4]2, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]2 is absorbed into DSP final_state_re[4]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]3 is absorbed into DSP final_state_re[4]2.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[4]1, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]1 is absorbed into DSP final_state_re[4]1.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[4]3, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]3 is absorbed into DSP final_state_re[4]3.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[4]2, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]2 is absorbed into DSP final_state_re[4]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]3 is absorbed into DSP final_state_re[4]2.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[4]0, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]0 is absorbed into DSP final_state_re[4]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[4]1 is absorbed into DSP final_state_re[4]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[5]0, operation Mode is: C+(A:0x3fffe95f)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[5]0 is absorbed into DSP final_state_re[5]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[5]1 is absorbed into DSP final_state_re[5]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[6]2, operation Mode is: C+(A:0x3fffe95e)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]2 is absorbed into DSP final_state_re[6]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]3 is absorbed into DSP final_state_re[6]2.
h p
x
� 
j
%s
*synth2R
PDSP Report: Generating DSP final_state_re[6]1, operation Mode is: (A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]1 is absorbed into DSP final_state_re[6]1.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[6]2, operation Mode is: C+(A:0x3fffe95e)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]2 is absorbed into DSP final_state_re[6]2.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]3 is absorbed into DSP final_state_re[6]2.
h p
x
� 
l
%s
*synth2T
RDSP Report: Generating DSP final_state_re[6]0, operation Mode is: C+(A:0x16a0)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]0 is absorbed into DSP final_state_re[6]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[6]1 is absorbed into DSP final_state_re[6]0.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP final_state_re[7]0, operation Mode is: C+(A:0x3fffe95f)*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[7]0 is absorbed into DSP final_state_re[7]0.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator final_state_re[7]1 is absorbed into DSP final_state_re[7]0.
h p
x
� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[0][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[1][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[2][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[3][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[4][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[5][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[6][0]2
0Z8-3917h px� 
~
+design %s has port %s driven by constant %s3447*oasys2
qft_3qubit_fixpt2
final_state_re[7][0]2
0Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Pre Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
<
%s
*synth2$
"Start Iterative Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Start Post Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2448 ; free virtual = 7376
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2448 ; free virtual = 7376
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]2_2 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]2_5 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[2]2_a : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[2]2_b : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[4]2_10 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[4]2_12 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[6]2_16 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[6]2_17 : 0 0 : 759 759 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]0_7 : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[1]0_9 : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[2]0_d : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[3]0_e : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[4]0_14 : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[5]0_15 : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[6]0_19 : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[7]0_1a : 0 0 : 756 756 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]1_6 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]3_0 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[0]3_4 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[2]1_c : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[4]1_13 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[4]3_11 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
^
%s
*synth2F
D Sort Area is  final_state_re[4]3_f : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
_
%s
*synth2G
E Sort Area is  final_state_re[6]1_18 : 0 0 : 679 679 : Used 1 time 0
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
v
%s*synth2^
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
h px� 
�
%s*synth2�
�+-----------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|Module Name      | DSP Mapping        | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h px� 
�
%s*synth2�
�+-----------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95f)*B | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95e)*B | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95e)*B | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95f)*B | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95f)*B | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95e)*B | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | (A:0x16a0)*B       | 14     | 14     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95e)*B | 14     | 14     | 27     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x16a0)*B     | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�|qft_3qubit_fixpt | C+(A:0x3fffe95f)*B | 14     | 14     | 26     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h px� 
�
%s*synth2�
�+-----------------+--------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2455 ; free virtual = 7383
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2455 ; free virtual = 7383
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2455 ; free virtual = 7383
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
W
%s
*synth2?
=
DSP Final Report (the ' indicates corresponding REG is set)
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|Module Name      | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | A*B         | 30     | 13     | -      | -      | 28     | 0    | 0    | -    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 27     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 13     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�|qft_3qubit_fixpt | C+A*B       | 30     | 18     | 48     | -      | 26     | 0    | 0    | 0    | -    | -     | 0    | 0    | 
h p
x
� 
�
%s
*synth2�
�+-----------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |DSP48E1 |    24|
h px� 
3
%s*synth2
|3     |LUT2    |    14|
h px� 
3
%s*synth2
|4     |IBUF    |     8|
h px� 
3
%s*synth2
|5     |OBUF    |   112|
h px� 
3
%s*synth2
+------+--------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.012 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:22 . Memory (MB): peak = 2421.012 ; gain = 529.500 ; free physical = 2462 ; free virtual = 7390
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2421.020 ; gain = 664.250 ; free physical = 2462 ; free virtual = 7390
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:042
00:00:00.012

2421.0202
0.0002
28102
7738Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
24Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2421.0202
0.0002
28132
7741Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

4191c861Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
242
172
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:312

00:00:282

2421.0202

1017.2032
28142
7742Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 1978.482; main = 1586.219; forked = 439.089Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2>
<(MB): overall = 3516.645; main = 2421.016; forked = 1095.629Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.012

2445.0232
0.0002
28142
7742Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/home/bonga/Desktop/EEE4022S/EEE4022S_Github/qaes/codegen/qft_3qubit/hdlsrc/vivado_prj/qft_3qubit_fixpt_vivado.runs/synth_1/qft_3qubit_fixpt.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file qft_3qubit_fixpt_utilization_synth.rpt -pb qft_3qubit_fixpt_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sat Oct 26 03:33:44 2024Z17-206h px� 


End Record