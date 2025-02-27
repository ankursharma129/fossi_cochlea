v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {inm is expected to be the inverse of inp 
(in differential mode)} -570 50 0 0 0.4 0.4 {}
T {if ctrl is high: (pass through)
  outp = inp
  outm = inm
if ctrl is low: (flip)
  outp = inm
  outm = inp} -150 -270 0 0 0.4 0.4 {}
N 30 -60 80 -60 { lab=outp}
N -60 -40 -30 -40 { lab=inm}
N -60 -40 -60 40 { lab=inm}
N -60 40 -30 40 { lab=inm}
N 30 60 90 60 { lab=outm}
N 0 -10 40 -10 { lab=ctrl}
N 0 140 40 140 { lab=ctrl}
N 0 110 0 140 { lab=ctrl}
N -100 -80 -100 80 { lab=inp}
N -100 80 -30 80 { lab=inp}
N -200 20 -60 20 { lab=inm}
N -100 -80 -30 -80 { lab=inp}
N -200 -20 -100 -20 { lab=inp}
N -200 140 -0 140 { lab=ctrl}
N 40 -10 70 -10 {
lab=ctrl}
N 70 -10 70 140 {
lab=ctrl}
N 40 140 70 140 {
lab=ctrl}
C {devices/ipin.sym} -200 -20 0 0 {name=p1 lab=inp}
C {devices/ipin.sym} -200 20 0 0 {name=p2 lab=inm}
C {devices/opin.sym} 80 -60 0 0 {name=p3 lab=outp}
C {devices/opin.sym} 90 60 0 0 {name=p4 lab=outm}
C {devices/ipin.sym} -200 140 0 0 {name=p5 lab=ctrl}
C {devices/ipin.sym} -200 190 0 0 {name=p6 lab=ctrlbar}
C {devices/lab_pin.sym} 0 -110 2 0 {name=l1 sig_type=std_logic lab=ctrlbar}
C {devices/lab_pin.sym} 0 10 2 0 {name=l2 sig_type=std_logic lab=ctrlbar}
C {mux/analogMux.sym} 0 -60 0 0 {name=x1}
C {mux/analogMux.sym} 0 60 0 0 {name=x2}
C {devices/ipin.sym} -230 -170 0 0 {name=p7 lab=vdda}
C {devices/ipin.sym} -230 -130 0 0 {name=p8 lab=vssa}
C {devices/lab_pin.sym} -20 -110 0 0 {name=l3 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -20 10 0 0 {name=l4 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} -20 -10 0 0 {name=l5 sig_type=std_logic lab=vssa}
C {devices/lab_pin.sym} -20 110 0 0 {name=l6 sig_type=std_logic lab=vssa}
