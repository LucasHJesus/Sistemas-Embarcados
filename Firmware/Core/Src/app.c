/*
 * app.c
 *
 *  Created on: 23 de jun de 2023
 *      Author: lucas
 */



#include "app.h"
/* returns the the magnitude of value1 with respect to value2 with a
 * differential, so that the servo doesn't move without necessity*/
compare compareValue(int32_t value1,int32_t value2)
{
	if ((value1-TOLERANCE)>value2) return GT;	//if value1 is grater than value2

	if ((value2-TOLERANCE)>value1) return LT;	//if value1 is grater than value2

	return EQ;									//if they are equal


}
/*calculates the discrete integral of the vector spValue
 * uses a Riemann sum with a trapeze as base for the sum*/
float calculateEnergy(float spValue[MAX_COUNT])
{
	int32_t i;
	float sum = 0.0;
	//goes through the spValue vector, except the last value, to avoid accessing unauthorized memory
	for (i = 0; i<(MAX_COUNT-2);i++)
	{
		//sums old value of sum with the current value os the trapeze
		sum += (( spValue[i] + spValue[i+1])*DT ) /TOTAL_TIME;
	}
	return sum;
}

float convertToAmpere(int32_t spValue)
{
	return (MAX_CURRENT/MAX_ADC)*spValue;

}

void setup(void)
{
	hw_displayInit();
	hw_sdInit();
}

void loop(void)
{
	static int32_t temp, index = 0;
	static float spValue[MAX_COUNT];
	float energy;
	//collects data from ldrs
	int32_t ldr1Value = hw_getAnalogValue(LDR1);
	int32_t ldr2Value = hw_getAnalogValue(LDR2);

	//check if its night or not(check light level
	if((ldr1Value<MIN_LIGHT)&&(ldr2Value<MIN_LIGHT))
	{
		hw_servoMoveToZero();
	}
	//compare data collected
	compare comparison = compareValue(ldr1Value,ldr2Value);

	//move servo accordingly
	hw_moveServo(comparison);

	//collect data from solar panel
	temp = hw_getAnalogValue(SOLARPANEL);
	spValue[index] = OUTPUT_TENSION * convertToAmpere(temp);
	index+=1;

	/*after 30min(60 data collection cycles) calculated
	energy generated and store it in sd-card*/
	if (index == MAX_COUNT)
	{
		//calculate energy
		energy = calculateEnergy(spValue);
		//store in sd-card
		hw_sdStore(energy);
		//show on display
		hw_displayShow(energy);

		index = 0;
	}


	//sets the processor in wait for interruption mode
	hw_sleep();
}
