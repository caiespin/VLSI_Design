*SPICE circuit <INVX1_new> from XCircuit v3.9 rev 72

.subckt INVX1_new A Y vdd gnd
M2 Y A GND gnd nfet w=3.9u l=0.6u m=1
M1 Y GND Vdd vdd pfet W=2.1u L=0.6u M=1
.ends

X100 A B Z VDD GND INVX1_new
.end