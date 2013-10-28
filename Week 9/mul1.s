    
	AREA Program, CODE
     ENTRY

 LDR R0,Value1
 LDR R1,Value2
 MOV R2,#0x00
 ADD R2,R0,R1,LSL#0x01
 ADD R3,R1,R2,LSL#0x03

Value1 DCW &0002
 ALIGN
Value2 DCW &0002
 ALIGN
Result DCD 0x05
  END