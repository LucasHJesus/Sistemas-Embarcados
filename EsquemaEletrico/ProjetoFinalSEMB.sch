EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Projeto Final Sistemas Embarcados"
Date "2023-05-24"
Rev ""
Comp "Universidade Federal de Uberlândia"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F4:STM32F411CEUx MIcrocontroler
U 1 1 646ECE92
P 2650 2950
F 0 "MIcrocontroler" H 2600 4631 50  0000 C CNN
F 1 "STM32F411CEUx" H 2600 4540 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 2050 1450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO-252 LM317VoltageRegulator
U 1 1 646F8BD2
P 1650 6300
F 0 "LM317VoltageRegulator" H 1650 6542 50  0000 C CNN
F 1 "LM317_TO-252" H 1650 6451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1650 6550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs774n/snvs774n.pdf" H 1650 6300 50  0001 C CNN
	1    1650 6300
	1    0    0    -1  
$EndComp
$Comp
L SSD1306-128x64_OLED:SSD1306 DisplayOLED
U 1 1 647271A3
P 5500 2500
F 0 "DisplayOLED" V 5085 2558 50  0000 C CNN
F 1 "SSD1306" V 5176 2558 50  0000 C CNN
F 2 "Footprints:128x64OLED" V 5177 2558 50  0001 C CNN
F 3 "" H 5500 2750 50  0001 C CNN
	1    5500 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6472D6A7
P 2150 6500
F 0 "R?" H 2220 6546 50  0000 L CNN
F 1 "240R" H 2220 6455 50  0000 L CNN
F 2 "" V 2080 6500 50  0001 C CNN
F 3 "~" H 2150 6500 50  0001 C CNN
	1    2150 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 64730076
P 2500 6750
F 0 "C?" H 2615 6796 50  0000 L CNN
F 1 "1uF" H 2615 6705 50  0000 L CNN
F 2 "" H 2500 6750 50  0001 C CNN
F 3 "~" H 2500 6750 50  0001 C CNN
	1    2500 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C?
U 1 1 64730C58
P 1150 6750
F 0 "C?" H 1265 6796 50  0000 L CNN
F 1 "0.1uF" H 1265 6705 50  0000 L CNN
F 2 "" H 1150 6750 50  0001 C CNN
F 3 "~" H 1150 6750 50  0001 C CNN
	1    1150 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6300 1150 6300
Wire Wire Line
	1150 6300 1150 6600
Wire Wire Line
	2150 6300 1950 6300
Wire Wire Line
	1650 6600 1650 6700
Wire Wire Line
	1650 7200 1150 7200
Wire Wire Line
	1150 7200 1150 6900
Wire Wire Line
	1650 7200 2500 7200
Wire Wire Line
	2500 7200 2500 6900
Connection ~ 1650 7200
Wire Wire Line
	2500 6600 2500 6300
Wire Wire Line
	2150 6650 2150 6700
Wire Wire Line
	2150 6700 1650 6700
Connection ~ 1650 6700
Wire Wire Line
	1650 7200 1650 7300
$Comp
L power:GND #PWR?
U 1 1 64734C99
P 1650 7300
F 0 "#PWR?" H 1650 7050 50  0001 C CNN
F 1 "GND" H 1655 7127 50  0000 C CNN
F 2 "" H 1650 7300 50  0001 C CNN
F 3 "" H 1650 7300 50  0001 C CNN
	1    1650 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 7100 1650 7200
$Comp
L Device:R R?
U 1 1 6472E2A8
P 1650 6950
F 0 "R?" H 1720 6996 50  0000 L CNN
F 1 "390R" H 1720 6905 50  0000 L CNN
F 2 "" V 1580 6950 50  0001 C CNN
F 3 "~" H 1650 6950 50  0001 C CNN
	1    1650 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6700 1650 6800
Wire Wire Line
	2150 6300 2150 6350
Wire Wire Line
	2500 6300 2150 6300
Connection ~ 2150 6300
Wire Wire Line
	1150 6300 1000 6300
Connection ~ 1150 6300
Wire Wire Line
	2500 6300 2650 6300
Connection ~ 2500 6300
$Comp
L Connector:Conn_01x03_Male ServoConnector
U 1 1 6475043B
P 8250 2850
F 0 "ServoConnector" H 8358 3131 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8358 3040 50  0000 C CNN
F 2 "" H 8250 2850 50  0001 C CNN
F 3 "~" H 8250 2850 50  0001 C CNN
	1    8250 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6476B02B
