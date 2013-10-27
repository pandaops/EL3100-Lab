#include "LPC23xx.h"
// serial Reception routine
int serial_rx(void)
{
	while (!(U0LSR & 0x01));
	return (U0RBR);
}
//serial transmission routine 
void serial_tx(int ch)
{
  while ((U0LSR & 0x20)!=0x20);
  U0THR = ch;
}
// serial transmission routine for string of characters
void string_tx(char *a)
{
      while(*a!='\0')
      {
        while((U0LSR&0X20)!=0X20);
        U0THR=*a;  
        a++;
      }
}
/************************* main routine ************************************************************/
int  main ()
{
	unsigned int Fdiv,temp;
	unsigned char arr[] = "a";
	init_timer( ((72000000/100) - 1) );
	/**************************** uart1 initialization ************************************/	
	PINSEL0 = 0x00000050;   
	FIO3DIR=0x000000ff;
	
	U0LCR = 0x83;               // 8 bits, no Parity, 1 Stop bit  
	Fdiv = ( 72000000 / 16 ) / 19200 ;  //baud rate  
	U0DLM = Fdiv / 256;
	U0DLL = Fdiv % 256;
   	U0LCR = 0x03;               // DLAB = 0

  	while(1) 
	{
	temp = serial_rx();
	FIO3PIN=temp;
	serial_tx(temp+2);
	}
        return 0;
}



