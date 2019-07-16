*SPICE circuit <OSC> from XCircuit v3.9 rev 72

.subckt INVERTER A Z
M1 Z A GND gnd nfet w=3u l=0.6u m=1
M2 Z A Vdd vdd pfet W=6u L=0.6u M=1
.ends

X39 OSC int39 INVERTER
X38 int39 int38 INVERTER
X37 int38 int37 INVERTER
X36 int37 int36 INVERTER
X35 int36 int35 INVERTER
X34 int35 int34 INVERTER
X33 int34 int33 INVERTER
X32 int33 int32 INVERTER
X31 int32 int31 INVERTER
X30 int31 int30 INVERTER
X29 int30 int29 INVERTER
X28 int29 int28 INVERTER
X27 int28 int27 INVERTER
X26 int27 int26 INVERTER
X25 int26 int25 INVERTER
X24 int25 int24 INVERTER
X23 int24 int23 INVERTER
X22 int23 int22 INVERTER
X21 int22 int21 INVERTER
X20 int21 int20 INVERTER
X19 int17 int16 INVERTER
X18 int20 int19 INVERTER
X17 int19 int18 INVERTER
X16 int18 int17 INVERTER
X15 int16 int15 INVERTER
X14 int15 int14 INVERTER
X13 int14 int13 INVERTER
X12 int13 int12 INVERTER
X11 int12 int11 INVERTER
X10 int11 int10 INVERTER
X9 int10 int9 INVERTER
X8 int9 int8 INVERTER
X7 int8 int7 INVERTER
X6 int7 int6 INVERTER
X5 int6 int5 INVERTER
X4 int5 int4 INVERTER
X3 int4 int3 INVERTER
X2 int3 int2 INVERTER
X1 int2 OSC INVERTER

.end