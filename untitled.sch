v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -230 200 -190 {
lab=vout}
N 200 -130 200 -100 {
lab=GND}
N 200 -160 230 -160 {
lab=GND}
N 230 -160 230 -110 {
lab=GND}
N 200 -260 230 -260 {
lab=vcc}
N 230 -310 230 -260 {
lab=vcc}
N 200 -310 230 -310 {
lab=vcc}
N 200 -320 200 -290 {
lab=vcc}
N 130 -260 160 -260 {
lab=vin}
N 130 -260 130 -160 {
lab=vin}
N 130 -160 160 -160 {
lab=vin}
N 200 -210 240 -210 {
lab=vout}
N 90 -210 130 -210 {
lab=vin}
N 200 -110 230 -110 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 180 -160 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 180 -260 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} 380 -150 0 0 {name=vcc value=1.8 savecurrent=false}
C {vsource.sym} 460 -150 0 0 {name=vin value="pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)"}
C {lab_pin.sym} 90 -210 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 240 -210 2 0 {name=p2 sig_type=std_logic lab=vout}
C {lab_pin.sym} 380 -180 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 460 -180 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_pin.sym} 200 -320 0 0 {name=p5 sig_type=std_logic lab=vcc}
C {gnd.sym} 380 -120 0 0 {name=l1 lab=GND}
C {gnd.sym} 460 -120 0 0 {name=l2 lab=GND}
C {gnd.sym} 200 -100 0 0 {name=l3 lab=GND}
C {code_shown.sym} 390 -280 0 0 {name=SPICE only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 100n
.save all"}
