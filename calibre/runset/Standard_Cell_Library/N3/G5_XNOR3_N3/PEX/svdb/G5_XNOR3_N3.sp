* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgd cg pgs s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N3 D S PGD CG PGS
** N=5 EP=5 IP=0 FDC=1
X0 D PGD CG PGS S tigfet1 $X=29 $Y=11 $D=0
.ENDS
***************************************
.SUBCKT G5_XNOR3_N3 Vdd C Vss A B Z
** N=9 EP=6 IP=50 FDC=10
X0 4 Vdd Vss C Vss TIGFET_PCELL_SP15CP15_N3 $T=167 63 1 180 $X=0 $Y=64
X1 4 Vss Vdd C Vdd TIGFET_PCELL_SP15CP15_N3 $T=137 63 0 0 $X=138 $Y=64
X2 6 Vss Vdd B Vdd TIGFET_PCELL_SP15CP15_N3 $T=443 63 1 180 $X=276 $Y=64
X3 7 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N3 $T=443 371 1 180 $X=276 $Y=372
X4 6 Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N3 $T=413 63 0 0 $X=414 $Y=64
X5 7 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N3 $T=413 371 0 0 $X=414 $Y=372
X6 Z C 7 B 7 TIGFET_PCELL_SP15CP15_N3 $T=857 63 1 180 $X=690 $Y=64
X7 Z 4 7 6 7 TIGFET_PCELL_SP15CP15_N3 $T=857 371 1 180 $X=690 $Y=372
X8 Z C A 6 A TIGFET_PCELL_SP15CP15_N3 $T=827 63 0 0 $X=828 $Y=64
X9 Z 4 A B A TIGFET_PCELL_SP15CP15_N3 $T=827 371 0 0 $X=828 $Y=372
.ENDS
***************************************
