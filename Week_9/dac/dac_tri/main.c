#include "LPC23xx.h"
int  main ()
{
	unsigned int i,value=0;
	init_timer( ((72000000/100) - 1) );

	PINSEL1 = 0x00200000; 		//Pinselection for uart tx and rx lines
	
	/************** Uart initialization **********************************/
    PCLKSEL0 = 0x00C00000;
    PINMODE1=0x00300000;
  
	while (1)
	{
	while(value<0x400)
	{
   		DACR=value<<6;
   		value++;
    } 
    value--;
    while(value>0)
    {
        DACR=value<<6;
        value--;   
    }

	}
  return 0;
}



