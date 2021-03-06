#include "LPC23xx.h"
/********************* serial Transmission routine***********************************/	
void serial_tx(int ch)
{
  while ((U0LSR & 0x20)!=0x20);
  U0THR = ch;
}
/**************************** Routine for converting hex value to ascii value *****************/	
int atoh(int ch)
{
	if(ch<=0x09)
		ch = ch + 0x30;
	else
		ch = ch + 0x37;
	return(ch);
}
/*********************************** main routine ****************************************************/
int  main ()
{
	unsigned int Fdiv,value;
	init_timer( ((72000000/100) - 1) );

	PCONP |=0X00001000;		//switch adc from disable state to enable state  
	PINSEL0 = 0x00000050; 		//Pinselection for uart tx and rx lines
	PINSEL1	= 0X01554000;		//Pinselection for adc0.0 

	/************** Uart initialization **********************************/

	U0LCR = 0x83;               // 8 bits, no Parity, 1 Stop bit  
	Fdiv = ( 72000000 / 16 ) / 19200 ;  //baud rate  
	U0DLM = Fdiv / 256;
	U0DLL = Fdiv % 256;
   	U0LCR = 0x03;               // DLAB = 0
   	
   	FIO4DIR=0x00;
	FIO3DIR=0xFF;
	
  	AD0CR = 0X01210F01; // Adc initialization
	while(1) 
	{
		while((AD0DR0 & 0X80000000)!=0X80000000);	// Wait here until adc make conversion complete
	
		/************* To get converted value and display it on the serial port****************/
            	value = (AD0DR0>>6)& 0x3ff ;    
		serial_tx('\t');
		serial_tx(atoh((value&0x300)>>8));
		serial_tx(atoh((value&0xf0)>>4));
		serial_tx(atoh(value&0x0f));
		serial_tx(0x0d);
		serial_tx(0x0a);
		FIO3PIN=value&0x03f;
	}
  return 0;
}



