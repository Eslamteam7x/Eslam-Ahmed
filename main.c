/*
 * main.c
 *
 *  Created on: Aug 15, 2024
 *      Author: esah2
 */


#define  F_CPU 8000000
#include "Std_Types.h"
#include "Mem_Map32.h"
#include "HAL/LCD.h"
#include "Mcal/EX_Interrupt.h"
#include <util/delay.h>


int main(void)
{
	sei();
	DIO_Init();
	LCD_Init();
	EXI_TriggerEdge(EX_INT0,RISING_EDGE);
	EXI_TriggerEdge(EX_INT1,FALLING_EDGE);
	EXI_Enable(EX_INT0);
	EXI_Enable(EX_INT1);
	LCD_WriteSentence("test 1");
	//_delay_ms(3000);
	sei();
	u8 x=0;
	while(1)
	{
		LCD_GoTo(1,0);
		LCD_WriteNumber(x);
		x++;
		_delay_ms(300);

		if (x==10)
		{
			x=0;
		}

	}
return 0;
}





