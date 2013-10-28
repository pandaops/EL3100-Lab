 
	AREA Program, CODE , READONLY

 LDR R0,Value1
	 EOR R1,R1,R1
 LDR R2,0x05
 Loop
	EOR R1,R1,R0,LSR#0x01
	SUBS R2,R2,0x01
	BNE Loop
    AND R1,R1,0x00000001
	STR R1,Result 
    SWI &11
	
 
 Value1 DCB &23 
  align
mask DCW 0x000F  
  align
Result DCD 0 
   END