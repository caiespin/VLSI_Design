*SPICE circuit <NAND2X1_new> from XCircuit v3.9 rev 72

.subckt NAND2X1_new A B Y vdd gnd
M3 int8 B GND gnd nfet w=8.1u l=0.6u m=1
M2 Y A int8 gnd nfet w=8.1u l=0.6u m=1
M1 Y GND Vdd vdd pfet W=2.1u L=0.6u M=1
.ends

X100 A B Z VDD GND NAND2X1_new
.end