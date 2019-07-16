*SPICE circuit <NOR2X1_new> from XCircuit v3.9 rev 72

.subckt NOR2X1_new A B Y vdd gnd
M3 Y B GND gnd nfet w=3.9u l=0.6u m=1
M2 Y A GND gnd nfet w=3.9u l=0.6u m=1
M1 Y GND Vdd vdd pfet W=2.1u L=0.6u M=1
.ends

X100 A B Z VDD GND NOR2X1_new
.end