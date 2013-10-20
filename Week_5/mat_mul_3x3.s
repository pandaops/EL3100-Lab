.section .l1.data
.align 4
xx: .byte4 1,2,3,4,5,6,7,8,9;
bb: .byte4 1,2,3,4,5,6,7,8,9;
oo: .byte4 0,0,0,0,0,0,0,0,0,0;
.section .text
.global _main;
_main:
p0=[p3+xx@GOT17M4];
p1=[p3+bb@GOT17M4];
p2=[p3+oo@GOT17M4];
p4=0x09;
r3=0;
loop matmul lc1=p4;
loop_begin matmul;
r7=0;
a1=0;
p5=0x03;
loop matmac lc0=p5;
loop_begin matmac;
r1=[p0];
r2=[p1];
a1+=r1.l*r2.l (IS);
p0+=4;
p1+=12;
loop_end matmac;
p0+=-4;
p1+=-12;
r7=a1.w;
[p2]=r7;
r3+=1;
cc=r3<3;
if cc jump col2;
p0+=4;
p1+=-32;
r3=0;
jump cdn;
col2:
p0+=-8;
p1+=-20;
cdn:
p2+=4;
nop;
nop;
loop_end matmul;
p2+=-8;
p2+=-8;
p2+=-8;
p2+=-8;
p2+=-4;
nop;
_main.end:
