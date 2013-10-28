
  AREA Program, CODE , READONLY
  
  LDR R1,Value1
  LDR R2,mask		    
  XOR R5,R2,R1
  SWI &11
  
  Value1 DCW 0xAAAA
    align
  mask DCW 0xFFFF
    align
  Result DCD 0
    END
  	