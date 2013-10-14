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
LIBS:special
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
LIBS:test-interface-board-cache
LIBS:SPI_flash_test_interface-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "SPI change-over switch"
Date "2 aug 2013"
Rev "Jul 31, 2013"
Comp "GSoC coreboot"
Comment1 "Ayush Sagar (ayush@ieee.org)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 51F73008
P 3100 1600
F 0 "R?" V 3180 1600 40  0000 C CNN
F 1 "10K" V 3107 1601 40  0000 C CNN
F 2 "~" V 3030 1600 30  0000 C CNN
F 3 "~" H 3100 1600 30  0000 C CNN
	1    3100 1600
	0    -1   -1   0   
$EndComp
$Comp
L TXB0104D U?
U 1 1 51F715D6
P 3450 2400
F 0 "U?" H 3850 2850 60  0000 C CNN
F 1 "TXB0104D" H 3150 2850 60  0000 C CNN
F 2 "TSSOP-14" H 3450 2300 60  0000 C CNN
F 3 "" H 3450 2300 60  0000 C CNN
	1    3450 2400
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F7C2DA
P 4600 1750
F 0 "#PWR?" H 4600 1750 30  0001 C CNN
F 1 "GND" H 4600 1680 30  0001 C CNN
F 2 "" H 4600 1750 60  0000 C CNN
F 3 "" H 4600 1750 60  0000 C CNN
	1    4600 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F7C2E9
P 3450 3250
F 0 "#PWR?" H 3450 3250 30  0001 C CNN
F 1 "GND" H 3450 3180 30  0001 C CNN
F 2 "" H 3450 3250 60  0000 C CNN
F 3 "" H 3450 3250 60  0000 C CNN
	1    3450 3250
	1    0    0    -1  
$EndComp
Text Label 2650 1150 0    60   ~ 0
ISO/IO3
$Comp
L R R?
U 1 1 51F7D686
P 4250 1150
F 0 "R?" V 4330 1150 40  0000 C CNN
F 1 "10K" V 4257 1151 40  0000 C CNN
F 2 "~" V 4180 1150 30  0000 C CNN
F 3 "~" H 4250 1150 30  0000 C CNN
	1    4250 1150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 51F7D724
P 3300 1150
F 0 "R?" V 3380 1150 40  0000 C CNN
F 1 "10K" V 3307 1151 40  0000 C CNN
F 2 "~" V 3230 1150 30  0000 C CNN
F 3 "~" H 3300 1150 30  0000 C CNN
	1    3300 1150
	0    -1   -1   0   
$EndComp
$Comp
L 2N7002 Q?
U 1 1 51F7E453
P 3800 1500
F 0 "Q?" H 3800 1351 40  0000 R CNN
F 1 "2N7002" H 3800 1650 40  0000 R CNN
F 2 "SOT23" H 3670 1602 29  0000 C CNN
F 3 "~" H 3800 1500 60  0000 C CNN
	1    3800 1500
	0    -1   1    0   
$EndComp
$Comp
L VCC_P #PWR?
U 1 1 51F84A8E
P 8600 2050
F 0 "#PWR?" H 8600 2150 30  0001 C CNN
F 1 "VCC_P" H 8600 2150 30  0000 C CNN
F 2 "" H 8600 2050 60  0000 C CNN
F 3 "" H 8600 2050 60  0000 C CNN
	1    8600 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F84E8F
P 7450 3250
F 0 "#PWR?" H 7450 3250 30  0001 C CNN
F 1 "GND" H 7450 3180 30  0001 C CNN
F 2 "" H 7450 3250 60  0000 C CNN
F 3 "" H 7450 3250 60  0000 C CNN
	1    7450 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51F866FD
