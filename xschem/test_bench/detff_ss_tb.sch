v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {can't use vssa itself, spice needs a gnd node (0) defined} -230 230 0 0 0.4 0.4 {}
T {https://files.slack.com/files-pri/T01699QAZBQ-F03555LPKFD/double_flipflop.png} 180 -160 0 0 0.4 0.4 {}
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
N -0 180 0 200 {
lab=GND}
N -80 160 -80 200 {
lab=GND}
N -80 200 -60 200 {
lab=GND}
N 80 160 80 200 {
lab=GND}
N 60 200 80 200 {
lab=GND}
N 640 -40 720 -40 {
lab=#net1}
N 680 -120 680 -40 {
lab=#net1}
N 520 -120 680 -120 {
lab=#net1}
N 520 -120 520 -60 {
lab=#net1}
N 520 -20 560 -20 {
lab=d}
N 520 -20 520 60 {
lab=d}
N 520 60 560 60 {
lab=d}
N 520 -60 560 -60 {
lab=#net1}
N 680 0 720 0 {
lab=#net2}
N 680 0 680 80 {
lab=#net2}
N 640 80 680 80 {
lab=#net2}
N 520 100 560 100 {
lab=#net2}
N 520 100 520 160 {
lab=#net2}
N 520 160 680 160 {
lab=#net2}
N 680 80 680 160 {
lab=#net2}
N 420 0 520 0 {
lab=d}
N 640 -580 720 -580 {
lab=#net3}
N 640 -400 720 -400 {
lab=#net4}
N 420 -600 520 -600 {
lab=d}
N 420 -600 420 -380 {
lab=d}
N 420 -380 520 -380 {
lab=d}
N 900 -600 1020 -600 {
lab=q1}
N 1020 -600 1020 -520 {
lab=q1}
N 1020 -480 1020 -400 {
lab=q2n}
N 510 -460 960 -460 {
lab=q2n}
N 460 -560 510 -460 {
lab=q2n}
N 510 -520 960 -520 {
lab=q1n}
N 960 -580 960 -520 {
lab=q1n}
N 900 -580 960 -580 {
lab=q1n}
N 800 -20 830 -20 {
lab=#net5}
N 460 -560 520 -560 {
lab=q2n}
N 460 -420 520 -420 {
lab=q1n}
N 460 -420 510 -520 {
lab=q1n}
N 900 -400 1020 -400 {
lab=q2n}
N 960 -460 960 -400 {
lab=q2n}
N 660 -420 660 -300 {
lab=#net6}
N 660 -420 720 -420 {
lab=#net6}
N 640 -660 660 -660 {
lab=#net7}
N 660 -660 660 -600 {
lab=#net7}
N 660 -600 720 -600 {
lab=#net7}
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
  plot rstb/2 clk_ext/2 d+1 q+2
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
C {test_bench/risc_signals.sym} 0 0 0 0 {name=x1
+ p_vdda1=1.2
+ p_vdda2=1.2
+ p_vccd1=1.2
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
C {devices/lab_pin.sym} 80 -160 2 0 {name=l18 sig_type=std_logic lab=vdda2}
C {devices/lab_pin.sym} -80 -160 0 0 {name=l19 sig_type=std_logic lab=vccd2}
C {sky130_stdcells/mux2_1.sym} 600 -40 0 0 {name=x2 VGND=GND VNB=GND VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 560 20 0 0 {name=l20 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 560 140 0 0 {name=l21 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 720 40 0 0 {name=l22 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 1140 -500 2 0 {name=l24 sig_type=std_logic lab=q}
C {sky130_stdcells/mux2_1.sym} 600 80 0 0 {name=x3 VGND=GND VNB=GND VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/mux2_1.sym} 760 -20 0 0 {name=x4 VGND=GND VNB=GND VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 420 30 0 0 {name=V1 value="PULSE (0 1.2 1n 1n 1n 100n 150n 20)"}
C {devices/gnd.sym} 420 60 0 0 {name=l23 lab=GND}
C {devices/lab_pin.sym} 420 0 0 0 {name=l25 sig_type=std_logic lab=d}
C {sky130_stdcells/xnor2_1.sym} 580 -580 0 0 {name=x5 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_2.sym} 810 -580 0 0 {name=x8 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 420 -560 0 0 {name=l26 sig_type=std_logic lab=d}
C {devices/lab_pin.sym} 720 -380 0 0 {name=l27 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 560 -660 0 0 {name=l29 sig_type=std_logic lab=clk_ext}
C {devices/lab_pin.sym} 720 -560 0 0 {name=l30 sig_type=std_logic lab=rstb}
C {devices/lab_pin.sym} 1020 -600 2 0 {name=l31 sig_type=std_logic lab=q1}
C {devices/lab_pin.sym} 1020 -400 2 0 {name=l32 sig_type=std_logic lab=q2n}
C {devices/lab_pin.sym} 960 -520 2 0 {name=l33 sig_type=std_logic lab=q1n}
C {devices/lab_pin.sym} 900 -420 2 0 {name=l34 sig_type=std_logic lab=q2}
C {sky130_stdcells/buf_1.sym} 600 -660 0 0 {name=x10 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 620 -300 0 0 {name=x11 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 580 -300 0 0 {name=l28 sig_type=std_logic lab=clk_ext}
C {sky130_stdcells/xnor2_1.sym} 580 -400 0 0 {name=x6 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/xnor2_1.sym} 1080 -500 0 0 {name=x7 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_2.sym} 810 -400 0 0 {name=x9 VGND=gnd VNB=gnd VPB=vccd1 VPWR=vccd1 prefix=sky130_fd_sc_hd__ }
