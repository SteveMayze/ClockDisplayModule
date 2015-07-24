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
P 2100 2200
F 0 "R101" V 2180 2200 50  0000 C CNN
F 1 "10K" V 2100 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 2200 30  0001 C CNN
F 3 "" H 2100 2200 30  0000 C CNN
	1    2100 2200
	0    1    1    0   
$EndComp
$Comp
L C C101
U 1 1 5575BAA8
P 2600 2750
F 0 "C101" H 2625 2850 50  0000 L CNN
F 1 "0.1u" H 2625 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2638 2600 30  0001 C CNN
F 3 "" H 2600 2750 60  0000 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
Text GLabel 5000 2500 2    60   Input ~ 0
MOSI
Text GLabel 5000 2400 2    60   Input ~ 0
~SS
Text GLabel 5000 2700 2    60   Input ~ 0
CLK
Text Label 4800 3800 0    60   ~ 0
A
Text Label 4800 3900 0    60   ~ 0
B
Text Label 4800 4000 0    60   ~ 0
C
Text Label 4800 4100 0    60   ~ 0
D
NoConn ~ 4750 4400
Text GLabel 6200 1450 0    60   Input ~ 0
MOSI
Text GLabel 6200 1550 0    60   Input ~ 0
~SS
Text GLabel 6200 1650 0    60   Input ~ 0
CLK
Text GLabel 6200 1850 0    60   Input ~ 0
GND
$Comp
L GND #PWR01
U 1 1 558087E3
P 2400 4550
F 0 "#PWR01" H 2400 4300 50  0001 C CNN
F 1 "GND" H 2400 4400 50  0000 C CNN
F 2 "" H 2400 4550 60  0000 C CNN
F 3 "" H 2400 4550 60  0000 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 558686BB
P 1750 2200
F 0 "#PWR02" H 1750 2050 50  0001 C CNN
F 1 "VCC" H 1750 2350 50  0000 C CNN
F 2 "" H 1750 2200 60  0000 C CNN
F 3 "" H 1750 2200 60  0000 C CNN
	1    1750 2200
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR03
U 1 1 5586896F
P 5800 1750
F 0 "#PWR03" H 5800 1600 50  0001 C CNN
F 1 "VCC" H 5800 1900 50  0000 C CNN
F 2 "" H 5800 1750 60  0000 C CNN
F 3 "" H 5800 1750 60  0000 C CNN
	1    5800 1750
	0    -1   -1   0   
$EndComp
Text GLabel 5100 3800 2    60   Input ~ 0
A
Text GLabel 5100 3900 2    60   Input ~ 0
B
Text GLabel 5100 4000 2    60   Input ~ 0
C
Text GLabel 5100 4100 2    60   Input ~ 0
D
NoConn ~ 4750 4200
NoConn ~ 4750 4300
Text GLabel 5000 3050 2    60   Input ~ 0
A0
Text GLabel 5000 3150 2    60   Input ~ 0
A1
Text GLabel 5000 3250 2    60   Input ~ 0
A2
$Sheet
S 6250 3100 1400 1800
U 5587144A
F0 "Display Driver" 60
F1 "Display.sch" 60
$EndSheet
Text Notes 5250 3100 0    60   ~ 0
Digits
Text Notes 5350 3800 0    60   ~ 0
Segments
$Comp
L CONN_02X03 P101
U 1 1 5589F70E
P 4850 1050
F 0 "P101" H 4850 1250 50  0000 C CNN
F 1 "CONN_02X03" H 4850 850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 4850 -150 60  0001 C CNN
F 3 "" H 4850 -150 60  0000 C CNN
F 4 "WS6G" H 4850 1050 60  0001 C CNN "MPN"
F 5 " 741435 - 62 " H 4850 1050 60  0001 C CNN "Conrad_PN"
	1    4850 1050
	1    0    0    -1  
$EndComp
Text GLabel 4400 950  0    60   Input ~ 0
MISO
Text GLabel 4400 1050 0    60   Input ~ 0
CLK
$Comp
L VCC #PWR04
U 1 1 5589F87B
P 5350 900
F 0 "#PWR04" H 5350 750 50  0001 C CNN
F 1 "VCC" H 5350 1050 50  0000 C CNN
F 2 "" H 5350 900 60  0000 C CNN
F 3 "" H 5350 900 60  0000 C CNN
	1    5350 900 
	1    0    0    -1  