P 4500 2100
F 0 "#PWR?" H 4500 2200 30  0001 C CNN
F 1 "VCC_F" H 4500 2200 30  0000 C CNN
F 2 "" H 4500 2100 60  0000 C CNN
F 3 "" H 4500 2100 60  0000 C CNN
	1    4500 2100
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51F88AA1
P 2650 1500
F 0 "#PWR?" H 2650 1600 30  0001 C CNN
F 1 "VCC_F" H 2650 1600 30  0000 C CNN
F 2 "" H 2650 1500 60  0000 C CNN
F 3 "" H 2650 1500 60  0000 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 51F89034
P 7100 1600
F 0 "R?" V 7180 1600 40  0000 C CNN
F 1 "10K" V 7107 1601 40  0000 C CNN
F 2 "~" V 7030 1600 30  0000 C CNN
F 3 "~" H 7100 1600 30  0000 C CNN
	1    7100 1600
	0    -1   -1   0   
$EndComp
$Comp
L TXB0104D U?
U 1 1 51F8903A
P 7450 2400
F 0 "U?" H 7850 2850 60  0000 C CNN
F 1 "TXB0104D" H 7150 2850 60  0000 C CNN
F 2 "TSSOP-14" H 7450 2300 60  0000 C CNN
F 3 "" H 7450 2300 60  0000 C CNN
	1    7450 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F89040
P 8600 1750
F 0 "#PWR?" H 8600 1750 30  0001 C CNN
F 1 "GND" H 8600 1680 30  0001 C CNN
F 2 "" H 8600 1750 60  0000 C CNN
F 3 "" H 8600 1750 60  0000 C CNN
	1    8600 1750
	1    0    0    -1  
$EndComp
Text Label 7400 1150 0    60   ~ 0
~ISO/IO3
$Comp
L R R?
U 1 1 51F89047
P 8250 1150
F 0 "R?" V 8330 1150 40  0000 C CNN
F 1 "10K" V 8257 1151 40  0000 C CNN
F 2 "~" V 8180 1150 30  0000 C CNN
F 3 "~" H 8250 1150 30  0000 C CNN
	1    8250 1150
	0    -1   -1   0   
$EndComp
$Comp
L 2N7002 Q?
U 1 1 51F89053
P 7800 1500
F 0 "Q?" H 7800 1351 40  0000 R CNN
F 1 "2N7002" H 7800 1650 40  0000 R CNN
F 2 "SOT23" H 7670 1602 29  0000 C CNN
F 3 "~" H 7800 1500 60  0000 C CNN
	1    7800 1500
	0    -1   1    0   
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51F89060
P 6650 1550
F 0 "#PWR?" H 6650 1650 30  0001 C CNN
F 1 "VCC_F" H 6650 1650 30  0000 C CNN
F 2 "" H 6650 1550 60  0000 C CNN
F 3 "" H 6650 1550 60  0000 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q?
U 1 1 51F89BA9
P 7150 5500
F 0 "Q?" H 7150 5351 40  0000 R CNN
F 1 "2N7002" H 7150 5650 40  0000 R CNN
F 2 "SOT23" H 7020 5602 29  0000 C CNN
F 3 "~" H 7150 5500 60  0000 C CNN
	1    7150 5500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 51F89BAF
P 7250 4700
F 0 "R?" V 7330 4700 40  0000 C CNN
F 1 "10K" V 7257 4701 40  0000 C CNN
F 2 "~" V 7180 4700 30  0000 C CNN
F 3 "~" H 7250 4700 30  0000 C CNN
	1    7250 4700
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR?
U 1 1 51F89C44
P 7250 4350
F 0 "#PWR?" H 7250 4450 30  0001 C CNN
F 1 "VCC" H 7250 4450 30  0000 C CNN
F 2 "" H 7250 4350 60  0000 C CNN
F 3 "" H 7250 4350 60  0000 C CNN
	1    7250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F89CD0
P 7250 5850
F 0 "#PWR?" H 7250 5850 30  0001 C CNN
F 1 "GND" H 7250 5780 30  0001 C CNN
F 2 "" H 7250 5850 60  0000 C CNN
F 3 "" H 7250 5850 60  0000 C CNN
	1    7250 5850
	1    0    0    -1  
