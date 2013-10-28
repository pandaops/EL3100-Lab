    
	AREA Program, CODE
     ENTRY

 LDR R0,=Table1
 LDR R1,=Table2
 LDR R2,Length1
 MOV R3,#0x00
Loop
 LDR R4,[R0]
 LDR R5,[R1]
 MLA R3,R4,R5,R3
 ADD R0 , R0 , #+4 
 ADD R1 , R1 , #+4 
 SUBS R2 , R2 , #0x1 
 BNE Loop 
 SWI &11
	 
Table1 DCW &0001
  ALIGN 
  DCW &0002
  ALIGN
  DCW &0003
  ALIGN
  DCW &004
  ALIGN
TableEnd1 DCD 0
  ALIGN
Length1 DCW (TableEnd1 - Table1) / 4 
  ALIGN 
Table2 DCW &0001
  ALIGN 
  DCW &0002
  ALIGN
  DCW &0003
  ALIGN
  DCW &0004
  ALIGN
TableEnd2 DCD 0
  ALIGN
Length2 DCW (TableEnd2 - Table2) / 4 
  ALIGN 
Result DCD 0x05
  END