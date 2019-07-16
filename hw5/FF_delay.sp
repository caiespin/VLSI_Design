* Flip-Flop Clock-to-Q delay time analysis and Measure

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


.param half_supply = '0.5*supply_voltage'
.param slew_low = '0.1*supply_voltage'
.param slew_high = '0.9*supply_voltage'

* delay characterization for Flip flop
* measure the input rise to output fall delay 
* uses a calculation to compute half of 50% of the supply voltage
.meas tran rise_delay trig v(CLK) val=half_supply rise=1 targ v(Q) val=half_supply fall=1
* measure the output rise time (slew)
.meas tran rise_time trig v(Q) val=slew_low rise=1 targ v(Q) val=slew_high rise=1

.end
