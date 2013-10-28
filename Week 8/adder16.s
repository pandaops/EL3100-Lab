
    AREA Program, CODE

 LDR R0 , =Table
 LDR R1,Length
 EOR R2,R2,R2
Loop
 LDR R3,[R0]
 ADD R1,R3,R1
 ADD R0 , R0 , #+4 
 SUBS R2 , R2 , #0x1 
 BNE Loop 
 STR R1 , Result 
 SWI &11



Table DCW &2040 
  ALIGN 
  DCW &1C22
  ALIGN
  DCW &0242
  ALIGN
  DCW &0111
  ALIGN
TableEnd DCD 0
  ALIGN
Length DCW (TableEnd - Table) / 4 
  ALIGN 
Result DCW 0 
 ALIGN
  END