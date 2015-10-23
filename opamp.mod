* Operational Amplifier library

* Opamp-1 based on UA741
*
*  Rin                2Meg Ohm
*  rout               50 Ohm
*  Pole at            5 Hz
*  Open loop gain     200.000 V/V
.subckt opamp1 Vp Vm Vo
  * Input stage
  Rin Vp Vm 2Meg

  * Frequency compensation stage
  E1 1 0 Vp Vm 1
  R1 1 3 1.061e6
  C1 3 0 30p

  * Output stage
  Eout 4 0 3 0 {2*10^5}
  rout 4 Vo 50
.ends
