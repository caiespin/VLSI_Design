* Flip-Flop with Leakage current analysis and Measure

* include the MOSFET models
.include 'ami05.sp'

* our supplies are global to the hierarchy
.global vdd gnd
.param supply_voltage=3.3V
* set the operating temperature
.option temp=20

* include the circuit to be simulated
.include 'FF.spice'

* capacitive load on inverter output
C100 Q 0 20f 

* perform a 1000ps transient analysis
.tran 1ps 24ns

* define the supply voltages
VDD vdd 0 supply_voltage

* create a voltage pulse on the input
VCLK CLK 0 PULSE (0V supply_voltage 3ns 5ps 5ps 6ns 12ns)
VD D 0 PULSE (0V supply_voltage 0 5ps 5ps 12ns 18ns)

* power characterization

.meas tran avg_current_FF avg i(vdd) FROM=2ns TO=17ns
.end
