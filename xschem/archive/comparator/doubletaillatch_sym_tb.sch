v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1000 -110 1040 -110 { lab=o1}
N 1000 -110 1000 -20 { lab=o1}
N 1000 -20 1240 -20 { lab=o1}
N 1240 -70 1240 -20 { lab=o1}
N 1360 -570 1360 -460 { lab=i}
N 890 -360 890 -250 { lab=j}
N 890 -420 910 -420 { lab=inp}
N 1360 -630 1390 -630 { lab=inm}
N 910 -420 920 -420 { lab=inp}
N 890 -470 890 -420 { lab=inp}
N 1210 -760 1210 -620 { lab=Vinm}
N 1270 -760 1270 -620 { lab=inm}
N 1270 -680 1360 -680 { lab=inm}
N 1360 -680 1360 -630 { lab=inm}
N 740 -470 830 -470 { lab=Vinp}
N 620 -1050 670 -1050 { lab=b}
N 670 -1050 780 -1050 { lab=b}
N 670 -990 670 -880 { lab=s}
N 560 -1170 560 -1050 { lab=Vinp}
N 620 -1170 620 -1050 { lab=b}
N 670 -880 670 -780 { lab=s}
N 610 -910 610 -780 { lab=Vref1}
N 730 -910 730 -780 { lab=GND}
N 780 -1050 950 -1050 { lab=b}
N 1080 -1200 1130 -1200 { lab=cp}
N 1130 -1200 1240 -1200 { lab=cp}
N 1130 -1140 1130 -1030 { lab=#net1}
N 1020 -1320 1020 -1200 { lab=Vinp}
N 1080 -1320 1080 -1200 { lab=cp}
N 1130 -1030 1130 -930 { lab=#net1}
N 1070 -1060 1070 -930 { lab=Vref1}
N 1190 -1060 1190 -930 { lab=GND}
N 1240 -1200 1410 -1200 { lab=cp}
C {devices/code_shown.sym} 40 -415 0 0 {name=SPICE1 value="
.lib /home/sky/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/sky/sky130A/libs.ref/sky130_fd_sc_lp/spice/sky130_fd_sc_lp.spice
.options abstol=1e-14 reltol=1e-4
.tran 10u 1m
.save all
"}
C {/home/sky/cochlea_sky130/xschem/comparator/doubletaillatch.sym} 700 -60 0 0 {name=X2}
C {devices/vsource.sym} 70 -260 0 0 {name=V6 value=PULSE(0,1,0,1n,1n,10u,20u)}
C {devices/vsource.sym} 290 -260 0 0 {name=V7 value=PULSE(1,0,0,1n,1n,10u,20u)}
C {devices/vsource.sym} 70 -160 0 0 {name=V8 value=sin(0.4,0.01,5000)}
C {devices/gnd.sym} 70 -30 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 70 -190 0 0 {name=l5 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 290 -290 0 0 {name=l6 sig_type=std_logic lab=clkbar}
C {devices/lab_pin.sym} 70 -290 0 0 {name=l7 sig_type=std_logic lab=clk}
C {devices/gnd.sym} 290 -230 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 70 -230 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 70 -130 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} 750 -160 0 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 750 -60 0 0 {name=l14 sig_type=std_logic lab=clkbar}
C {/home/sky/cochlea_sky130/xschem/comparator/latchnorandinv.sym} 800 -50 0 0 {name=x3}
C {devices/lab_pin.sym} 850 -50 0 0 {name=l16 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1440 -90 0 1 {name=l19 sig_type=std_logic lab=out}
C {/home/sky/cochlea_sky130/xschem/comparator/latchnorandinv.sym} 900 -50 0 0 {name=x1}
C {devices/lab_pin.sym} 950 -50 0 0 {name=l15 sig_type=std_logic lab=clkbar}
C {sky130_stdcells/xor2_1.sym} 1300 -90 0 0 {name=x2 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {/home/sky/cochlea_sky130/xschem/comparator/latchnorandinv.sym} 1040 -50 0 0 {name=x4}
C {devices/lab_pin.sym} 1090 -50 0 0 {name=l20 sig_type=std_logic lab=clk}
C {/home/sky/cochlea_sky130/xschem/comparator/latchnorandinv.sym} 1140 -50 0 0 {name=x5}
C {devices/lab_pin.sym} 1190 -50 0 0 {name=l21 sig_type=std_logic lab=clkbar}
C {devices/lab_pin.sym} 1000 -110 3 1 {name=l22 sig_type=std_logic lab=o1}
C {devices/lab_pin.sym} 1240 -110 3 1 {name=l23 sig_type=std_logic lab=o2}
C {sky130_stdcells/buf_1.sym} 1400 -90 0 0 {name=x6 VGND=GND VNB=GND VPB=VDD VPWR=VDD prefix=sky130_fd_sc_lp__ }
C {sky130_fd_pr/cap_mim_m3_1.sym} 890 -390 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1360 -600 0 0 {name=C2 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1210 -680 0 0 {name=l17 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} 740 -470 0 0 {name=l18 sig_type=std_logic lab=Vinp}
C {devices/vsource.sym} 310 -60 0 0 {name=V1 value=-0.3}
C {devices/gnd.sym} 310 -30 0 0 {name=l24 lab=GND}
C {devices/lab_pin.sym} 310 -90 0 0 {name=l25 sig_type=std_logic lab=Vref1}
C {devices/vsource.sym} 400 -60 0 0 {name=V2 value=0.6}
C {devices/gnd.sym} 400 -30 0 0 {name=l26 lab=GND}
C {devices/lab_pin.sym} 400 -90 0 0 {name=l27 sig_type=std_logic lab=Vref2}
C {devices/vsource.sym} 220 -160 0 0 {name=V3 value=PULSE(0,1,0,1n,1n,20u,40u)}
C {devices/lab_pin.sym} 220 -190 0 0 {name=l32 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 920 -420 0 1 {name=l36 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 1390 -630 0 1 {name=l37 sig_type=std_logic lab=inm}
C {devices/lab_pin.sym} 700 -130 0 0 {name=l38 sig_type=std_logic lab=inp}
C {devices/lab_pin.sym} 700 -90 0 0 {name=l11 sig_type=std_logic lab=inm}
C {devices/gnd.sym} 220 -130 0 0 {name=l12 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 1240 -780 1 0 {name=M3
L=1
W=4
body=VDD
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
C {devices/lab_pin.sym} 1240 -580 0 0 {name=l49 sig_type=std_logic lab=clk}
C {sky130_fd_pr/nfet3_01v8.sym} 1240 -600 3 0 {name=M4
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 1240 -800 0 0 {name=l50 sig_type=std_logic lab=clkbar}
C {devices/lab_pin.sym} 870 -220 0 0 {name=l33 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 850 -270 0 0 {name=l35 sig_type=std_logic lab=Vref1}
C {devices/lab_pin.sym} 850 -230 0 0 {name=l39 sig_type=std_logic lab=Vref2}
C {devices/lab_pin.sym} 890 -250 0 1 {name=l42 sig_type=std_logic lab=j}
C {/home/sky/fossi_cochlea/xschem/comparator/mux_working.sym} 840 -220 0 0 {name=X1}
C {devices/lab_pin.sym} 1340 -430 0 0 {name=l28 sig_type=std_logic lab=cbar}
C {devices/lab_pin.sym} 1320 -480 0 0 {name=l29 sig_type=std_logic lab=Vref1}
C {devices/lab_pin.sym} 1320 -440 0 0 {name=l30 sig_type=std_logic lab=Vref2}
C {devices/lab_pin.sym} 1360 -460 0 1 {name=l31 sig_type=std_logic lab=i}
C {/home/sky/fossi_cochlea/xschem/comparator/mux_working.sym} 1310 -430 0 0 {name=X3}
C {devices/vsource.sym} 430 -160 0 0 {name=V4 value=PULSE(0,1,0,1n,1n,20u,40u,90)}
C {devices/lab_pin.sym} 430 -190 0 0 {name=l34 sig_type=std_logic lab=cbar}
C {devices/gnd.sym} 430 -130 0 0 {name=l40 lab=GND}
C {devices/lab_pin.sym} 380 -570 0 0 {name=l41 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 360 -620 0 0 {name=l43 sig_type=std_logic lab=Vref1}
C {devices/lab_pin.sym} 360 -580 0 0 {name=l44 sig_type=std_logic lab=Vref2}
C {devices/lab_pin.sym} 400 -600 0 1 {name=l45 sig_type=std_logic lab=k}
C {/home/sky/fossi_cochlea/xschem/comparator/mux_working.sym} 350 -570 0 0 {name=X4}
C {sky130_fd_pr/cap_mim_m3_1.sym} 890 -220 0 0 {name=C3 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1360 -430 0 0 {name=C4 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/gnd.sym} 890 -190 0 0 {name=l48 lab=GND}
C {devices/gnd.sym} 1360 -400 0 0 {name=l51 lab=GND}
C {devices/res.sym} 860 -470 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 130 70 0 0 {name=V5 value=PULSE(0,1,0,1n,1n,8u,20u)}
C {devices/lab_pin.sym} 130 40 0 0 {name=l101 sig_type=std_logic lab=phi1}
C {devices/gnd.sym} 130 100 0 0 {name=l103 lab=GND}
C {devices/vsource.sym} 410 60 0 0 {name=V12 value=PULSE(0,1,0,1n,1n,8u,20u,180)}
C {devices/lab_pin.sym} 410 30 0 0 {name=l105 sig_type=std_logic lab=phi2}
C {devices/gnd.sym} 410 90 0 0 {name=l107 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 670 -1020 0 0 {name=C21 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 590 -1010 0 0 {name=l52 sig_type=std_logic lab=phi1}
C {sky130_fd_pr/nfet3_01v8.sym} 590 -1030 3 0 {name=M1
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 950 -1050 2 0 {name=l58 sig_type=std_logic lab=b}
C {devices/lab_pin.sym} 610 -780 0 0 {name=l61 sig_type=std_logic lab=Vref1}
C {devices/lab_pin.sym} 560 -1050 0 0 {name=l64 sig_type=std_logic lab=Vinp}
C {sky130_fd_pr/nfet3_01v8.sym} 640 -760 3 0 {name=M5
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 640 -740 0 0 {name=l67 sig_type=std_logic lab=phi2}
C {/home/sky/cochlea_sky130/xschem/comparator/doubletaillatch.sym} 700 190 0 0 {name=X5}
C {devices/lab_pin.sym} 750 90 0 0 {name=l46 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 750 190 0 0 {name=l47 sig_type=std_logic lab=clkbar}
C {devices/lab_pin.sym} 700 120 0 0 {name=l53 sig_type=std_logic lab=Vinp}
C {devices/lab_pin.sym} 700 160 0 0 {name=l54 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} 800 140 0 1 {name=l55 sig_type=std_logic lab=oo}
C {devices/vsource.sym} 30 -20 0 0 {name=V9 value=0.6}
C {devices/vsource.sym} 470 -210 0 0 {name=V10 value=1}
C {devices/vdd.sym} 470 -240 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 470 -180 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 30 10 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 30 -50 0 0 {name=l4 sig_type=std_logic lab=Vinm}
C {devices/lab_pin.sym} 240 -120 0 0 {name=l13 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 930 -50 0 1 {name=l19 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 730 -70 3 1 {name=l23 sig_type=std_logic lab=o2}
C {sky130_fd_pr/nfet3_01v8.sym} 700 -760 3 0 {name=M2
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 700 -740 0 0 {name=l57 sig_type=std_logic lab=phi2bar}
C {devices/gnd.sym} 730 -780 0 0 {name=l56 lab=GND}
C {devices/vsource.sym} 310 140 0 0 {name=V11 value=PULSE(1,0,0,1n,1n,8u,20u,180)}
C {devices/lab_pin.sym} 310 110 0 0 {name=l59 sig_type=std_logic lab=phi2bar}
C {devices/gnd.sym} 310 170 0 0 {name=l60 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 590 -1190 1 0 {name=M6
L=1
W=4
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 640 -930 1 0 {name=M7
L=1
W=4
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 700 -930 1 0 {name=M8
L=1
W=4
body=VDD
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
C {devices/lab_pin.sym} 700 -950 0 0 {name=l62 sig_type=std_logic lab=phi2}
C {devices/lab_pin.sym} 640 -950 0 0 {name=l63 sig_type=std_logic lab=phi2bar}
C {devices/vsource.sym} 90 180 0 0 {name=V13 value=PULSE(1,0,0,1n,1n,8u,20u)}
C {devices/lab_pin.sym} 90 150 0 0 {name=l65 sig_type=std_logic lab=phi1bar}
C {devices/gnd.sym} 90 210 0 0 {name=l66 lab=GND}
C {devices/lab_pin.sym} 590 -1210 0 0 {name=l68 sig_type=std_logic lab=phi1bar}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1130 -1170 0 0 {name=C6 model=cap_mim_m3_1 W=10 L=10 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 1050 -1160 0 0 {name=l70 sig_type=std_logic lab=phi2}
C {sky130_fd_pr/nfet3_01v8.sym} 1050 -1180 3 0 {name=M9
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 1410 -1200 2 0 {name=l71 sig_type=std_logic lab=cp}
C {devices/lab_pin.sym} 1070 -930 0 0 {name=l72 sig_type=std_logic lab=Vref1}
C {devices/lab_pin.sym} 1020 -1200 0 0 {name=l73 sig_type=std_logic lab=Vinp}
C {sky130_fd_pr/nfet3_01v8.sym} 1100 -910 3 0 {name=M10
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 1100 -890 0 0 {name=l74 sig_type=std_logic lab=phi1}
C {sky130_fd_pr/nfet3_01v8.sym} 1160 -910 3 0 {name=M11
L=1
W=2
body=GND
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
C {devices/lab_pin.sym} 1160 -890 0 0 {name=l75 sig_type=std_logic lab=phi1bar}
C {devices/gnd.sym} 1190 -930 0 0 {name=l76 lab=GND}
C {sky130_fd_pr/pfet3_01v8.sym} 1050 -1340 1 0 {name=M12
L=1
W=4
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 1100 -1080 1 0 {name=M13
L=1
W=4
body=VDD
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
C {sky130_fd_pr/pfet3_01v8.sym} 1160 -1080 1 0 {name=M14
L=1
W=4
body=VDD
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
C {devices/lab_pin.sym} 1160 -1100 0 0 {name=l77 sig_type=std_logic lab=phi1}
C {devices/lab_pin.sym} 1100 -1100 0 0 {name=l78 sig_type=std_logic lab=phi1bar}
C {devices/lab_pin.sym} 1050 -1360 0 0 {name=l79 sig_type=std_logic lab=phi2bar}
C {devices/lab_pin.sym} 670 -970 2 0 {name=l81 sig_type=std_logic lab=s}