P 9550 4600
F 0 "R?" V 9500 4750 50  0000 C CNN
F 1 "22R" V 9550 4600 50  0000 C CNN
F 2 "" V 9480 4600 50  0001 C CNN
F 3 "~" H 9550 4600 50  0001 C CNN
	1    9550 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 6476BE30
P 9550 4700
F 0 "R?" V 9600 4550 50  0000 C CNN
F 1 "22R" V 9550 4700 50  0000 C CNN
F 2 "" V 9480 4700 50  0001 C CNN
F 3 "~" H 9550 4700 50  0001 C CNN
	1    9550 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6476E47F
P 9550 4800
F 0 "R?" V 9600 4650 50  0000 C CNN
F 1 "22R" V 9550 4800 50  0000 C CNN
F 2 "" V 9480 4800 50  0001 C CNN
F 3 "~" H 9550 4800 50  0001 C CNN
	1    9550 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6476F1E4
P 9550 5000
F 0 "R?" V 9600 4850 50  0000 C CNN
F 1 "22R" V 9550 5000 50  0000 C CNN
F 2 "" V 9480 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6477015E
P 9550 5200
F 0 "R?" V 9600 5050 50  0000 C CNN
F 1 "22R" V 9550 5200 50  0000 C CNN
F 2 "" V 9480 5200 50  0001 C CNN
F 3 "~" H 9550 5200 50  0001 C CNN
	1    9550 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 647711AD
P 9550 5300
F 0 "R?" V 9600 5150 50  0000 C CNN
F 1 "22R" V 9550 5300 50  0000 C CNN
F 2 "" V 9480 5300 50  0001 C CNN
F 3 "~" H 9550 5300 50  0001 C CNN
	1    9550 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 5300 9150 5300
Wire Wire Line
	9400 5200 9150 5200
Wire Wire Line
	9400 5000 9150 5000
Wire Wire Line
	9400 4800 9150 4800
Wire Wire Line
	9400 4700 9150 4700
Wire Wire Line
	9150 4600 9400 4600
$Comp
L Connector:Micro_SD_Card_Det MicroSD
U 1 1 6475E96D
P 8250 5000
F 0 "MicroSD" H 8200 5817 50  0000 C CNN
F 1 "Micro_SD_Card_Det" H 8200 5726 50  0000 C CNN
F 2 "" H 10300 5700 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 8250 5100 50  0001 C CNN
	1    8250 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6477AA3D
P 9750 5950
F 0 "C?" H 9865 5996 50  0000 L CNN
F 1 "100nF" H 9865 5905 50  0000 L CNN
F 2 "" H 9788 5800 50  0001 C CNN
F 3 "~" H 9750 5950 50  0001 C CNN
	1    9750 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6477B7A5
P 9350 5950
F 0 "C?" H 9465 5996 50  0000 L CNN
F 1 "10uF" H 9465 5905 50  0000 L CNN
F 2 "" H 9388 5800 50  0001 C CNN
F 3 "~" H 9350 5950 50  0001 C CNN
	1    9350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5750 9750 5800
Wire Wire Line
	9750 6100 9750 6150
Wire Wire Line
	9750 6150 9350 6150
Wire Wire Line
	9350 6150 9350 6100
Wire Wire Line
	9350 6150 9350 6200
Connection ~ 9350 6150
$Comp
L power:GND #PWR?
U 1 1 64783AFE
P 9350 6200
F 0 "#PWR?" H 9350 5950 50  0001 C CNN
F 1 "GND" H 9355 6027 50  0000 C CNN
F 2 "" H 9350 6200 50  0001 C CNN
F 3 "" H 9350 6200 50  0001 C CNN
	1    9350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5750 9750 5750
Wire Wire Line
	9350 5800 9350 5750
Wire Wire Line
	9150 4900 9350 4900
Wire Wire Line
	9350 4900 9350 5750
Connection ~ 9350 5750
$Comp
L power:GND #PWR?
U 1 1 6478B8E8
P 9150 5100
F 0 "#PWR?" H 9150 4850 50  0001 C CNN
F 1 "GND" V 9155 4972 50  0001 R CNN
F 2 "" H 9150 5100 50  0001 C CNN
F 3 "" H 9150 5100 50  0001 C CNN
	1    9150 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9150 5500 9200 5500
Wire Wire Line
	9200 5500 9200 5900
Wire Wire Line
	9200 5900 8650 5900
