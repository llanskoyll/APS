
r
Command: %s
53*	vivadotcl2A
-synth_design -top Lab2 -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 980.078 ; gain = 235.328
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Lab22default:default2
 2default:default2V
@C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/Lab2.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	processor2default:default2
 2default:default2[
EC:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/processor.sv2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
REG_FILE2default:default2
 2default:default2Z
DC:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/REG_FILE.sv2default:default2
32default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter N bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
REG_FILE2default:default2
 2default:default2
12default:default2
12default:default2Z
DC:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/REG_FILE.sv2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
232default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter N bound to: 32 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
342default:default8@Z8-155h px? 
?
9always_comb on '%s' did not result in combinational logic87*oasys2

Result_reg2default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
362default:default8@Z8-87h px? 
?
9always_comb on '%s' did not result in combinational logic87*oasys2
Flag_reg2default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
372default:default8@Z8-87h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
22default:default2
12default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
irom2default:default2
 2default:default2V
@C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/irom.sv2default:default2
32default:default8@Z8-6157h px? 
n
%s
*synth2V
B	Parameter WIDTH bound to: 32'sb00000000000000000000000000100000 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter DEPTH bound to: 32'sb00000000000000000000000001000000 
2default:defaulth p
x
? 
?
,$readmem data file '%s' is read successfully3426*oasys2
irom.mem2default:default2V
@C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/irom.sv2default:default2
152default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
irom2default:default2
 2default:default2
32default:default2
12default:default2V
@C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/irom.sv2default:default2
32default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82default:default2
A2default:default2
62default:default2
irom2default:default2[
EC:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/processor.sv2default:default2
402default:default8@Z8-689h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	processor2default:default2
 2default:default2
42default:default2
12default:default2[
EC:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/processor.sv2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Lab22default:default2
 2default:default2
52default:default2
12default:default2V
@C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/Lab2.sv2default:default2
232default:default8@Z8-6155h px? 
v
!design %s has unconnected port %s3331*oasys2
irom2default:default2
clk2default:defaultZ8-3331h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1052.211 ; gain = 307.461
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1052.211 ; gain = 307.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:07 . Memory (MB): peak = 1052.211 ; gain = 307.461
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1052.2112default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
CA2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CB2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
602default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
602default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CC2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
612default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
612default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CD2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
622default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
622default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CE2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
632default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
632default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CF2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
642default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CG2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
652default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
DP2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
662default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
662default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[0]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
672default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[1]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
682default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[2]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
692default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
692default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[3]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
702default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
702default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[4]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
712default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
712default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[5]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
722default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
722default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[6]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
732default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
AN[7]2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
742default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2
742default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2P
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2N
:C:/Users/8200464.SIPC/Desktop/APS/Nexys-A7-100T-Master.xdc2default:default2*
.Xil/Lab2_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1149.6722default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1149.6722default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
ROM2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
!inferring latch for variable '%s'327*oasys2
Flag_reg2default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
372default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2

Result_reg2default:default2U
?C:/Users/8200464.SIPC/Desktop/APS/APS.srcs/sources_1/new/top.sv2default:default2
362default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
=
%s
*synth2%
Module REG_FILE 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
Module irom 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
>
%s
*synth2&
Module processor 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\proc/alu/Flag_reg 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
proc/alu/Flag_reg2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[31]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[30]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[29]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[28]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[27]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[26]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[25]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[24]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[23]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[22]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[21]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[20]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[19]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[18]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[17]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[16]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[15]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[14]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[13]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[12]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[11]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
proc/alu/Result_reg[10]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[9]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[8]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[7]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[6]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[5]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[4]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[3]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[2]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[1]2default:default2
Lab22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
proc/alu/Result_reg[0]2default:default2
Lab22default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:16 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2m
Y+------------+-----------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2n
Z|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px? 
?
%s*synth2m
Y+------------+-----------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2n
Z|Lab2        | proc/reg_file/RAM_reg | Implied   | 8 x 32               | RAM32M x 12	 | 
2default:defaulth px? 
?
%s*synth2n
Z+------------+-----------------------+-----------+----------------------+--------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2m
Y+------------+-----------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2n
Z|Module Name | RTL Object            | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
? 
?
%s
*synth2m
Y+------------+-----------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2n
Z|Lab2        | proc/reg_file/RAM_reg | Implied   | 8 x 32               | RAM32M x 12	 | 
2default:defaulth p
x
? 
?
%s
*synth2n
Z+------------+-----------------------+-----------+----------------------+--------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:23 . Memory (MB): peak = 1149.672 ; gain = 404.922
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     5|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     1|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    37|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     3|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    36|
2default:defaulth px? 
D
%s*synth2,
|7     |RAM32M |     6|
2default:defaulth px? 
D
%s*synth2,
|8     |FDRE   |     2|
2default:defaulth px? 
D
%s*synth2,
|9     |IBUF   |    18|
2default:defaulth px? 
D
%s*synth2,
|10    |OBUF   |    16|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+-------------+----------+------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|      |Instance     |Module    |Cells |
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+-------------+----------+------+
2default:defaulth p
x
? 
U
%s
*synth2=
)|1     |top          |          |   125|
2default:defaulth p
x
? 
U
%s
*synth2=
)|2     |  proc       |processor |    90|
2default:defaulth p
x
? 
U
%s
*synth2=
)|3     |    alu      |ALU       |     5|
2default:defaulth p
x
? 
U
%s
*synth2=
)|4     |    reg_file |REG_FILE  |    63|
2default:defaulth p
x
? 
U
%s
*synth2=
)+------+-------------+----------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 35 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:23 . Memory (MB): peak = 1157.512 ; gain = 315.301
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 1157.512 ; gain = 412.762
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1169.5702default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
112default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1172.5472default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2x
d  A total of 6 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262default:default2
552default:default2
162default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:272default:default2
00:00:332default:default2
1172.5472default:default2
733.1172default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1172.5472default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2O
;C:/Users/8200464.SIPC/Desktop/APS/APS.runs/synth_1/Lab2.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2r
^Executing : report_utilization -file Lab2_utilization_synth.rpt -pb Lab2_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Oct 24 18:03:26 20222default:defaultZ17-206h px? 


End Record