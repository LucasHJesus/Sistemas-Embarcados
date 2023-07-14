/*
 * app.h
 *
 *  Created on: 23 de jun de 2023
 *      Author: lucas
 */

#ifndef INC_APP_H_
#define INC_APP_H_

#include "main.h"
#include "hardware.h"
#include <stdint.h>


#define MAX_COUNT 60 //60 counts in 1 hour
#define DT (1/12)  //5 minutes in hour
#define TOLERANCE 200 //max LDR difference
#define TOTAL_TIME 0.5 //30 min in hour
#define MAX_CURRENT 0.5 //Max current of the solar panel
#define OUTPUT_TENSION 15 //Solar panel output tension
#define MIN_LIGHT 500 //Min level of light accepted to consider day



typedef enum comparisson{
	EQ = 0,
	GT = 1,
	LT = 2
}compare;
void setup(void);
void loop(void);
float convertToAmpere(int32_t);
compare compareValue(int32_t,int32_t );
float calculateEnergy(float[]);

#endif /* INC_APP_H_ */
