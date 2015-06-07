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
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 7SEGMENTS-CC AFF?
U 1 1 55743C22
P 6100 1250
F 0 "AFF?" H 6100 1800 60  0000 C CNN
F 1 "7SEGMENTS-CC" H 6100 800 60  0000 C CNN
F 2 "" H 6100 1250 60  0000 C CNN
F 3 "" H 6100 1250 60  0000 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS-CC AFF?
U 1 1 55743C76
P 6100 2550
F 0 "AFF?" H 6100 3100 60  0000 C CNN
F 1 "7SEGMENTS-CC" H 6100 2100 60  0000 C CNN
F 2 "" H 6100 2550 60  0000 C CNN
F 3 "" H 6100 2550 60  0000 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS-CC AFF?
U 1 1 55743CA2
P 6100 3950
F 0 "AFF?" H 6100 4500 60  0000 C CNN
F 1 "7SEGMENTS-CC" H 6100 3500 60  0000 C CNN
F 2 "" H 6100 3950 60  0000 C CNN
F 3 "" H 6100 3950 60  0000 C CNN
	1    6100 3950
	1    0    0    -1  
$EndComp
$Comp
L 7SEGMENTS-CC AFF?
U 1 1 55743CD4
P 6100 5250
F 0 "AFF?" H 6100 5800 60  0000 C CNN
F 1 "7SEGMENTS-CC" H 6100 4800 60  0000 C CNN
F 2 "" H 6100 5250 60  0000 C CNN
F 3 "" H 6100 5250 60  0000 C CNN
	1    6100 5250
	1    0    0    -1  
$EndComp
$Comp
L  U?
U 1 1 5574454C
P 3250 3050
F 0 "U?" H 3650 1400 60  0000 C CNN
F 1 "" H 3100 4100 60  0000 C CNN
F 2 "" H 3250 3050 60  0000 C CNN
F 3 "" H 3250 3050 60  0000 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 557445D4
P 2150 2550
F 0 "R?" V 2230 2550 50  0000 C CNN
F 1 "R" V 2150 2550 50  0000 C CNN
F 2 "" V 2080 2550 30  0000 C CNN
F 3 "" H 2150 2550 30  0000 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5574462D
P 1800 2700
F 0 "C?" H 1825 2800 50  0000 L CNN
F 1 "C" H 1825 2600 50  0000 L CNN
F 2 "" H 1838 2550 30  0000 C CNN
F 3 "" H 1800 2700 60  0000 C CNN
	1    1800 2700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55744656
P 1450 2700
F 0 "C?" H 1475 2800 50  0000 L CNN
F 1 "C" H 1475 2600 50  0000 L CNN
F 2 "" H 1488 2550 30  0000 C CNN
F 3 "" H 1450 2700 60  0000 C CNN
	1    1450 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5574501B
P 1450 3150
F 0 "#PWR?" H 1450 2900 50  0001 C CNN
F 1 "GND" H 1450 3000 50  0000 C CNN
F 2 "" H 1450 3150 60  0000 C CNN
F 3 "" H 1450 3150 60  0000 C CNN
	1    1450 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 557450F1
P 3100 5100
F 0 "#PWR?" H 3100 4850 50  0001 C CNN
F 1 "GND" H 3100 4950 50  0000 C CNN
F 2 "" H 3100 5100 60  0000 C CNN
F 3 "" H 3100 5100 60  0000 C CNN
	1    3100 5100
	1    0    0    -1  
$EndComp
Text GLabel 1200 2200 0    60   Input ~ 0
V+
Text Label 3950 2600 0    60   ~ 0
segA
Text Label 3950 2700 0    60   ~ 0
segB
Text Label 3950 2800 0    60   ~ 0
segC
Text Label 3950 2900 0    60   ~ 0
segD
Text Label 3950 3000 0    60   ~ 0
segE
Text Label 3950 3100 0    60   ~ 0
segF
Text Label 3950 3200 0    60   ~ 0
segG
Text Label 3950 3300 0    60   ~ 0
segDP
Entry Wire Line
	4150 2600 4250 2500
Entry Wire Line
	4150 2800 4250 2700
Entry Wire Line
	4150 2900 4250 2800
Entry Wire Line
	4150 3000 4250 2900
Entry Wire Line
	4150 3100 4250 3000
Entry Wire Line
	4150 3200 4250 3100
Entry Wire Line
	4150 3300 4250 3200
Entry Wire Line
	4150 2700 4250 2600
Entry Wire Line
	4300 3800 4400 3900
Entry Wire Line
	4300 3700 4400 3800
Entry Wire Line
	4300 3600 4400 3700
Entry Wire Line
	4300 3500 4400 3600
NoConn ~ 3900 4000
NoConn ~ 3900 4100
NoConn ~ 3900 4200
Entry Wire Line
	7350 900  7450 1000
Text Label 4000 3500 0    60   ~ 0
Dig0
Text Label 4000 3600 0    60   ~ 0
Dig1
Text Label 4000 3700 0    60   ~ 0
Dig2
Text Label 4000 3800 0    60   ~ 0
Dig3
Text Label 7050 900  0    60   ~ 0
Dig0
Entry Wire Line
	7350 2200 7450 2300
