v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -230 230 0 0 0.4 0.4 {}
T {phi1 clk hand-off from ana to dig} 300 -180 0 0 0.4 0.4 {}
N 80 100 100 100 {
lab=thresh1}
N 80 120 100 120 {
lab=thresh2}
N -60 -200 -60 -180 {
lab=vccd1}
N -60 180 -60 200 {
lab=GND}
N 80 -140 100 -140 {
lab=inp}
N 80 -120 100 -120 {
lab=inm}
N 60 180 60 200 {
lab=GND}
N 60 -200 60 -180 {
lab=vdda1}
N -100 -120 -80 -120 {
lab=clk_ext}
N -100 -140 -80 -140 {
lab=rstb}
N -100 -80 -80 -80 {
lab=cclk[1:0]}
N 80 60 100 60 {
lab=cclkb_ana[1:0]}
N 80 -40 100 -40 {
lab=phi1[1:0]}
N 80 -20 100 -20 {
lab=phi1b[1:0]}
N 80 0 100 0 {
lab=phi2[1:0]}
N 80 20 100 20 {
lab=phi2b[1:0]}
N -100 -100 -80 -100 {
lab=div2out[1:0]}
N -60 200 60 200 {
lab=GND}
N 80 40 100 40 {
lab=cclk_ana[1:0]}
N -80 160 -80 200 {
lab=GND}
N -80 200 -60 200 {
lab=GND}
N 80 160 80 200 {
lab=GND}
N 60 200 80 200 {
lab=GND}
N 0 180 0 200 {
lab=GND}
C {devices/netlist.sym} -360 -480 0 0 {name=SPICE2 only_toplevel=false value="
.lib /usr/local/lib/open_pdks/sky130/sky130B/libs.tech/ngspice/sky130.lib.spice tt
.include /usr/local/share/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.options abstol=1e-14 reltol=1e-4
.param fmax=\{256*10k\}
.param Tmin=\{1/fmax\}
.csparam tstep=\{1/fmax/20\}
.csparam tend=\{10*Tmin\}
.csparam n=0
.control
  tran $&tstep $&tend
  plot \\"phi1[$&n]\\" \\"phi1_dig[$&n]\\" \\"phi1b[$&n]\\"+2 \\"phi1b_dig[$&n]\\"+2
.endc
"}
C {devices/lab_pin.sym} 60 -200 2 0 {name=l1 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 100 100 2 0 {name=l2 sig_type=std_logic lab=thresh1}
C {devices/lab_pin.sym} 100 120 2 0 {name=l3 sig_type=std_logic lab=thresh2}
C {devices/lab_pin.sym} 100 -140 2 0 {name=l5 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 100 -120 2 0 {name=l6 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 0 200 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -60 -200 0 0 {name=l10 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} -100 -120 0 0 {name=l11 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} -100 -140 0 0 {name=l12 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 100 -40 2 0 {name=l7 sig_type=std_logic lab=phi1[1:0]}
C {devices/lab_pin.sym} 100 -20 2 0 {name=l8 sig_type=std_logic lab=phi1b[1:0]}
C {devices/lab_pin.sym} 100 0 2 0 {name=l13 sig_type=std_logic lab=phi2[1:0]}
C {devices/lab_pin.sym} 100 20 2 0 {name=l14 sig_type=std_logic lab=phi2b[1:0]}
C {devices/lab_pin.sym} -100 -80 0 0 {name=l15 sig_type=std_logic lab=cclk[1:0]}
C {devices/lab_pin.sym} 100 60 2 0 {name=l16 sig_type=std_logic lab=cclkb_ana[1:0]}
C {devices/lab_pin.sym} -100 -100 0 0 {name=l17 sig_type=std_logic lab=div2out[1:0]}
C {devices/lab_pin.sym} 100 40 2 0 {name=l4 sig_type=std_logic lab=cclk_ana[1:0]}
C {level_shifter/level_down_shifter.sym} 450 -80 0 0 {name=x2}
C {devices/lab_pin.sym} 400 -120 0 0 {name=l18 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 510 -120 2 0 {name=l19 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 370 -90 0 0 {name=l20 sig_type=std_logic lab=phi1[0]}
C {devices/lab_pin.sym} 540 -90 2 0 {name=l22 sig_type=std_logic lab=phi1_dig[0]}
C {devices/gnd.sym} 450 -40 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 80 -160 2 0 {name=l25 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -80 -160 0 0 {name=l26 sig_type=std_logic lab=vccd2}
C {level_shifter/level_down_shifter.sym} 450 60 0 0 {name=x4}
C {devices/lab_pin.sym} 400 20 0 0 {name=l29 sig_type=std_logic lab=vdda1}
C {devices/lab_pin.sym} 510 20 2 0 {name=l31 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 370 50 0 0 {name=l35 sig_type=std_logic lab=phi1b[0]}
C {devices/lab_pin.sym} 540 50 2 0 {name=l37 sig_type=std_logic lab=phi1b_dig[0]}
C {devices/gnd.sym} 450 100 0 0 {name=l38 lab=GND}
C {test_bench/risc_signals.sym} 0 0 0 0 {name=x1
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=0.8
+ p_vccd2=1.8
+ p_vccd_mgmt=1.8
+ p_fclk=\{256*10k\}
+ p_duty_cycle=0.5
+ p_rstb_delay=\{1.5/p_fclk\}
+ p_rstb_tr=5n
+ p_thresh1=0.7
+ p_thresh2=0.65
+ p_vpb=0
+ p_vnb=1.2
+ p_vcm=0.6
+ p_amp1=100m
+ p_f1=\{256*10k\}
+ p_amp2=0
+ p_f2=0
+ p_amp3=0
+ p_f3=0}
