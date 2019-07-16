* Flip-Flop with Setup time analysis and Measure

* include the MOSFET models
.include 'ami05.sp'

* our supplies are global to the hierarchy
.global vdd gnd
.param supply_voltage=3.3V
* set the operating temperature
.option temp=20

* include the circuit to be simulated
.include 'FF.spice'
.include 'FF_ideal.spc'

X100 CLK D Q1 DFFPOSX1

* capacitive load on inverter output
C100 Q 0 20f
C101 Q1 0 20f 

* perform a 1000ps transient analysis
.tran 1ps 24ns UIC

* define the supply voltages
VDD vdd 0 supply_voltage

* create a voltage pulse on the input
VCLK CLK 0 PULSE (0V supply_voltage 3ns 5ps 5ps 6ns 12ns)
VD D 0 PULSE (0V supply_voltage 2759ps 5ps 5ps 500ps 18ns)

.param half_supply = '0.5*supply_voltage'
.param slew_low = '0.1*supply_voltage'
.param slew_high = '0.9*supply_voltage'

* measure the Flip Flop setup time
* measure the output rise time (slew)
.meas tran setup_time trig v(D) val=half_supply rise=1 targ v(CLK) val=half_supply rise=2

* Clock-to-Q delay for ideal Flip flop
* measure the input rise to output fall delay 
* uses a calculation to compute half of 50% of the supply voltage
.meas tran Ideal_Clock-to-Q_rise_delay trig v(CLK) val=half_supply rise=1 targ v(Q1) val=half_supply fall=1

* Clock-to-Q delay for ideal Flip flop
* measure the input rise to output fall delay 
* uses a calculation to compute half of 50% of the supply voltage
.meas tran Clock-to-Q_rise_delay trig v(CLK) val=half_supply rise=1 targ v(Q) val=half_supply fall=1

.end
