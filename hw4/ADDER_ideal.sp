* Stimulus to measure the delay and power of the ideal adder

* include the MOSFET models
.include 'ami05.sp'

* our supplies are global to the hierarchy
.global vdd gnd
.param supply_voltage=3.3V
* set the operating temperature
.option temp=20

* include the circuit to be simulated
.include 'ADDER.spc'

* capacitive load on FA output
C1 COUT 0 20f
C2 SUM0 0 20f
C3 SUM1 0 20f
C4 SUM2 0 20f
C5 SUM3 0 20f
C6 SUM4 0 20f
C7 SUM5 0 20f
C8 SUM6 0 20f
C9 SUM7 0 20f

* perform a 100000ps transient analysis
.tran 1ps 100000ps UIC

* define the supply voltages
VDD vdd 0 supply_voltage
*VSS gnd 0 0V

* create a voltage pulse on the Adder inputs
VCIN CIN 0 PULSE (0V supply_voltage 5000ps 5ps 5ps 4000p 8000ps)

VA0 A0 0 supply_voltage
VA1 A1 0 supply_voltage
VA2 A2 0 supply_voltage
VA3 A3 0 supply_voltage
VA4 A4 0 supply_voltage
VA5 A5 0 supply_voltage
VA6 A6 0 supply_voltage
VA7 A7 0 supply_voltage

VB0 B0 0 0V
VB1 B1 0 0V
VB2 B2 0 0V
VB3 B3 0 0V
VB4 B4 0 0V
VB5 B5 0 0V
VB6 B6 0 0V
VB7 B7 0 0V

.param half_supply = '0.5*supply_voltage'
.param slew_low = '0.1*supply_voltage'
.param slew_high = '0.9*supply_voltage'

* measure the input rise to output fall delay 

* uses a calculation to compute half of 50% of the supply voltage
.meas tran rise_delay trig v(CIN) val=half_supply rise=1 targ v(COUT) val=half_supply fall=1

* measure the output rise time (slew)
.meas tran rise_time trig v(COUT) val=slew_low rise=1 targ v(COUT) val=slew_high rise=1

*measure power
.measure tran avg_current avg i(vdd) from = 10ns to = 16ns

.END
