#include "LPC23xx.h"
static void delay( unsigned int dv )
{
	volatile unsigned cnt;
	for ( cnt=0; cnt<dv ; cnt++ );	
}
/************************* main routine ************************************************************/
int main (void)
{
	PINSEL6 = 0X00000000;	
	FIO3DIR = 0x05000000;
        FIO4DIR = 0X00000000;
    	int val;
    	init_timer( ((72000000/100) - 1 ));
	while(1) 
	{
		val = (FIO4PIN&0X01);
		if(val==0)
			FIO3SET =0X0f000000;   // 9,6,5,a
		else
			FIO3CLR =0x0f000000;
		//delay(0x00afc80);
	}
	return(0);
}