$EndComp
Text Label 7400 5100 0    60   ~ 0
~ISO/IO3
Text Label 6450 5550 0    60   ~ 0
ISO/IO3
$Comp
L LM317L U?
U 1 1 51F8AC5B
P 3750 4650
F 0 "U?" H 3750 4950 60  0000 C CNN
F 1 "LM317L" H 3800 4350 60  0000 L CNN
F 2 "~" H 3750 4650 60  0000 C CNN
F 3 "~" H 3750 4650 60  0000 C CNN
	1    3750 4650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 51F91394
P 4400 5150
F 0 "R?" V 4480 5150 40  0000 C CNN
F 1 "470" V 4407 5151 40  0000 C CNN
F 2 "~" V 4330 5150 30  0000 C CNN
F 3 "~" H 4400 5150 30  0000 C CNN
	1    4400 5150
	1    0    0    -1  
$EndComp
$Comp
L POT RV?
U 1 1 51F913B2
P 3750 5500
F 0 "RV?" H 3750 5400 50  0000 C CNN
F 1 "10K" H 3750 5500 50  0000 C CNN
F 2 "~" H 3750 5500 60  0000 C CNN
F 3 "~" H 3750 5500 60  0000 C CNN
	1    3750 5500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 51F914CC
P 3200 4850
F 0 "C?" H 3200 4950 40  0000 L CNN
F 1 "0.1u" H 3206 4765 40  0000 L CNN
F 2 "~" H 3238 4700 30  0000 C CNN
F 3 "~" H 3200 4850 60  0000 C CNN
	1    3200 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F914DB
P 3450 5600
F 0 "#PWR?" H 3450 5600 30  0001 C CNN
F 1 "GND" H 3450 5530 30  0001 C CNN
F 2 "" H 3450 5600 60  0000 C CNN
F 3 "" H 3450 5600 60  0000 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F9167A
P 3200 5600
F 0 "#PWR?" H 3200 5600 30  0001 C CNN
F 1 "GND" H 3200 5530 30  0001 C CNN
F 2 "" H 3200 5600 60  0000 C CNN
F 3 "" H 3200 5600 60  0000 C CNN
	1    3200 5600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 51F918A8
P 3200 4350
F 0 "#PWR?" H 3200 4450 30  0001 C CNN
F 1 "VCC" H 3200 4450 30  0000 C CNN
F 2 "" H 3200 4350 60  0000 C CNN
F 3 "" H 3200 4350 60  0000 C CNN
	1    3200 4350
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51F91944
P 4400 4350
F 0 "#PWR?" H 4400 4450 30  0001 C CNN
F 1 "VCC_F" H 4400 4450 30  0000 C CNN
F 2 "" H 4400 4350 60  0000 C CNN
F 3 "" H 4400 4350 60  0000 C CNN
	1    4400 4350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 51F91C09
P 4750 5150
F 0 "C?" H 4750 5250 40  0000 L CNN
F 1 "1u" H 4756 5065 40  0000 L CNN
F 2 "~" H 4788 5000 30  0000 C CNN
F 3 "~" H 4750 5150 60  0000 C CNN
	1    4750 5150
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51F920FA
P 6500 2150
F 0 "#PWR?" H 6500 2250 30  0001 C CNN
F 1 "VCC_F" H 6500 2250 30  0000 C CNN
F 2 "" H 6500 2150 60  0000 C CNN
F 3 "" H 6500 2150 60  0000 C CNN
	1    6500 2150
	1    0    0    -1  