Text Label 7100 2200 0    60   ~ 0
Dig1
Entry Wire Line
	7350 3600 7450 3700
Text Label 7100 3600 0    60   ~ 0
Dig2
Entry Wire Line
	7350 4900 7450 5000
Text Label 7100 4900 0    60   ~ 0
Dig3
Wire Wire Line
	1200 2200 2600 2200
Wire Wire Line
	1800 2850 1450 2850
Wire Wire Line
	1450 2850 1450 3150
Wire Wire Line
	2150 2400 2150 2200
Connection ~ 2150 2200
Wire Wire Line
	2150 2700 2150 2900
Wire Wire Line
	2150 2900 2600 2900
Wire Wire Line
	3100 4850 3100 5100
Wire Wire Line
	3400 4850 3400 5000
Wire Wire Line
	3400 5000 3100 5000
Connection ~ 3100 5000
Connection ~ 1450 2200
Wire Wire Line
	6700 800  7000 800 
Wire Wire Line
	6700 2100 7000 2100
Wire Wire Line
	6700 3500 7000 3500
Wire Wire Line
	6700 4800 7000 4800
Wire Wire Line
	6700 900  7350 900 
Connection ~ 7000 900 
Wire Wire Line
	6700 2200 7350 2200
Connection ~ 7000 2200
Wire Wire Line
	6700 3600 7350 3600
Connection ~ 7000 3600
Wire Wire Line
	6700 4900 7350 4900
Connection ~ 7000 4900
Wire Wire Line
	3900 2600 4150 2600
Wire Wire Line
	3900 2700 4150 2700
Wire Wire Line
	3900 2800 4150 2800
Wire Wire Line
	3900 2900 4150 2900
Wire Wire Line
	3900 3000 4150 3000
Wire Wire Line
	3900 3100 4150 3100
Wire Wire Line
	3900 3200 4150 3200
Wire Wire Line
	3900 3300 4150 3300
Wire Wire Line
	3900 3500 4300 3500
Wire Wire Line
	3900 3600 4300 3600
Wire Wire Line
	3900 3700 4300 3700
Wire Wire Line
	3900 3800 4300 3800
Wire Wire Line
	7000 800  7000 900 
Wire Wire Line
	7000 2100 7000 2200
Wire Wire Line
	7000 3500 7000 3600
Wire Wire Line
	7000 4800 7000 4900
Wire Wire Line
	6700 1500 6850 1500
Wire Wire Line
	6850 1500 6850 1850
Wire Wire Line
	6850 1850 5200 1850
Wire Wire Line
	5500 850  5200 850 
Wire Wire Line
	5500 950  5200 950 
Wire Wire Line
	5500 1050 5200 1050
Wire Wire Line
	5500 1150 5200 1150
Wire Wire Line
	5500 1250 5200 1250
Wire Wire Line
	5500 1350 5200 1350
Wire Wire Line
	5500 1450 5200 1450
Wire Wire Line
	5500 2150 5200 2150
Wire Wire Line
	5500 2250 5200 2250
Wire Wire Line
	5500 2350 5200 2350
Wire Wire Line
	5500 2450 5200 2450
Wire Wire Line
	5500 2550 5200 2550
Wire Wire Line
	5500 2650 5200 2650
Wire Wire Line
	5500 2750 5200 2750
Wire Wire Line
	5500 3550 5200 3550
Wire Wire Line
	5500 3650 5200 3650
Wire Wire Line
	5500 3750 5200 3750
Wire Wire Line
	5500 3850 5200 3850
Wire Wire Line
	5500 3950 5200 3950
Wire Wire Line
	5500 4050 5200 4050
Wire Wire Line
	5500 4150 5200 4150
Wire Wire Line
	5500 4850 5200 4850
Wire Wire Line
	5500 4950 5200 4950
Wire Wire Line
	5500 5050 5200 5050
Wire Wire Line
	5500 5150 5200 5150
Wire Wire Line
	5500 5250 5200 5250
Wire Wire Line
	5500 5350 5200 5350
Wire Wire Line
	5500 5450 5200 5450
Entry Wire Line
	5100 5350 5200 5450
Entry Wire Line
	5100 5250 5200 5350
Entry Wire Line
	5100 5150 5200 5250
Entry Wire Line
	5100 5050 5200 5150
Entry Wire Line
	5100 4950 5200 5050
Entry Wire Line
	5100 4850 5200 4950
Entry Wire Line
	5100 4750 5200 4850
Entry Wire Line
	5100 4050 5200 4150
Entry Wire Line
	5100 3950 5200 4050
Entry Wire Line
	5100 3850 5200 3950
Entry Wire Line
	5100 3750 5200 3850
Entry Wire Line
	5100 3650 5200 3750
Entry Wire Line
	5100 3550 5200 3650
Entry Wire Line
	5100 3450 5200 3550
Entry Wire Line
	5100 750  5200 850 
Entry Wire Line
	5100 850  5200 950 
Entry Wire Line
	5100 950  5200 1050
