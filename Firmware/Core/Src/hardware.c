/*
 * hardware.c
 *
 *  Created on: 23 de jun de 2023
 *      Author: lucas
 */
#include "hardware.h"

extern TIM_HandleTypeDef htim3;//PWM timer
extern TIM_HandleTypeDef htim1;//wake up timer
extern ADC_HandleTypeDef hadc1;//ADC channel
extern I2C_HandleTypeDef hi2c1;//I2C instance
extern SD_HandleTypeDef hsd;//sd card instance

//Activates the timer to wake up the processor and enters wait for interuption mode
void hw_sleep(void)
{
	HAL_TIM_Base_Start_IT(&htim1);
	__WFI();
}

/*configures wich one of the three channels the ADC will convert
Recives a int32_t that specifies the channel*/
void hw_adcChannelConfig(int32_t channel)
{
	//create a ADC_ChannelConfTypeDef object and fills it
	ADC_ChannelConfTypeDef sConfig = {0};
	sConfig.Channel = channel;
	sConfig.Rank = 1;
	sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;

	//configures the channel
	if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
	{
		Error_Handler();
	}
}

/* recieves an ADC channel to read
 * returns a int32_t between 0 and 4095 informing the ADC read value */
int32_t hw_getAnalogValue(analog entry)
{
	//variables to set the channel and store the read value
	int32_t channels[] ={ADC_CHANNEL_1,ADC_CHANNEL_2,ADC_CHANNEL_3};
	int32_t adcValue;

	//channel configuration
	hw_adcChannelConfig(channels[entry]);

	//ADC read by polling
	HAL_ADC_PollForConversion(&hadc1, 1000);
	adcValue = HAL_ADC_GetValue(&hadc1);
	HAL_ADC_Stop(&hadc1);

	return adcValue;
}

/*Uses the PWM to rotate the servo, recives the direction in wich to rotate*/
void hw_rotate(int32_t side)
{
	//get CCR and ARR
	int32_t CCR = __HAL_TIM_GET_COMPARE(&htim3,TIM_CHANNEL_4);
	int32_t ARR = __HAL_TIM_GET_AUTORELOAD(&htim3);

	//calculates duty new cicle and corresponding ARR value(uses the old to calculate)
	float newDutyCicle = (CCR/ARR) + side * DUTY_CICLE_STEP ;
	int32_t newCCR = (int32_t) ARR * newDutyCicle;

	//sets CCR to newCCR
	__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,newCCR);
}

/*Moves the servo in a direction dependent on the side*/
void hw_moveServo(int32_t side)
{
	//in case side is none
	if (!side) return;
	//moves in LDR1's direction
	if (side == LDR1)
	{
		hw_rotate(UP);
	}
	//moves in LDR2's direction
	else
	{
		hw_rotate(DOWN);
	}
}
/*Moves servo to the start position*/
void hw_servoMoveToZero(void)
{
	//get ARR
	int32_t ARR = __HAL_TIM_GET_AUTORELOAD(&htim3);
	//Caculate CCR
	int32_t newCCR = (int32_t) ARR * MIN_DUTY_CICLE;
	//set CCR
	__HAL_TIM_SET_COMPARE(&htim3,TIM_CHANNEL_4,newCCR);
}
/*Gets the display ready to use*/
void hw_displayInit(void)
{
	//first and third line strings
	char string1[] = "Energia gerada";
	char string2[] = "w/h";

	//start the display
	ssd1306_Init();

	//set cursor to first line and writes first message
	ssd1306_SetCursor(5, 5);
	ssd1306_WriteString(string1, Font_7x10, White);

	//set cursor to third line and writes third message
	ssd1306_SetCursor(5,25);
	ssd1306_WriteString(string2, Font_7x10, White);

	//updates screen
	ssd1306_UpdateScreen();

}

/* shows value on display*/
void hw_displayShow(float energy)
{
	//convert float to char
	char energyChar[16];
	sprintf(energyChar,"%f",energy);

	//set cursor to second line and writes energy production
	ssd1306_SetCursor(5,15);
	ssd1306_WriteString(energyChar,Font_7x10 , White);

	//updates screen
	ssd1306_UpdateScreen();
}

/*gets the sd card ready to use*/
void hw_sdInit(void)
{
	//mounts the sd card
    FATFS fs;
    f_mount(&fs, DEFAUT_PATH, DEFAUT_MOUNT);
}

//writes data to the sd card
void hw_sdStore(float energy)
{
	//in case the sd card isn't connected, doesn't try to write
	if (!HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_12)) return;

	//FATFS variables, used to write to a .txt
	FATFS fs;
	FIL file;
	UINT bw;

	char fileName[] = "out.txt";
	char energyChar[16];

	//data conversion from float to string
	sprintf(energyChar,"%f",energy);

	/*writes to the sd card, mount the card, opens the file,
	writes data, closes the file and unmounts the card*/
	f_mount(&fs, DEFAUT_PATH, DEFAUT_MOUNT);
	f_open(&file, fileName, FA_WRITE | FA_CREATE_ALWAYS);
	f_write(&file, energyChar, SIZE, &bw);
	f_close(&file);
	f_unmount(DEFAUT_PATH);
}