$EndComp
Text Notes 3200 5900 0    60   ~ 0
Adj. Voltage Regulator for SPI flash Vcc\n\nPower supply constrants:\nVCC_F = VCC_M\nVCC_F <= VCC_P\n1.2V < VCC_M < 3.6V\n1.65 < VCC_P < 5.5V
$Comp
L C C?
U 1 1 51F927A9
P 9200 2550
F 0 "C?" H 9200 2650 40  0000 L CNN
F 1 "0.1" H 9206 2465 40  0000 L CNN
F 2 "~" H 9238 2400 30  0000 C CNN
F 3 "~" H 9200 2550 60  0000 C CNN
	1    9200 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 51F927AF
P 9200 2900
F 0 "#PWR?" H 9200 2900 30  0001 C CNN
F 1 "GND" H 9200 2830 30  0001 C CNN
F 2 "" H 9200 2900 60  0000 C CNN
F 3 "" H 9200 2900 60  0000 C CNN
	1    9200 2900
	1    0    0    -1  
$EndComp
Text Notes 750  7300 0    60   ~ 0
_M suffix denotes pins directly connected to motherboard SPI flash socket/foot-print/header.\n_F suffix denotes pins directly connected serial flash IC\n_P suffix denotes pins directly connected to SPI programmer\ne.g. VCC_M is motherboard's VCC supply for SPI chip
Text Notes 2600 3500 0    60   ~ 0
TXB0104D used as a bus-switch \ncontrolled by ISO/IO3.
Text Notes 6550 3500 0    60   ~ 0
TXB0104D used as voltage translator as \nwell as bus switch controlled by ~ISO/IO3.
Wire Wire Line
	1700 2200 2350 2200
Wire Wire Line
	2350 2200 2600 2200
Wire Wire Line
	4300 2200 4500 2200
Wire Wire Line
	4500 2200 4900 2200
Connection ~ 3450 1600
Wire Wire Line
	3350 1600 3450 1600
Wire Wire Line
	3450 1600 3600 1600
Wire Wire Line
	3450 3150 3450 3250
Wire Wire Line
	4600 1150 4600 1600
Wire Wire Line
	4600 1600 4600 1750
Wire Wire Line
	3850 1150 3850 1300
Wire Wire Line
	4000 1600 4600 1600
Wire Wire Line
	2600 2400 2350 2400
Wire Wire Line
	2600 2500 2350 2500
Wire Wire Line
	2600 2600 2350 2600
Wire Wire Line
	2600 2700 2350 2700
Wire Wire Line
	4300 2500 5450 2500
Wire Wire Line
	5450 2500 6600 2500
Wire Wire Line
	4300 2600 5650 2600
Wire Wire Line
	5650 2600 6600 2600
Wire Wire Line
	4300 2700 5850 2700
Wire Wire Line
	5850 2700 6600 2700
Wire Wire Line
	4300 2400 5250 2400
Wire Wire Line
	5250 2400 6600 2400
Wire Wire Line
	8300 2200 8600 2200
Wire Wire Line
	8600 2200 9200 2200
Wire Wire Line
	8300 2500 8550 2500
Wire Wire Line
	8300 2600 8550 2600
Wire Wire Line
	8300 2700 8550 2700
Wire Wire Line
	8600 2200 8600 2050
Wire Wire Line
	7450 3150 7450 3250
Wire Wire Line
	3450 1600 3450 1700
Wire Wire Line
	2850 1600 2650 1600
Wire Wire Line
	4900 2200 4900 2050
Wire Wire Line
	4500 1150 4600 1150
Wire Wire Line
	3550 1150 3850 1150
Wire Wire Line
	3850 1150 4000 1150
Connection ~ 3850 1150
Wire Wire Line
	3050 1150 2650 1150
Connection ~ 4600 1600
Wire Wire Line
	2650 1600 2650 1500
Connection ~ 7450 1600
Wire Wire Line
	7350 1600 7450 1600
Wire Wire Line
	7450 1600 7600 1600
Wire Wire Line
	8600 1150 8600 1600
Wire Wire Line
	8600 1600 8600 1750
Wire Wire Line
	7850 1150 7850 1300
Wire Wire Line
	8000 1600 8600 1600
