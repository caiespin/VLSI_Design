* Flip-Flop with Dynamic power analysis and Measure

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
VCLK CLK 0 PULSE (0V supply_voltage 2ns 5ps 5ps 500ps 1ns)
*VD D 0 PULSE (0V supply_voltage 2.5ns 5ps 5ps 1ns 2ns)
* for clock simulation
VD D 0 PULSE (0V supply_voltage 0 5ps 5ps 24ns 25ns)

* power characterization

.meas tran avg_current_FF avg i(vdd) FROM=0ns TO=24ns
.end
