
	AREA Program, CODE

 LDR R0,Value1
 MOV R1,#0x01
 MOV R5,#0x50

Loop
   MUL R1,R0,R1
   SUBS R0,R0,#0x01
   BNE Loop
   
   LDR R2,=Result
   STR R1,Result
   SWI &5
   SWI &11
  
Value1 DCD 0x03
  align
Result DCD 0x05
  END