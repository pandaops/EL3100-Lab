#include "LPC23xx.h"
void delay(void)
{
	for(int i=0;i<0x7f;i++)
	for(int j=0;j<0xff;j++);
}
void key_routine(void)
 {
    unsigned int key;
    FIO3DIR  = 0X008000FF;
    PINSEL0 |=0X00000000;
    IODIR0  |=0X00000000;
    while(1)
    {
 	  //First Row      
	      FIO4SET = 0X00000e00;
	      key = FIO4PIN;
	      key = (key & 0xf000) >> 12 ;
      
              if((key==0x07))
	      {
        	  send_serial_data('0');
		  FIO3PIN = 0X00000000;
	      }
	      if((key==0x0b))
              {
		  send_serial_data('1');
		  FIO3PIN = 0X00000001;
	      }
	      if( (key==0x0d))
              {
	          send_serial_data('2');
	          FIO3PIN = 0X00000002;
              }
	      if((key==0x0e))
	      {
		  send_serial_data('3');
	          FIO3PIN = 0X00000003;
              }
              FIO4CLR = 0X00000e00;
	      delay();
	  //Second Row     
	      FIO4SET = 0X00000d00;
	      key = FIO4PIN;
	      key = (key & 0xf000) >> 12 ;
      
      
	      if((key==0x07))
              {
	          send_serial_data('4');
                  FIO3PIN = 0X00000004;
              }
	      if((key==0x0b))
              {
	          send_serial_data('5');
        	  FIO3PIN = 0X00000005;
              }
    	      if( (key==0x0d))
              {
                  send_serial_data('6');
	          FIO3PIN = 0X00000006;
	      }
              if( (key==0x0e))
	      {
        	  send_serial_data('7');
	          FIO3PIN = 0X00000007;
	      }
	      FIO4CLR = 0X00000d00;
	      delay();  
	      
 	//Third Row
     	      FIO4SET = 0X00000b00;
              key = FIO4PIN;
              key = (key & 0xf000) >> 12 ;
  
              if((key==0x07))
              {
         	  send_serial_data('8');
	          FIO3PIN = 0X00000008;
              }
	      if((key==0x0b))
              {
	           send_serial_data('9');
                   FIO3PIN = 0X00000009;
              }
	      if( (key==0x0d))
              {
	          send_serial_data('a');
                  FIO3PIN = 0X0000000a;
              }
              if( (key==0x0e))
              {
          	  send_serial_data('b');
	          FIO3PIN = 0X0000000b;
              }
              FIO4CLR = 0X00000b00;
              delay();
       //Fourth Row   
   	      FIO4SET = 0X00000700;
	      key = FIO4PIN;
	      key = (key & 0xf000) >> 12 ;
      
	      if((key==0x07))
              {
           	  send_serial_data('c');
               	  FIO3PIN = 0X0000000c;
              }
              if((key==0x0b))
              {
                  send_serial_data('d');
                  FIO3PIN = 0X0000000d;
              }
              if((key==0x0d))
              {
                  send_serial_data('e');
                  FIO3PIN = 0X0000000e;
              }
              if( (key==0x0e))
              {
       		  send_serial_data('f');
                  FIO3PIN = 0X0000000f;
              }
   	      FIO4CLR = 0X00000700;
              delay();
	}
}
void send_serial_data(int ch)
{
  while ((U0LSR & 0x20)!=0x20);
  U0THR = ch;
}
int main (void)
{
	unsigned int Fdiv;
	FIO4DIR = 0XFF000fff;
	init_timer( ((72000000/100) - 1 ));
	PINSEL0 = 0x00000050;   
	U0LCR = 0x83;               // 8 bits, no Parity, 1 Stop bit  
	Fdiv = ( 72000000 / 16 ) / 19200 ;  //baud rate  
	U0DLM = Fdiv / 256;
	U0DLL = Fdiv % 256;
   	U0LCR = 0x03;               // DLAB = 0
	send_serial_data('Z');
	send_serial_data(0x0d);
	send_serial_data(0x0a);
	key_routine();
	return(0);
}


  
