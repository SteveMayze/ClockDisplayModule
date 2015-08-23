EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:clockModuleSymbols
LIBS:ClockDisplayModule-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Clock display module"
Date ""
Rev "1.0"
Comp "Micro based, small display"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R101
U 1 1 5575BA42
P 6450 4450
F 0 "R101" V 6530 4450 50  0000 C CNN
F 1 "10K" V 6450 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6380 4450 30  0001 C CNN
F 3 "" H 6450 4450 30  0000 C CNN
	1    6450 4450
	0    1    1    0   
$EndComp
$Comp
L C C101
U 1 1 5575BAA8
P 3650 3550
F 0 "C101" H 3675 3650 50  0000 L CNN
F 1 "0.1u" H 3675 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3688 3400 30  0001 C CNN
F 3 "" H 3650 3550 60  0000 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
Text GLabel 6050 3300 2    60   Input ~ 0
MOSI
Text GLabel 6050 3200 2    60   Input ~ 0
~SS
Text GLabel 6050 3500 2    60   Input ~ 0
CLK
Text Label 5850 4600 0    60   ~ 0
A
Text Label 5850 4700 0    60   ~ 0
B
Text Label 5850 4800 0    60   ~ 0
C
Text Label 5850 4900 0    60   ~ 0
D
NoConn ~ 5800 5200
Text GLabel 7250 2250 0    60   Input ~ 0
MOSI
Text GLabel 7250 2350 0    60   Input ~ 0
~SS
Text GLabel 7250 2450 0    60   Input ~ 0
CLK
Text GLabel 7250 2650 0    60   Input ~ 0
GND
$Comp
L GND #PWR01
U 1 1 558087E3
P 3450 5350
F 0 "#PWR01" H 3450 5100 50  0001 C CNN
F 1 "GND" H 3450 5200 50  0000 C CNN
F 2 "" H 3450 5350 60  0000 C CNN
F 3 "" H 3450 5350 60  0000 C CNN
	1    3450 5350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 558686BB
P 2800 3000
F 0 "#PWR02" H 2800 2850 50  0001 C CNN
F 1 "VCC" V 2700 3100 50  0000 C CNN
F 2 "" H 2800 3000 60  0000 C CNN
F 3 "" H 2800 3000 60  0000 C CNN
	1    2800 3000
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5586896F
P 6850 2550
F 0 "#PWR03" H 6850 2400 50  0001 C CNN
F 1 "VCC" H 6850 2700 50  0000 C CNN
F 2 "" H 6850 2550 60  0000 C CNN
F 3 "" H 6850 2550 60  0000 C CNN
	1    6850 2550
	0    -1   -1   0   
$EndComp
Text GLabel 6150 4600 2    60   Input ~ 0
A
Text GLabel 6150 4700 2    60   Input ~ 0
B
Text GLabel 6150 4800 2    60   Input ~ 0
C
Text GLabel 6150 4900 2    60   Input ~ 0
D
NoConn ~ 5800 5000
NoConn ~ 5800 5100
Text GLabel 6050 3850 2    60   Input ~ 0
A0
Text GLabel 6050 3950 2    60   Input ~ 0
A1
Text GLabel 6050 4050 2    60   Input ~ 0
A2
$Sheet
S 7300 3900 1400 1800
U 5587144A
F0 "Display Driver" 60
F1 "Display.sch" 60
$EndSheet
Text Notes 6300 3900 0    60   ~ 0
Digits
Text Notes 6350 4750 0    60   ~ 0
Segments
$Comp
L CONN_02X03 P101
U 1 1 5589F70E
P 5900 1850
F 0 "P101" H 5900 2050 50  0000 C CNN
F 1 "CONN_02X03" H 5900 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 5900 650 60  0001 C CNN
F 3 "" H 5900 650 60  0000 C CNN
F 4 "WS6G" H 5900 1850 60  0001 C CNN "MPN"
F 5 " 741435 - 62 " H 5900 1850 60  0001 C CNN "Conrad_PN"
	1    5900 1850
	1    0    0    -1  
$EndComp
Text GLabel 5450 1750 0    60   Input ~ 0
MISO
Text GLabel 5450 1850 0    60   Input ~ 0
CLK
$Comp
L VCC #PWR04
U 1 1 5589F87B
P 6400 1700
F 0 "#PWR04" H 6400 1550 50  0001 C CNN
F 1 "VCC" H 6400 1850 50  0000 C CNN
F 2 "" H 6400 1700 60  0000 C CNN
F 3 "" H 6400 1700 60  0000 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
Text GLabel 6450 1850 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR05
U 1 1 5589F8CC
P 6300 2100
F 0 "#PWR05" H 6300 1850 50  0001 C CNN
F 1 "GND" H 6300 1950 50  0000 C CNN
F 2 "" H 6300 2100 60  0000 C CNN
F 3 "" H 6300 2100 60  0000 C CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
Text GLabel 5450 1950 0    60   Input ~ 0
Reset
$Comp
L CONN_01X05 P102
U 1 1 5575F20D
P 7800 2450
F 0 "P102" H 7800 2750 50  0000 C CNN
F 1 "CONN_01X05" V 7900 2450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 7800 2450 60  0001 C CNN
F 3 "" H 7800 2450 60  0000 C CNN
	1    7800 2450
	1    0    0    -1  
