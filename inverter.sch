v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 -80 0 -80 {
lab=Vin}
N -10 -80 -10 -0 {
lab=Vin}
N -10 -0 -0 -0 {
lab=Vin}
N -20 -40 -10 -40 {
lab=Vin}
N 40 -50 40 -30 {
lab=Vout}
N 40 -40 130 -40 {
lab=Vout}
N 40 30 40 40 {
lab=GND}
N 40 0 50 0 {
lab=GND}
N 50 0 50 40 {
lab=GND}
N 40 40 50 40 {
lab=GND}
N 40 -120 50 -120 {
lab=Vdd}
N 50 -120 50 -80 {
lab=Vdd}
N 40 -80 50 -80 {
lab=Vdd}
N 40 -120 40 -110 {
lab=Vdd}
N 40 30 40 50 {
lab=GND}
N 40 -130 40 -110 {
lab=Vdd}
C {devices/ipin.sym} -20 -40 0 0 {name=p1 lab=Vin}
C {devices/opin.sym} 130 -40 0 0 {name=p2 lab=Vout}
C {sky130_fd_pr/pfet_01v8.sym} 20 -80 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 20 0 0 0 {name=M2
L=0.15
W=1
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
C {devices/iopin.sym} 40 -130 3 0 {name=p3 lab=Vdd}
C {devices/gnd.sym} 40 50 0 0 {name=l1 lab=GND}
