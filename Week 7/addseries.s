						 
  AREA Program, CODE , READONLY


  LDR R0 , =Table
  EOR R1 , R1 , R1 
  LDR R2 , Length 
Loop
	LDR R3 , [R0] 
    ADD R1 , R1 , R3 
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
TableEnd DCD 0
  ALIGN
Length DCW (TableEnd - Table) / 4 
  ALIGN 
Result DCW 0 
 ALIGN
  END