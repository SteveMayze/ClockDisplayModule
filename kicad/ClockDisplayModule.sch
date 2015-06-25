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
P 2600 1650
F 0 "R101" V 2680 1650 50  0000 C CNN
F 1 "10K" V 2600 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2530 1650 30  0001 C CNN
F 3 "" H 2600 1650 30  0000 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 5575BAA8
P 3300 1600
F 0 "C101" H 3325 1700 50  0000 L CNN
F 1 "0.1u" H 3325 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 1450 30  0001 C CNN
F 3 "" H 3300 1600 60  0000 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5575BBAC
P 3300 1850
F 0 "#PWR01" H 3300 1600 50  0001 C CNN
F 1 "GND" H 3300 1700 50  0000 C CNN
F 2 "" H 3300 1850 60  0000 C CNN
F 3 "" H 3300 1850 60  0000 C CNN
	1    3300 1850
	1    0    0    -1  
$EndComp
Text GLabel 5000 2600 2    60   Input ~ 0
MOSI
Text GLabel 5000 2500 2    60   Input ~ 0
~SS
Text GLabel 5000 2800 2    60   Input ~ 0
CLK
Text Label 4800 3700 0    60   ~ 0
A
Text Label 4800 3800 0    60   ~ 0
B
Text Label 4800 3900 0    60   ~ 0
C
Text Label 4800 4000 0    60   ~ 0
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
Wire Wire Line
	4750 3700 5100 3700
Wire Wire Line
	4750 3800 5100 3800
Wire Wire Line
	4750 3900 5100 3900
Wire Wire Line
	4750 4000 5100 4000
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
	5000 3000 4750 3000
Wire Wire Line
	5000 3100 4750 3100
Wire Wire Line
	4750 3200 5000 3200
$Comp
L ATMEGA8-P IC101
U 1 1 5580770E
P 3750 3400
F 0 "IC101" H 3000 4700 40  0000 L BNN
F 1 "ATMEGA8-P" H 4250 1950 40  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3750 3400 30  0001 C CIN
F 3 "" H 3750 3400 60  0000 C CNN
F 4 "ATMEGA88PV-10AUR" H 3750 3400 60  0001 C CNN "MPN"
	1    3750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2800 5000 2800
Wire Wire Line
	4750 2600 5000 2600
Wire Wire Line
	4750 2500 5000 2500
Wire Wire Line
	2600 1800 2600 2300
Wire Wire Line
	2600 2300 2850 2300
Wire Wire Line
	2150 1200 3750 1200
Wire Wire Line
	3750 1200 3750 2000
Wire Wire Line
	3300 1200 3300 1450
Connection ~ 3300 1200
Wire Wire Line
	3300 1750 3300 1850
Wire Wire Line
	2600 1500 2600 1200
Connection ~ 2600 1200
$Comp
L GND #PWR02
U 1 1 558085AA
P 3750 5150
F 0 "#PWR02" H 3750 4900 50  0001 C CNN
F 1 "GND" H 3750 5000 50  0000 C CNN
F 2 "" H 3750 5150 60  0000 C CNN
F 3 "" H 3750 5150 60  0000 C CNN
	1    3750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4900 3750 5150
NoConn ~ 2850 3200
NoConn ~ 2850 3000
NoConn ~ 4750 2400
NoConn ~ 4750 2300
$Comp
L GND #PWR03
U 1 1 558087E3
P 2400 2950
F 0 "#PWR03" H 2400 2700 50  0001 C CNN
F 1 "GND" H 2400 2800 50  0000 C CNN
F 2 "" H 2400 2950 60  0000 C CNN
F 3 "" H 2400 2950 60  0000 C CNN
	1    2400 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2700 2400 2700
Wire Wire Line
	2400 2700 2400 2950
Wire Wire Line
	2850 2500 2350 2500
Wire Wire Line
	2350 2500 2350 1200
Connection ~ 2350 1200
$Comp
L VCC #PWR04
U 1 1 558686BB
P 2150 1100
F 0 "#PWR04" H 2150 950 50  0001 C CNN
F 1 "VCC" H 2150 1250 50  0000 C CNN
F 2 "" H 2150 1100 60  0000 C CNN
F 3 "" H 2150 1100 60  0000 C CNN
	1    2150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1200 2150 1100
$Comp
L VCC #PWR05
U 1 1 5586896F
P 5800 1750
F 0 "#PWR05" H 5800 1600 50  0001 C CNN
F 1 "VCC" H 5800 1900 50  0000 C CNN
F 2 "" H 5800 1750 60  0000 C CNN
F 3 "" H 5800 1750 60  0000 C CNN
	1    5800 1750
	0    -1   -1   0   
$EndComp
Text GLabel 5100 3700 2    60   Input ~ 0
A
Text GLabel 5100 3800 2    60   Input ~ 0
B
Text GLabel 5100 3900 2    60   Input ~ 0
C
Text GLabel 5100 4000 2    60   Input ~ 0
D
NoConn ~ 4750 4100
NoConn ~ 4750 4200
NoConn ~ 4750 4300
Text GLabel 5000 3000 2    60   Input ~ 0
A0
Text GLabel 5000 3100 2    60   Input ~ 0
A1
Text GLabel 5000 3200 2    60   Input ~ 0
A2
$Sheet
S 6250 3100 1400 1800
U 5587144A
F0 "Display Driver" 60
F1 "Display.sch" 60
$EndSheet
Text Notes 5350 3050 0    60   ~ 0
Digits
Text Notes 5350 3700 0    60   ~ 0
Segments
NoConn ~ 4750 3300
NoConn ~ 4750 3400
NoConn ~ 4750 3500
NoConn ~ 2850 2600
$Comp
L CONN_02X03 P101
U 1 1 5589F70E
P 4850 1050
F 0 "P101" H 4850 1250 50  0000 C CNN
F 1 "CONN_02X03" H 4850 850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 4850 -150 60  0001 C CNN
F 3 "" H 4850 -150 60  0000 C CNN
F 4 "WS6G" H 4850 1050 60  0001 C CNN "MPN"
	1    4850 1050
	1    0    0    -1  
$EndComp
Text GLabel 4400 950  0    60   Input ~ 0
MISO
Text GLabel 4400 1050 0    60   Input ~ 0
CLK
$Comp
L VCC #PWR06
U 1 1 5589F87B
P 5350 900
F 0 "#PWR06" H 5350 750 50  0001 C CNN
F 1 "VCC" H 5350 1050 50  0000 C CNN
F 2 "" H 5350 900 60  0000 C CNN
F 3 "" H 5350 900 60  0000 C CNN
	1    5350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 900  5350 950 
Wire Wire Line
	5350 950  5100 950 
Text GLabel 5400 1050 2    60   Input ~ 0
MOSI
$Comp
L GND #PWR07
U 1 1 5589F8CC
P 5250 1300
F 0 "#PWR07" H 5250 1050 50  0001 C CNN
F 1 "GND" H 5250 1150 50  0000 C CNN
F 2 "" H 5250 1300 60  0000 C CNN
F 3 "" H 5250 1300 60  0000 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
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
Text GLabel 4400 1150 0    60   Input ~ 0
Reset
Wire Wire Line
	4400 1150 4600 1150
Text GLabel 2750 1900 2    60   Input ~ 0
Reset
Wire Wire Line
	2750 1900 2600 1900
Connection ~ 2600 1900
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
Text GLabel 5000 2700 2    60   Input ~ 0
MISO
Wire Wire Line
	4750 2700 5000 2700
$EndSCHEMATC