$Comp
L Connector:Conn_01x04_Male LDRsConnector
U 1 1 647DBBFE
P 9500 2750
F 0 "LDRsConnector" H 9608 3031 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9608 2940 50  0000 C CNN
F 2 "" H 9500 2750 50  0001 C CNN
F 3 "~" H 9500 2750 50  0001 C CNN
	1    9500 2750
	1    0    0    -1  
$EndComp
Connection ~ 9800 5300
Connection ~ 9950 5200
Connection ~ 10100 4800
Connection ~ 10250 4700
Connection ~ 10400 4600
Wire Wire Line
	10400 4600 10800 4600
Wire Wire Line
	10100 4800 10800 4800
Wire Wire Line
	9700 4800 10100 4800
Wire Wire Line
	9800 5300 10800 5300
Wire Wire Line
	9700 5300 9800 5300
Wire Wire Line
	9950 5200 10800 5200
Wire Wire Line
	9700 5200 9950 5200
Wire Wire Line
	10250 4700 10800 4700
Wire Wire Line
	9700 4700 10250 4700
Wire Wire Line
	9700 4600 10400 4600
Wire Wire Line
	9700 5000 10800 5000
$Comp
L Device:R R?
U 1 1 6478DF80
P 9800 4300
F 0 "R?" V 9750 4400 50  0000 L CNN
F 1 "4.7K" V 9800 4200 50  0000 L CNN
F 2 "" V 9730 4300 50  0001 C CNN
F 3 "~" H 9800 4300 50  0001 C CNN
	1    9800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4150 9800 3950
Wire Wire Line
	9800 4450 9800 5300
$Comp
L Device:R R?
U 1 1 64790838
P 9950 4300
F 0 "R?" V 9900 4400 50  0000 L CNN
F 1 "4.7K" V 9950 4200 50  0000 L CNN
F 2 "" V 9880 4300 50  0001 C CNN
F 3 "~" H 9950 4300 50  0001 C CNN
	1    9950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4150 9950 3950
Wire Wire Line
	9950 5200 9950 4450
$Comp
L Device:R R?
U 1 1 64790AEB
P 10100 4300
F 0 "R?" V 10050 4400 50  0000 L CNN
F 1 "4.7K" V 10100 4200 50  0000 L CNN
F 2 "" V 10030 4300 50  0001 C CNN
F 3 "~" H 10100 4300 50  0001 C CNN
	1    10100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4150 10100 3950
Wire Wire Line
	10100 4450 10100 4800
Wire Wire Line
	9950 3950 10100 3950
Connection ~ 9950 3950
Wire Wire Line
	10100 3950 10250 3950
Connection ~ 10100 3950
Wire Wire Line
	10250 3950 10400 3950
Connection ~ 10250 3950
Wire Wire Line
	10250 4150 10250 3950
Wire Wire Line
	10400 3950 10400 4150
Wire Wire Line
	9800 3950 9950 3950
Wire Wire Line
	10400 4600 10400 4450
Wire Wire Line
	10250 4700 10250 4450
$Comp
L Device:R R?
U 1 1 64790CFA
P 10400 4300
F 0 "R?" V 10350 4400 50  0000 L CNN
F 1 "4.7K" V 10400 4200 50  0000 L CNN
F 2 "" V 10330 4300 50  0001 C CNN
F 3 "~" H 10400 4300 50  0001 C CNN
	1    10400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64790B66
P 10250 4300
F 0 "R?" V 10200 4400 50  0000 L CNN
F 1 "4.7K" V 10250 4200 50  0000 L CNN
F 2 "" V 10180 4300 50  0001 C CNN
F 3 "~" H 10250 4300 50  0001 C CNN
	1    10250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3950 10100 3850
Text GLabel 1000 6300 0    50   Input ~ 0
9V
Text GLabel 2650 6300 2    50   Output ~ 0
3.3V
Text GLabel 10100 3850 1    50   Input ~ 0
3.3V
Text GLabel 8700 2750 2    50   Input ~ 0
3.3V
Wire Wire Line
	8450 2750 8700 2750
Wire Wire Line
	8450 2850 8700 2850
Wire Wire Line
	9700 2650 9950 2650
Wire Wire Line
	9700 2750 9950 2750
Wire Wire Line
	9700 2850 9950 2850
Wire Wire Line
	9700 2950 9950 2950