$EndComp
Text GLabel 5400 1050 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR05
U 1 1 5589F8CC
P 5250 1300
F 0 "#PWR05" H 5250 1050 50  0001 C CNN
F 1 "GND" H 5250 1150 50  0000 C CNN
F 2 "" H 5250 1300 60  0000 C CNN
F 3 "" H 5250 1300 60  0000 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
Text GLabel 4400 1150 0    60   Input ~ 0
Reset
Text GLabel 2350 1800 1    60   Input ~ 0
Reset
$Comp
L CONN_01X05 P102
U 1 1 5575F20D
P 6750 1650
F 0 "P102" H 6750 1950 50  0000 C CNN
F 1 "CONN_01X05" V 6850 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 6750 1650 60  0001 C CNN
F 3 "" H 6750 1650 60  0000 C CNN
	1    6750 1650
	1    0    0    -1  
$EndComp
Text GLabel 5000 2600 2    60   Input ~ 0
MISO
$Comp
L ATMEGA88PA-A IC1
U 1 1 55B13D6F
P 3750 3300
F 0 "IC1" H 3000 4550 40  0000 L BNN
F 1 "ATMEGA88PA-A" H 4150 1900 40  0000 L BNN
F 2 "Housings_QFP:LQFP-32_7x7mm_Pitch0.8mm" H 3750 3300 30  0000 C CIN
F 3 "" H 3750 3300 60  0000 C CNN
	1    3750 3300
	1    0    0    -1  
$EndComp
NoConn ~ 4750 4500
Wire Wire Line
	4750 3800 5100 3800
Wire Wire Line
	4750 3900 5100 3900
Wire Wire Line
	4750 4000 5100 4000
Wire Wire Line
	4750 4100 5100 4100
Wire Wire Line
	6200 1450 6550 1450
Wire Wire Line
	6200 1550 6550 1550
Wire Wire Line
	6200 1650 6550 1650
Wire Wire Line
	5800 1750 6550 1750
Wire Wire Line
	6200 1850 6550 1850
Wire Wire Line
	5000 3050 4750 3050
Wire Wire Line
	5000 3150 4750 3150
Wire Wire Line
	4750 3250 5000 3250
Wire Wire Line
	4750 2700 5000 2700
Wire Wire Line
	4750 2500 5000 2500
Wire Wire Line
	4750 2400 5000 2400
Wire Wire Line
	2850 4300 2400 4300
Wire Wire Line
	2400 4300 2400 4550
Wire Wire Line
	5350 900  5350 950 
Wire Wire Line
	5350 950  5100 950 
Wire Wire Line
	5100 1150 5250 1150
Wire Wire Line
	5250 1150 5250 1300
Wire Wire Line
	5100 1050 5400 1050
Wire Wire Line
	4600 950  4400 950 
Wire Wire Line
	4600 1050 4400 1050
Wire Wire Line
	4400 1150 4600 1150
Wire Wire Line
	4750 2600 5000 2600
Wire Wire Line
	2850 4400 2400 4400
Connection ~ 2400 4400
Wire Wire Line
	2850 4500 2400 4500
Connection ~ 2400 4500
$Comp
L GND #PWR06
U 1 1 5575BBAC
P 2600 3000
F 0 "#PWR06" H 2600 2750 50  0001 C CNN
F 1 "GND" H 2600 2850 50  0000 C CNN
F 2 "" H 2600 3000 60  0000 C CNN
F 3 "" H 2600 3000 60  0000 C CNN
	1    2600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2900 2600 3000
Wire Wire Line
	2750 2200 2750 2500
Wire Wire Line
	2750 2300 2850 2300
Connection ~ 2750 2200
Wire Wire Line
	1750 2200 1950 2200
Wire Wire Line
	2250 2200 2850 2200
Wire Wire Line
	2750 2500 2850 2500
Connection ~ 2750 2300
Wire Wire Line
	2600 2600 2600 2200
Connection ~ 2600 2200
Wire Wire Line
	2350 1800 2350 2200
Connection ~ 2350 2200
NoConn ~ 2850 2800
NoConn ~ 4750 2200
NoConn ~ 4750 2300
NoConn ~ 4750 2800
NoConn ~ 4750 2900
NoConn ~ 2850 3550
NoConn ~ 2850 3650
NoConn ~ 4750 3350
NoConn ~ 4750 3450
NoConn ~ 4750 3550
NoConn ~ 4750 3650
NoConn ~ 1150 1550
$EndSCHEMATC
