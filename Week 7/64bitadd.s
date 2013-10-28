  AREA Program, CODE , READONLY 
   ENTRY
Main
  ADR R0 , Value1 
  LDMIA R0 , {R1,R2 } 
  ADR R0 , Value2 
  LDMIA R0 , {R3,R4 } 
  ADDS R6 , R2 , R4 
  ADC R5 , R1 , R3 
  ADR R0 , Result 
  STMIA R0 , {R5, R6} 
  SWI &5
  SWI &11
Value1 DCD &12A2E640 ,&F2100123 
Value2 DCD &001019BF ,&40023F51 
Result DCD 0 
 END