Wire Wire Line
	7450 1600 7450 1700
Wire Wire Line
	6850 1600 6650 1600
Wire Wire Line
	8500 1150 8600 1150
Wire Wire Line
	7400 1150 7850 1150
Wire Wire Line
	7850 1150 8000 1150
Connection ~ 7850 1150
Connection ~ 8600 1600
Wire Wire Line
	6650 1600 6650 1550
Wire Wire Line
	7250 4950 7250 5100
Wire Wire Line
	7250 5100 7250 5300
Wire Wire Line
	7250 4450 7250 4350
Wire Wire Line
	7250 5700 7250 5850
Wire Wire Line
	7250 5100 7750 5100
Connection ~ 7250 5100
Wire Wire Line
	6950 5550 6300 5550
Wire Wire Line
	4150 4500 4400 4500
Wire Wire Line
	4400 4600 4150 4600
Wire Wire Line
	4400 4700 4150 4700
Connection ~ 4400 4600
Wire Wire Line
	4150 4800 4400 4800
Wire Wire Line
	4400 4800 4750 4800
Connection ~ 4400 4700
Wire Wire Line
	3350 4500 3200 4500
Wire Wire Line
	3200 4350 3200 4500
Wire Wire Line
	3200 4500 3200 4650
Wire Wire Line
	3200 5050 3200 5600
Connection ~ 3200 4500
Connection ~ 4400 4500
Wire Wire Line
	4750 4800 4750 4950
Connection ~ 4400 4800
Wire Wire Line
	6150 2200 6500 2200
Wire Wire Line
	6500 2200 6600 2200
Wire Wire Line
	6500 2200 6500 2150
Wire Wire Line
	9200 2750 9200 2900
Wire Wire Line
	9200 2200 9200 2350
Wire Wire Line
	3750 5000 3750 5350
Wire Wire Line
	3500 5500 3450 5500
Wire Wire Line
	3450 5500 3450 5600
Wire Wire Line
	4400 5500 4000 5500
$Comp
L GND #PWR?
U 1 1 51FB0FE7
P 4750 5600
F 0 "#PWR?" H 4750 5600 30  0001 C CNN
F 1 "GND" H 4750 5530 30  0001 C CNN
F 2 "" H 4750 5600 60  0000 C CNN
F 3 "" H 4750 5600 60  0000 C CNN
	1    4750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5350 4750 5600
Wire Wire Line
	4400 4350 4400 4500
Wire Wire Line
	4400 4500 4400 4600
Wire Wire Line
	4400 4600 4400 4700
Wire Wire Line
	4400 4700 4400 4800
Wire Wire Line
	4400 4800 4400 4900
Wire Wire Line
	4400 5400 4400 5500
Text HLabel 2350 2400 0    60   Input ~ 0
MOSI_M
Text HLabel 2350 2500 0    60   Output ~ 0
MISO_M
Text HLabel 2350 2600 0    60   Input ~ 0
CLK_M
Text HLabel 2350 2700 0    60   Input ~ 0
~CS_M
Text HLabel 6300 5550 0    60   Input ~ 0
ISO/IO3
Text HLabel 5250 2250 1    60   Output ~ 0
MOSI_F
Text HLabel 5450 2250 1    60   Input ~ 0
MISO_F
Text HLabel 5650 2250 1    60   Output ~ 0
CLK_F
Text HLabel 5850 2250 1    60   Output ~ 0
~CS_F
Wire Wire Line
	5250 2250 5250 2400
Connection ~ 5250 2400
Wire Wire Line
	5450 2250 5450 2500
Connection ~ 5450 2500
Wire Wire Line
	5650 2250 5650 2600
Connection ~ 5650 2600
Wire Wire Line
	5850 2250 5850 2700
