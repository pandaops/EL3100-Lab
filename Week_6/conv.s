.section .l1.data
.align 4
xx: .byte4 0,1,2,3,0;
hrev: .byte4 2,1;
out: .byte4 0,0,0,0,0;
.section .text
.global _main;
_main:
p0=[p3+xx@GOT17M4];
p1=[p3+hrev@GOT17M4];
p2=[p3+out@GOT17M4];
p4=0x04;
p5=0x02;
loop convone lc1=p4;
loop_begin convone;
a1=0;
loop findconv lc0=p5;
loop_begin findconv;
r1=[p0];
r2=[p1];
a1+=r1.l*r2.l (IS);
p0+=4;
p1+=4;
loop_end findconv;
r6=a1.w;
[p2]=r6;
loop refresh lc0=p5;
loop_begin refresh;
p0+=-4;
p1+=-4;
loop_end refresh;
p0+=4;
p2+=4;
loop_end convone;
p2+=-8;
p2+=-8;
nop;
nop;
_main.end:
