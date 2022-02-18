* SPICE NETLIST
***************************************

.SUBCKT tigfet1 d pgd cg pgs s
.ENDS
***************************************
.SUBCKT TIGFET_PCELL_SP15CP15_N1 D S PGD CG PGS
** N=5 EP=5 IP=0 FDC=1
X0 D PGD CG PGS S tigfet1 $X=142 $Y=62 $D=0
.ENDS
***************************************
.SUBCKT G5_XOR3_N1 Vdd C Vss A B Z
** N=9 EP=6 IP=50 FDC=10
X0 4 Vdd Vss C Vss TIGFET_PCELL_SP15CP15_N1 $T=280 24 1 180 $X=0 $Y=64
X1 4 Vss Vdd C Vdd TIGFET_PCELL_SP15CP15_N1 $T=24 24 0 0 $X=138 $Y=64
X2 6 Vss Vdd B Vdd TIGFET_PCELL_SP15CP15_N1 $T=556 172 0 180 $X=276 $Y=64
X3 7 Vdd Vss A Vss TIGFET_PCELL_SP15CP15_N1 $T=556 244 1 180 $X=276 $Y=284
X4 6 Vdd Vss B Vss TIGFET_PCELL_SP15CP15_N1 $T=300 172 1 0 $X=414 $Y=64
X5 7 Vss Vdd A Vdd TIGFET_PCELL_SP15CP15_N1 $T=300 244 0 0 $X=414 $Y=284
X6 Z C 7 6 7 TIGFET_PCELL_SP15CP15_N1 $T=970 24 1 180 $X=690 $Y=64
X7 Z 4 7 B 7 TIGFET_PCELL_SP15CP15_N1 $T=970 392 0 180 $X=690 $Y=284
X8 Z C A B A TIGFET_PCELL_SP15CP15_N1 $T=714 24 0 0 $X=828 $Y=64
X9 Z 4 A 6 A TIGFET_PCELL_SP15CP15_N1 $T=714 392 1 0 $X=828 $Y=284
.ENDS
***************************************
