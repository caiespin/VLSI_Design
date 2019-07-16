*SPICE circuit <ADDER> from XCircuit v3.9 rev 72

.subckt FA B A SUM CIN COUT
M1 int51 CIN GND agnd nfet w=4 l=2 m=1
M2 SUM int35 GND agnd nfet w=4 l=2 m=1
M3 int48 B GND agnd nfet w=4 l=2 m=1
M4 int47 A int48 agnd nfet w=4 l=2 m=1
M5 int35 CIN int47 agnd nfet w=4 l=2 m=1
M6 SUM int35 Vdd vdd pfet W=12 L=2 M=1
M7 int51 A GND agnd nfet w=4 l=2 m=1
M8 int51 B GND agnd nfet w=4 l=2 m=1
M9 int35 int9 int51 agnd nfet w=4 l=2 m=1
M10 int35 int9 int33 vdd pfet W=12 L=2 M=1
M11 int35 CIN int40 vdd pfet W=12 L=2 M=1
M12 int40 B int39 vdd pfet W=12 L=2 M=1
M13 int39 A int33 vdd pfet W=12 L=2 M=1
M14 int33 B Vdd vdd pfet W=12 L=2 M=1
M15 int33 A Vdd vdd pfet W=12 L=2 M=1
M16 int33 CIN Vdd vdd pfet W=12 L=2 M=1
M17 int20 A GND agnd nfet w=4 l=2 m=1
M18 int20 B GND agnd nfet w=4 l=2 m=1
M19 int22 B GND agnd nfet w=4 l=2 m=1
M20 int9 A int22 agnd nfet w=4 l=2 m=1
M21 int9 CIN int20 agnd nfet w=4 l=2 m=1
M22 int9 CIN int11 vdd pfet W=12 L=2 M=1
M23 int11 B Vdd vdd pfet W=12 L=2 M=1
M24 int9 A int13 vdd pfet W=12 L=2 M=1
M25 int13 B int11 vdd pfet W=12 L=2 M=1
M26 int11 A Vdd vdd pfet W=12 L=2 M=1
M27 COUT int9 GND agnd nfet w=4 l=2 m=1
M28 COUT int9 Vdd vdd pfet W=12 L=2 M=1
.ends

X1 COUT int54 SUM7 A7 B7 FA
X2 int54 ext60 SUM6 A6 B6 FA
X3 ext59 int50 SUM5 A5 B5 FA
X4 int50 int31 SUM4 A4 B4 FA
X5 int31 int30 SUM3 A3 B3 FA
X6 int30 int29 SUM2 A2 B2 FA
X7 int29 int28 SUM1 A1 B1 FA
X8 int28 CIN SUM0 A0 B0 FA

.end
