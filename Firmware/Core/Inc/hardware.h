/*
 * hardware.h
 *
 *  Created on: 23 de jun de 2023
 *      Author: lucas
 */

#ifndef INC_HARDWARE_H_
#define INC_HARDWARE_H_

#define MAX_ADC 4095	//max value of adc conversion (2^12 - 1)
#define UP 1
#define DOWN -1
#define DAYCOUNTS 144 //average number of moviments per day
#define MIN_DUTY_CICLE 17 //minimum duty cicle PWM
#define MAX_DUTY_CICLE 83 //maximum duty cicle PWM
#define DUTY_CICLE_STEP 0.005 //average duty cicle step
#define DEFAUT_PATH "0:/" //defaut file path
#define DEFAUT_MOUNT 0 //defaut monting option
#define SIZE 10 //size of array to be writen
#define f_unmount(path) f_mount(0, path, 0) //unmounting macro

#include <stdint.h>
#include<stdio.h>
#include "main.h"

#include "ssd1306.h"
#include "fatfs.h"



typedef enum analog {
	SOLARPANEL = 0,
	LDR1 = 1,
	LDR2 = 2
} analog;


void hw_sleep(void);

void hw_adcChannelConfig(int32_t);
int32_t hw_getAnalogValue(analog);

void hw_moveServo(int32_t);
void hw_servoMoveToZero(void);

void hw_displayInit(void);
void hw_displayShow(float);

void hw_sdInit(void);
void hw_sdStore(float);



#endif /* INC_HARDWARE_H_ */
