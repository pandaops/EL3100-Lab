   AREA  test,code,readonly



 LDR R1 , Value1 
 LDR R2 , Value2 
 CMP R1 , R2 
 BHI Done 
 MOV R1 , R2 
Done
 STR R1 , Result 

  SWI &11
Value1 DCD &FEDCA987 
Value2 DCD &12345678 


Result DCD 0 
   
   END