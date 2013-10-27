#include "LPC23xx.h"
// serial Reception routine
int serial_rx(void)
{
	while (!(U1LSR & 0x01));
	return (U1RBR);
}
// serial transmission routine 
void serial_tx(char ch)
{
   while (!(U1LSR & 0x20));
   return (U1THR = ch);
}
// serial transmission routine for string of characters
void string_tx(char *a)
{
      while(*a!='\0')
      {
        while((U1LSR&0X20)!=0X20);
        U1THR=*a;  
        a++;
      }
}

/************************* main routine ************************************************************/
void main(void)
{
          unsigned long Fdiv;
	  unsigned char arr[] = {"\t ViMicroSystems Pvt Ltd\t "};

          PINSEL0 = 0x00000050;   //Pinselection for uart0 tx and rx lines
          PINSEL4 = 0x0000000A;   //Pinselection for uart1 tx and rx lines 
	  init_timer((( 72000000/ 100 ) - 1));	

	/**************************** uart1 initialization ************************************/	
          U1LCR = 0x83;  
          Fdiv = ( 72000000/ 16 ) / 19200;  ///baud rate  
          U1DLM = Fdiv / 256;
          U1DLL = Fdiv % 256;
          U1LCR = 0x03;   //* DLAB = 0 *

	  while(1)
          {
	          string_tx(arr);
		  serial_tx(0x0d);
		  serial_tx(0x0a);
          }
}
