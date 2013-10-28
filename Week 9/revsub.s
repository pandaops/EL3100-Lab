    
	AREA Program, CODE
     ENTRY

 LDR R0,Value1
 MOV R1,#0x00
 RSB R1,R0,R0,LSL#0x03
 ADD R2,R1,R0,LSL#0x07
 
Value1 DCW &0002
 ALIGN
Result DCD 0x05
  END