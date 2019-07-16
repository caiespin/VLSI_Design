*SPICE circuit <ADDER> from XCircuit v3.9 rev 72


.subckt FA CIN COUT SUM A B
M1 SUM int13 GND gnd nfet w=3u l=0.6u m=1
M2 SUM int13 Vdd vdd pfet W=6u L=0.6u M=1
M3 int25 CIN GND gnd nfet w=3u l=0.6u m=1
M4 int24 B int25 gnd nfet w=3u l=0.6u m=1
M5 int13 A int24 gnd nfet w=3u l=0.6u m=1
M6 int14 A GND gnd nfet w=3u l=0.6u m=1
M7 int14 B GND gnd nfet w=3u l=0.6u m=1
M8 int14 CIN GND gnd nfet w=3u l=0.6u m=1
M9 int13 int31 int14 gnd nfet w=3u l=0.6u m=1
M10 int13 CIN int22 vdd pfet W=6u L=0.6u M=1
M11 int22 B int21 vdd pfet W=6u L=0.6u M=1
M12 int21 A int12 vdd pfet W=6u L=0.6u M=1
M13 int13 int31 int12 vdd pfet W=6u L=0.6u M=1
M14 int12 CIN Vdd vdd pfet W=6u L=0.6u M=1
M15 int12 B Vdd vdd pfet W=6u L=0.6u M=1
M16 int12 A Vdd vdd pfet W=6u L=0.6u M=1
M17 COUT int31 GND gnd nfet w=3u l=0.6u m=1
M18 COUT int31 Vdd vdd pfet W=6u L=0.6u M=1
M19 int19 B GND gnd nfet w=3u l=0.6u m=1
M20 int31 A int19 gnd nfet w=3u l=0.6u m=1
M21 int9 A GND gnd nfet w=3u l=0.6u m=1
M22 int9 B GND gnd nfet w=3u l=0.6u m=1
M23 int31 CIN int9 gnd nfet w=3u l=0.6u m=1
M24 int31 CIN int17 vdd pfet W=6u L=0.6u M=1
M25 int31 B int18 vdd pfet W=6u L=0.6u M=1
M26 int18 A int17 vdd pfet W=6u L=0.6u M=1
M27 int17 B Vdd vdd pfet W=6u L=0.6u M=1
M28 int17 A Vdd vdd pfet W=6u L=0.6u M=1
.ends

X1 int33 COUT SUM7 A7 B7 FA
X2 int34 int33 SUM6 A6 B6 FA
X3 int35 int34 SUM5 A5 B5 FA
X4 int36 int35 SUM4 A4 B4 FA
X5 int37 int36 SUM3 A3 B3 FA
X6 int38 int37 SUM2 A2 B2 FA
X7 int39 int38 SUM1 A1 B1 FA
X8 CIN int39 SUM0 A0 B0 FA

.end
