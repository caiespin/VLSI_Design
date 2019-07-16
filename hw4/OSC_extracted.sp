* Stimulus to measure the oscilator delay and freq of the extracted OSC

* include the MOSFET models
.include 'ami05.sp'

* our supplies are global to the hierarchy
.global vdd gnd
.param supply_voltage=3.3V
*.param supply_voltage=1V
*.param supply_voltage=2V
*.param supply_voltage=3V
*.param supply_voltage=4V
*.param supply_voltage=5V

* set the operating temperature
*.option temp=0
.option temp=20
*.option temp=40
*.option temp=60
*.option temp=80
*.option temp=100

* include the circuit to be simulated
.include 'OSC.spice'

* capacitive load on OSC output
C4 OSC 0 20f

* perform a VTC analysis of the Adder
* sweep VSW from 0 to 5V with step size of 0.1V
*.DC VCIN 0 5 0.1

* perform a 10000ps transient analysis
.tran 1ps 100000ps UIC

* define the supply voltages
VDD vdd 0 supply_voltage
*VSS gnd 0 0V

.END