Entry Wire Line
	5100 1050 5200 1150
Entry Wire Line
	5100 1150 5200 1250
Entry Wire Line
	5100 1250 5200 1350
Entry Wire Line
	5100 1350 5200 1450
Entry Wire Line
	5100 2050 5200 2150
Entry Wire Line
	5100 2250 5200 2350
Entry Wire Line
	5100 2350 5200 2450
Entry Wire Line
	5100 2450 5200 2550
Entry Wire Line
	5100 2550 5200 2650
Entry Wire Line
	5100 2650 5200 2750
Wire Wire Line
	6700 2800 6850 2800
Wire Wire Line
	6850 2800 6850 3150
Wire Wire Line
	6850 3150 5200 3150
Wire Wire Line
	6700 4200 6800 4200
Wire Wire Line
	6800 4200 6800 4500
Wire Wire Line
	6800 4500 5200 4500
Wire Wire Line
	6700 5500 6800 5500
Wire Wire Line
	6800 5500 6800 5800
Wire Wire Line
	6800 5800 5200 5800
Entry Wire Line
	5100 5700 5200 5800
Entry Wire Line
	5100 4400 5200 4500
Entry Wire Line
	5100 3050 5200 3150
Entry Wire Line
	5100 1750 5200 1850
Wire Wire Line
	1450 2200 1450 2550
Wire Wire Line
	1800 2550 1800 2200
Connection ~ 1800 2200
Entry Wire Line
	5100 2150 5200 2250
Text Label 5250 850  0    60   ~ 0
segA
Text Label 5250 950  0    60   ~ 0
segB
Text Label 5250 1050 0    60   ~ 0
segC
Text Label 5250 1150 0    60   ~ 0
segD
Text Label 5250 1250 0    60   ~ 0
segE
Text Label 5250 1350 0    60   ~ 0
segF
Text Label 5250 1450 0    60   ~ 0
segG
Text Label 5250 1850 0    60   ~ 0
segDP
Text Label 5250 2150 0    60   ~ 0
segA
Text Label 5250 3550 0    60   ~ 0
segA
Text Label 5250 4850 0    60   ~ 0
segA
Text Label 5250 2250 0    60   ~ 0
segB
Text Label 5250 3650 0    60   ~ 0
segB
Text Label 5250 4950 0    60   ~ 0
segB
Text Label 5250 2350 0    60   ~ 0
segC
Text Label 5250 3750 0    60   ~ 0
segC
Text Label 5250 5050 0    60   ~ 0
segC
Text Label 5250 2450 0    60   ~ 0
segD
Text Label 5250 3850 0    60   ~ 0
segD
Text Label 5250 5150 0    60   ~ 0
segD
Text Label 5250 2550 0    60   ~ 0
segE
Text Label 5250 3950 0    60   ~ 0
segE
Text Label 5250 5250 0    60   ~ 0
segE
Text Label 5250 2650 0    60   ~ 0
segF
Text Label 5250 4050 0    60   ~ 0
segF
Text Label 5250 5350 0    60   ~ 0
segF
Text Label 5250 2750 0    60   ~ 0
segG
Text Label 5250 4150 0    60   ~ 0
segG
Text Label 5250 5450 0    60   ~ 0
segG
Text Label 5250 3150 0    60   ~ 0
segDP
Text Label 5250 4500 0    60   ~ 0
segDP
Text Label 5250 5800 0    60   ~ 0
segDP
$Comp
L LED D?
U 1 1 5574821A
P 5300 6100
F 0 "D?" H 5300 6200 50  0000 C CNN
F 1 "LED" H 5300 6000 50  0000 C CNN
F 2 "" H 5300 6100 60  0000 C CNN
F 3 "" H 5300 6100 60  0000 C CNN
	1    5300 6100
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 557482D0
P 5300 6400
F 0 "D?" H 5300 6500 50  0000 C CNN
F 1 "LED" H 5300 6300 50  0000 C CNN
F 2 "" H 5300 6400 60  0000 C CNN
F 3 "" H 5300 6400 60  0000 C CNN
	1    5300 6400
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 557482FC
P 5300 6750
F 0 "D?" H 5300 6850 50  0000 C CNN
F 1 "LED" H 5300 6650 50  0000 C CNN
F 2 "" H 5300 6750 60  0000 C CNN
F 3 "" H 5300 6750 60  0000 C CNN
	1    5300 6750
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 55748324
P 5300 7050
F 0 "D?" H 5300 7150 50  0000 C CNN
F 1 "LED" H 5300 6950 50  0000 C CNN
F 2 "" H 5300 7050 60  0000 C CNN
F 3 "" H 5300 7050 60  0000 C CNN
	1    5300 7050
	-1   0    0    1   
$EndComp
Wire Bus Line
	4400 3600 4400 5900
Wire Bus Line
	4400 5900 7450 5900
Wire Bus Line
	7450 5900 7450 1000
Wire Bus Line
	4250 3200 4250 700 
Wire Bus Line
	4250 700  5100 700 
Wire Bus Line
	5100 700  5100 5700
$EndSCHEMATC