Connection ~ 5850 2700
$Comp
L C C?
U 1 1 51FB23AE
P 1700 2550
F 0 "C?" H 1700 2650 40  0000 L CNN
F 1 "0.1u" H 1706 2465 40  0000 L CNN
F 2 "~" H 1738 2400 30  0000 C CNN
F 3 "~" H 1700 2550 60  0000 C CNN
	1    1700 2550
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR?
U 1 1 51FB23B4
P 2350 2050
F 0 "#PWR?" H 2350 2150 30  0001 C CNN
F 1 "VCC_F" H 2350 2150 30  0000 C CNN
F 2 "" H 2350 2050 60  0000 C CNN
F 3 "" H 2350 2050 60  0000 C CNN
	1    2350 2050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 51FB25A8
P 4900 1850
F 0 "C?" H 4900 1950 40  0000 L CNN
F 1 "0.1u" H 4906 1765 40  0000 L CNN
F 2 "~" H 4938 1700 30  0000 C CNN
F 3 "~" H 4900 1850 60  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2200 1700 2350
Wire Wire Line
	2350 2050 2350 2200
Connection ~ 2350 2200
$Comp
L GND #PWR?
U 1 1 51FB27A2
P 1700 2900
F 0 "#PWR?" H 1700 2900 30  0001 C CNN
F 1 "GND" H 1700 2830 30  0001 C CNN
F 2 "" H 1700 2900 60  0000 C CNN
F 3 "" H 1700 2900 60  0000 C CNN
	1    1700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2750 1700 2900
Connection ~ 8600 2200
Wire Wire Line
	4500 2050 4500 2200
Connection ~ 4500 2200
$Comp
L GND #PWR?
U 1 1 51FB299A
P 5100 1500
F 0 "#PWR?" H 5100 1500 30  0001 C CNN
F 1 "GND" H 5100 1430 30  0001 C CNN
F 2 "" H 5100 1500 60  0000 C CNN
F 3 "" H 5100 1500 60  0000 C CNN
	1    5100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1300 5100 1300
$Comp
L C C?
U 1 1 51FB2A07
P 6150 1850
F 0 "C?" H 6150 1950 40  0000 L CNN
F 1 "0.1u" H 6156 1765 40  0000 L CNN
F 2 "~" H 6188 1700 30  0000 C CNN
F 3 "~" H 6150 1850 60  0000 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2050 6150 2200
Connection ~ 6500 2200
$Comp
L GND #PWR?
U 1 1 51FB2A75
P 6350 1500
F 0 "#PWR?" H 6350 1500 30  0001 C CNN
F 1 "GND" H 6350 1430 30  0001 C CNN
F 2 "" H 6350 1500 60  0000 C CNN
F 3 "" H 6350 1500 60  0000 C CNN
	1    6350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1650 6150 1300
Wire Wire Line
	6150 1300 6350 1300
Wire Wire Line
	6350 1300 6350 1500
Text HLabel 5450 1650 2    60   Output ~ 0
VCC_F_FBK
Wire Wire Line
	5100 1300 5100 1500
Wire Wire Line
	4900 1300 4900 1650
Wire Wire Line
	5450 1650 5300 1650
Wire Wire Line
	5300 1650 5300 1350
$Comp
L VCC_F #PWR?
U 1 1 51FB2DB1
P 5300 1350
F 0 "#PWR?" H 5300 1450 30  0001 C CNN
F 1 "VCC_F" H 5300 1450 30  0000 C CNN
F 2 "" H 5300 1350 60  0000 C CNN
F 3 "" H 5300 1350 60  0000 C CNN
	1    5300 1350
	1    0    0    -1  
$EndComp
Text HLabel 8550 2400 2    60   Input ~ 0
MOSI_P
Text HLabel 8550 2500 2    60   Output ~ 0
MISO_P
Text HLabel 8550 2600 2    60   Input ~ 0
CLK_P
Text HLabel 8550 2700 2    60   Input ~ 0
~CS_P
Wire Wire Line
	8300 2400 8550 2400
$EndSCHEMATC