Text GLabel 8700 2850 2    50   Input ~ 0
PWM
Text GLabel 9950 2650 2    50   Output ~ 0
LDR_pin1
Text GLabel 9950 2850 2    50   Output ~ 0
LDR_pin2
Text GLabel 9950 2750 2    50   Input ~ 0
power_supply
Text GLabel 9950 2950 2    50   Input ~ 0
power_supply
$Comp
L Device:R R?
U 1 1 64828BF1
P 5350 4200
F 0 "R?" H 5420 4246 50  0000 L CNN
F 1 "R" H 5420 4155 50  0000 L CNN
F 2 "" V 5280 4200 50  0001 C CNN
F 3 "~" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 648292FC
P 5350 4700
F 0 "R?" H 5420 4746 50  0000 L CNN
F 1 "R" H 5420 4655 50  0000 L CNN
F 2 "" V 5280 4700 50  0001 C CNN
F 3 "~" H 5350 4700 50  0001 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4350 5350 4450
Wire Wire Line
	5350 4850 5350 4950
Wire Wire Line
	5350 4450 5700 4450
Connection ~ 5350 4450
Wire Wire Line
	5350 4450 5350 4550
Wire Wire Line
	5350 4050 5350 3950
Text GLabel 5700 4450 2    50   Output ~ 0
Analog_input
Wire Wire Line
	5850 2450 6100 2450
Wire Wire Line
	5850 2550 6650 2550
Wire Wire Line
	5850 2650 6450 2650
Text GLabel 6100 2450 2    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR?
U 1 1 6484A00B
P 5850 2350
F 0 "#PWR?" H 5850 2100 50  0001 C CNN
F 1 "GND" V 5855 2222 50  0000 R CNN
F 2 "" H 5850 2350 50  0001 C CNN
F 3 "" H 5850 2350 50  0001 C CNN
	1    5850 2350
	0    -1   -1   0   
$EndComp
Text GLabel 6800 2550 2    50   Input ~ 0
GPIO_output
Text GLabel 6800 2650 2    50   Output ~ 0
GPIO_input
$Comp
L Device:R R?
U 1 1 64851607
P 6450 2250
F 0 "R?" H 6500 2300 50  0000 L CNN
F 1 "4.7K" V 6450 2150 50  0000 L CNN
F 2 "" V 6380 2250 50  0001 C CNN
F 3 "~" H 6450 2250 50  0001 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 64851F7A
P 6650 2250
F 0 "R?" H 6700 2300 50  0000 L CNN
F 1 "4.7K" V 6650 2150 50  0000 L CNN
F 2 "" V 6580 2250 50  0001 C CNN
F 3 "~" H 6650 2250 50  0001 C CNN
	1    6650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2400 6450 2650
Connection ~ 6450 2650
Wire Wire Line
	6450 2650 6800 2650
Wire Wire Line
	6650 2400 6650 2550
Connection ~ 6650 2550
Wire Wire Line
	6650 2550 6800 2550
Wire Wire Line
	6450 2100 6450 1950
Wire Wire Line
	6650 2100 6650 1950
Text GLabel 6450 1950 1    50   Input ~ 0
3.3V
Text GLabel 6650 1950 1    50   Input ~ 0
3.3V
$Comp
L power:GND #PWR?
U 1 1 6486A16B
P 8450 2950
F 0 "#PWR?" H 8450 2700 50  0001 C CNN
F 1 "GND" V 8455 2822 50  0000 R CNN
F 2 "" H 8450 2950 50  0001 C CNN
F 3 "" H 8450 2950 50  0001 C CNN
	1    8450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J?
U 1 1 6486CFA9
P 5350 3750
F 0 "J?" V 5412 3794 50  0000 L CNN
F 1 "Conn_01x01_Male" V 5503 3794 50  0000 L CNN
F 2 "" H 5350 3750 50  0001 C CNN
F 3 "~" H 5350 3750 50  0001 C CNN
	1    5350 3750
	0    1    1    0   
$EndComp
Text GLabel 5350 4950 3    50   Input ~ 0
GND2
$Comp
L Device:Battery_Cell BT?
U 1 1 6486ED93
P 5000 6600
F 0 "BT?" V 4745 6650 50  0000 C CNN
F 1 "Battery_Cell" V 4836 6650 50  0000 C CNN
F 2 "" V 5000 6660 50  0001 C CNN
F 3 "~" V 5000 6660 50  0001 C CNN
	1    5000 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6486FD3E
P 4900 6600
F 0 "#PWR?" H 4900 6350 50  0001 C CNN
F 1 "GND" V 4905 6472 50  0000 R CNN
F 2 "" H 4900 6600 50  0001 C CNN
F 3 "" H 4900 6600 50  0001 C CNN
	1    4900 6600
	0    1    1    0   
$EndComp
Text GLabel 5200 6600 2    50   Output ~ 0
9V
$EndSCHEMATC
