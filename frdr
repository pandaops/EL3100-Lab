
  AREA Program, CODE , READONLY


 LDR R1 , Value1
 LDR R2,mask
 MOV R3,R1,LSR#0x04 
 MOV R3,R3,LSL#0x08 				    
 AND R1,R1,R2
 ADD R1,R1,R3
  SWI &11


Value1 DCB &23 
  align
mask DCW 0x000F  
  align
Result DCD 0 
   END