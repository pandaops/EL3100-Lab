.section .l1.data
.align 4
xx: .byte4 1,2,3,4;
bb: .byte4 2,3,4,5;
oo: .byte4 0,0,0,0;
.section .text
.global _main;
_main:
p0=[p3+xx@GOT17M4];
p1=[p3+bb@GOT17M4];
p2=[p3+oo@GOT17M4];
p4=0x04;
r3=0;
loop matadd lc1=p4;
loop_begin matadd;
r3=0;
r1=[p0];
r2=[p1];
r3=r1+r2;
[p2]=r3;
p0+=4;
p1+=4;
p2+=4;
loop_end matadd;
p2+=-8;
p2+=-8;
nop;
_main.end:
