.section .l1.data
.align 4
out: .byte4 0;
aa: .byte4 0;
bb: .byte4 1;
.section .text
.global _main;
_main:
p1=[p3+aa@GOT17M4];
p2=[p3+bb@GOT17M4];
p0=[p3+out@GOT17M4];
p5=0x0A;
LC0=p5;
loop fibloop LC0
LOOP_BEGIN fibloop
r3=[p1];
r4=[p2];
r5=r3+r4;
[p1]=r4;
[p2]=r5;
nop;
LOOP_END fibloop
p1=[p3+aa@GOT17M4];
p2=[p3+bb@GOT17M4];
p0=[p3+out@GOT17M4];
p5=0x0F;
LC0=p5;
loop fibloop_1 LC0
LOOP_BEGIN fibloop_1
r3=[p1];
r4=[p2];
r5=r3+r4;
[p1]=r4;
[p2]=r5;
nop;
LOOP_END fibloop_1
p1=[p3+aa@GOT17M4];
p2=[p3+bb@GOT17M4];
p0=[p3+out@GOT17M4];
p5=0x14;
LC0=p5;
loop fibloop_2 LC0
LOOP_BEGIN fibloop_2
r3=[p1];
r4=[p2];
r5=r3+r4;
[p1]=r4;
[p2]=r5;
nop;
LOOP_END fibloop_2
nop;
_main.end:
