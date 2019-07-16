* Inverter characterization for CMOS and Pseudo-NMOS with Transient Analysis and Measure

* include the MOSFET models
.include 'ami05.sp'

* set the supply voltage
.param supply_voltage=3.3V
* set the operating temperature
.option temp=20

* include the circuit to be simulated
.include 'INVX1.spice'
.include 'INVX1_new.spice'

* make instances of the subckt
X1 A Z1 vdd1 0 INVX1
X2 A Z2 vdd2 0 INVX1_new 

* capacitive load on inverter outputs
C1 Z1 0 25f
C2 Z2 0 25f 

* perform a 4600ps transient analysis
.tran 1ps 4600ps

* define the supply voltages we use separate supplies for separate power measurements
Vdd1 vdd1 0 supply_voltage
Vdd2 vdd2 0 supply_voltage

* create a voltage pulse on the input
VSW1 A 0 PULSE (0V supply_voltage 1000ps 5ps 5ps 1700ps 4000ps)

.param half_supply = '0.5*supply_voltage'
.param slew_low = '0.1*supply_voltage'
.param slew_high = '0.9*supply_voltage'

* delay characterization for CMOS
* measure the input rise to output fall delay 
* uses a calculation to compute half of 50% of the supply voltage
.meas tran rise_delay_CMOS trig v(A) val=half_supply rise=1 targ v(Z1) val=half_supply fall=1
* measure the output rise time (slew)
.meas tran rise_time_CMOS trig v(Z1) val=slew_low rise=1 targ v(Z1) val=slew_high rise=1

* delay characterization for Pseudo-NMOS
* measure the input rise to output fall delay 
* uses a calculation to compute half of 50% of the supply voltage
.meas tran rise_delay_PNMOS trig v(A) val=half_supply rise=1 targ v(Z2) val=half_supply fall=1
* measure the output rise time (slew)
.meas tran rise_time_PNMOS trig v(Z2) val=slew_low rise=1 targ v(Z2) val=slew_high rise=1

* power characterization for CMOS
.meas tran avg_current_CMOS avg i(vdd1) from=800ps to=4500ps

* power characterization for Pseudo-NMOS 
.meas tran avg_current_PNMOS avg i(vdd2) from=800ps to=4500ps

.END