$EndComp
Text GLabel 6050 3400 2    60   Input ~ 0
MISO
$Comp
L ATMEGA88PA-A IC1
U 1 1 55B13D6F
P 4800 4100
F 0 "IC1" H 4050 5350 40  0000 L BNN
F 1 "ATMEGA88PA-A" H 5200 2700 40  0000 L BNN
F 2 "Housings_QFP:LQFP-32_7x7mm_Pitch0.8mm" H 4800 4100 30  0000 C CIN
F 3 "" H 4800 4100 60  0000 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
NoConn ~ 5800 5300
Wire Wire Line
	5800 4600 6150 4600
Wire Wire Line
	5800 4700 6150 4700
Wire Wire Line
	5800 4800 6150 4800
Wire Wire Line
	5800 4900 6150 4900
Wire Wire Line
	7250 2250 7600 2250
Wire Wire Line
	7250 2350 7600 2350
Wire Wire Line
	7250 2450 7600 2450
Wire Wire Line
	6850 2550 7600 2550
Wire Wire Line
	7250 2650 7600 2650
Wire Wire Line
	6050 3850 5800 3850
Wire Wire Line
	6050 3950 5800 3950
Wire Wire Line
	5800 4050 6050 4050
Wire Wire Line
	5800 3500 6050 3500
Wire Wire Line
	5800 3300 6050 3300
Wire Wire Line
	5800 3200 6050 3200
Wire Wire Line
	3900 5100 3450 5100
Wire Wire Line
	3450 5100 3450 5350
Wire Wire Line
	6400 1700 6400 1750
Wire Wire Line
	6400 1750 6150 1750
Wire Wire Line
	6150 1950 6300 1950
Wire Wire Line
	6300 1950 6300 2100
Wire Wire Line
	6150 1850 6450 1850
Wire Wire Line
	5650 1750 5450 1750
Wire Wire Line
	5650 1850 5450 1850
Wire Wire Line
	5450 1950 5650 1950
Wire Wire Line
	5800 3400 6050 3400
Wire Wire Line
	3900 5200 3450 5200
Connection ~ 3450 5200
Wire Wire Line
	3900 5300 3450 5300
Connection ~ 3450 5300
$Comp
L GND #PWR06
U 1 1 5575BBAC
P 3650 3800
F 0 "#PWR06" H 3650 3550 50  0001 C CNN
F 1 "GND" H 3650 3650 50  0000 C CNN
F 2 "" H 3650 3800 60  0000 C CNN
F 3 "" H 3650 3800 60  0000 C CNN
	1    3650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3700 3650 3800
Wire Wire Line
	3800 3000 3800 3300
Wire Wire Line
	3800 3100 3900 3100
Connection ~ 3800 3000
Wire Wire Line
	2800 3000 3900 3000
Wire Wire Line
	3800 3300 3900 3300
Connection ~ 3800 3100
Wire Wire Line
	3650 3400 3650 3000
Connection ~ 3650 3000
NoConn ~ 3900 3600
NoConn ~ 5800 3000
NoConn ~ 5800 3100
NoConn ~ 5800 3600
NoConn ~ 5800 3700
NoConn ~ 3900 4350
NoConn ~ 3900 4450
NoConn ~ 5800 4150
NoConn ~ 5800 4250
NoConn ~ 5800 4350
Wire Wire Line
	6600 4450 6800 4450
Wire Wire Line
	5800 4450 6300 4450
$Comp
L VCC #PWR?
U 1 1 55D84490
P 6800 4450
F 0 "#PWR?" H 6800 4300 50  0001 C CNN
F 1 "VCC" V 6900 4500 50  0000 C CNN
F 2 "" H 6800 4450 60  0000 C CNN
F 3 "" H 6800 4450 60  0000 C CNN
	1    6800 4450
	0    1    1    0   
$EndComp
Text GLabel 6700 4200 2    60   Input ~ 0
Reset
Wire Wire Line
	6700 4200 6200 4200
Wire Wire Line
	6200 4200 6200 4450
Connection ~ 6200 4450
$EndSCHEMATC