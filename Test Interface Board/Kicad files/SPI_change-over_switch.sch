EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:adc-dac
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:logo
LIBS:memory
LIBS:microchip
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip1
LIBS:microcontrollers
LIBS:motorola
LIBS:msp430
LIBS:nxp_armmcu
LIBS:opto
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:sensors
LIBS:siliconi
LIBS:special
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:xilinx
LIBS:test-interface-board-cache
LIBS:test-interface-board-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "SPI change-over switch"
Date "16 sep 2013"
Rev "28 Aug 2013"
Comp "GSoC coreboot"
Comment1 "Ayush Sagar (ayush@ieee.org)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VCC_P #PWR028
U 1 1 51F84A8E
P 8800 1400
F 0 "#PWR028" H 8800 1500 30  0001 C CNN
F 1 "VCC_P" H 8800 1500 30  0000 C CNN
F 2 "" H 8800 1400 60  0000 C CNN
F 3 "" H 8800 1400 60  0000 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 51F84E8F
P 7700 3100
F 0 "#PWR029" H 7700 3100 30  0001 C CNN
F 1 "GND" H 7700 3030 30  0001 C CNN
F 2 "" H 7700 3100 60  0000 C CNN
F 3 "" H 7700 3100 60  0000 C CNN
	1    7700 3100
	1    0    0    -1  
$EndComp
$Comp
L TXB0104D U2
U 1 1 51F8903A
P 7700 2250
F 0 "U2" H 8100 2700 60  0000 C CNN
F 1 "TXB0104D" H 7400 2700 60  0000 C CNN
F 2 "SOIC-14" H 7350 1700 60  0000 C CNN
F 3 "" H 7700 2150 60  0000 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
$Comp
L LM317L U3
U 1 1 51F8AC5B
P 4800 4600
F 0 "U3" H 4500 4950 60  0000 C CNN
F 1 "LM317L" H 4850 4950 60  0000 L CNN
F 2 "SO8" H 4950 4300 60  0000 C CNN
F 3 "~" H 4800 4600 60  0000 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 51F91394
P 5150 5100
F 0 "R9" V 5230 5100 40  0000 C CNN
F 1 "470R" V 5157 5101 40  0000 C CNN
F 2 "~" V 5080 5100 30  0000 C CNN
F 3 "~" H 5150 5100 30  0000 C CNN
	1    5150 5100
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 51F914CC
P 4250 4800
F 0 "C4" H 4250 4900 40  0000 L CNN
F 1 "1u" H 4256 4715 40  0000 L CNN
F 2 "~" H 4288 4650 30  0000 C CNN
F 3 "~" H 4250 4800 60  0000 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 51F9167A
P 4250 5100
F 0 "#PWR030" H 4250 5100 30  0001 C CNN
F 1 "GND" H 4250 5030 30  0001 C CNN
F 2 "" H 4250 5100 60  0000 C CNN
F 3 "" H 4250 5100 60  0000 C CNN
	1    4250 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC_F #PWR031
U 1 1 51F91944
P 5950 4100
F 0 "#PWR031" H 5950 4200 30  0001 C CNN
F 1 "VCC_F" H 5950 4200 30  0000 C CNN
F 2 "" H 5950 4100 60  0000 C CNN
F 3 "" H 5950 4100 60  0000 C CNN
	1    5950 4100
	1    0    0    -1  
$EndComp
Text Notes 5150 6750 0    60   ~ 0
Adj. voltage regulator \nfor SPI flash power
$Comp
L C C3
U 1 1 51F927A9
P 9100 1750
F 0 "C3" H 9100 1850 40  0000 L CNN
F 1 "0.1u" H 9106 1665 40  0000 L CNN
F 2 "~" H 9138 1600 30  0000 C CNN
F 3 "~" H 9100 1750 60  0000 C CNN
	1    9100 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR032
U 1 1 51F927AF
P 9100 2000
F 0 "#PWR032" H 9100 2000 30  0001 C CNN
F 1 "GND" H 9100 1930 30  0001 C CNN
F 2 "" H 9100 2000 60  0000 C CNN
F 3 "" H 9100 2000 60  0000 C CNN
	1    9100 2000
	1    0    0    -1  
$EndComp
Text Notes 3600 3300 0    60   ~ 0
TXB0104D used as voltage translator \nand bus-switch closed by ~ICP~
Text HLabel 1700 5550 0    60   Input ~ 0
SET_ICP
Text HLabel 5500 3350 3    60   Output ~ 0
MOSI_F
Text HLabel 5650 3350 3    60   Input ~ 0
MISO_F
Text HLabel 5800 3350 3    60   Output ~ 0
CLK_F
Text HLabel 5950 3350 3    60   Output ~ 0
~CS_F~
$Comp
L C C1
U 1 1 51FB2A07
P 6400 1750
F 0 "C1" H 6400 1850 40  0000 L CNN
F 1 "0.1u" H 6406 1665 40  0000 L CNN
F 2 "~" H 6438 1600 30  0000 C CNN
F 3 "~" H 6400 1750 60  0000 C CNN
	1    6400 1750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 51FB2A75
P 6650 1550
F 0 "#PWR033" H 6650 1550 30  0001 C CNN
F 1 "GND" H 6650 1480 30  0001 C CNN
F 2 "" H 6650 1550 60  0000 C CNN
F 3 "" H 6650 1550 60  0000 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
Text HLabel 9600 2250 2    60   Input ~ 0
MOSI_P
Text HLabel 9600 2350 2    60   Output ~ 0
MISO_P
Text HLabel 9600 2450 2    60   Input ~ 0
CLK_P
Text HLabel 9600 2550 2    60   Input ~ 0
~CS_P~
$Comp
L +5V #PWR034
U 1 1 51FD485B
P 4250 4350
F 0 "#PWR034" H 4250 4440 20  0001 C CNN
F 1 "+5V" H 4250 4440 30  0000 C CNN
F 2 "~" H 4250 4350 60  0000 C CNN
F 3 "~" H 4250 4350 60  0000 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
Text Label 7700 1450 1    60   ~ 0
ICP
$Comp
L R R7
U 1 1 520BB4CE
P 2400 4750
F 0 "R7" V 2480 4750 40  0000 C CNN
F 1 "10K" V 2407 4751 40  0000 C CNN
F 2 "~" V 2330 4750 30  0000 C CNN
F 3 "~" H 2400 4750 30  0000 C CNN
	1    2400 4750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 520BB4E4
P 2700 6350
F 0 "#PWR035" H 2700 6350 30  0001 C CNN
F 1 "GND" H 2700 6280 30  0001 C CNN
F 2 "" H 2700 6350 60  0000 C CNN
F 3 "" H 2700 6350 60  0000 C CNN
	1    2700 6350
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 520BC1F9
P 1950 5950
F 0 "R10" V 2030 5950 40  0000 C CNN
F 1 "10K" V 1957 5951 40  0000 C CNN
F 2 "~" V 1880 5950 30  0000 C CNN
F 3 "~" H 1950 5950 30  0000 C CNN
	1    1950 5950
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 JP2
U 1 1 52188A0E
P 5950 5000
F 0 "JP2" V 5900 5250 50  0000 C CNN
F 1 "VCCF SRC" V 6100 5000 40  0000 C CNN
F 2 "" H 5950 5000 60  0000 C CNN
F 3 "" H 5950 5000 60  0000 C CNN
	1    5950 5000
	0    1    1    0   
$EndComp
$Comp
L VCC_M #PWR036
U 1 1 52188C07
P 6050 4500
F 0 "#PWR036" H 6050 4600 30  0001 C CNN
F 1 "VCC_M" H 6150 4550 30  0000 C CNN
F 2 "~" H 6050 4500 60  0000 C CNN
F 3 "~" H 6050 4500 60  0000 C CNN
	1    6050 4500
	1    0    0    -1  
$EndComp
Text Notes 5800 5350 0    60   ~ 0
JP2: Flash Vcc select\n1-2: MBD\n2-3: INT
Text Notes 9450 900  0    60   ~ 0
Power supply constrants:\nVCC_F <= VCC_M\nVCC_F <= VCC_P\n1.2V < VCC_F < 3.6V\n1.65 < VCC_M < 5.5V\n1.65 < VCC_P < 5.5V
$Comp
L GND #PWR037
U 1 1 521E7F59
P 4150 3100
F 0 "#PWR037" H 4150 3100 30  0001 C CNN
F 1 "GND" H 4150 3030 30  0001 C CNN
F 2 "" H 4150 3100 60  0000 C CNN
F 3 "" H 4150 3100 60  0000 C CNN
	1    4150 3100
	-1   0    0    -1  
$EndComp
$Comp
L TXB0104D U1
U 1 1 521E7F65
P 4150 2250
F 0 "U1" H 4550 2700 60  0000 C CNN
F 1 "TXB0104D" H 3850 2700 60  0000 C CNN
F 2 "SOIC-14" H 4450 1700 60  0000 C CNN
F 3 "" H 4150 2150 60  0000 C CNN
	1    4150 2250
	-1   0    0    -1  
$EndComp
Text Notes 7150 3300 0    60   ~ 0
TXB0104D used as voltage translator \nand bus-switch closed by ICP
Text Label 4150 1450 1    60   ~ 0
~ICP~
$Comp
L VCC_F #PWR038
U 1 1 521E8178
P 2700 4350
F 0 "#PWR038" H 2700 4450 30  0001 C CNN
F 1 "VCC_F" H 2700 4450 30  0000 C CNN
F 2 "~" H 2700 4350 60  0000 C CNN
F 3 "~" H 2700 4350 60  0000 C CNN
	1    2700 4350
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 521E8203
P 3000 4750
F 0 "R8" V 3080 4750 40  0000 C CNN
F 1 "10K" V 3007 4751 40  0000 C CNN
F 2 "~" V 2930 4750 30  0000 C CNN
F 3 "~" H 3000 4750 30  0000 C CNN
	1    3000 4750
	-1   0    0    -1  
$EndComp
Text Label 3250 5100 0    60   ~ 0
~ICP~
Text Label 3250 5200 0    60   ~ 0
ICP
$Comp
L VCC_F #PWR039
U 1 1 51F920FA
P 5750 1900
F 0 "#PWR039" H 5750 2000 30  0001 C CNN
F 1 "VCC_F" H 5750 2000 30  0000 C CNN
F 2 "" H 5750 1900 60  0000 C CNN
F 3 "" H 5750 1900 60  0000 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
Text Notes 1950 6700 0    60   ~ 0
Level-shifting and inversion of \nICP signal from controller
$Comp
L R R11
U 1 1 521EAF82
P 4700 6400
F 0 "R11" V 4650 6600 40  0000 C CNN
F 1 "768R" V 4707 6401 40  0000 C CNN
F 2 "~" V 4630 6400 30  0000 C CNN
F 3 "~" H 4700 6400 30  0000 C CNN
	1    4700 6400
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 521EAF99
P 4800 6400
F 0 "R12" V 4750 6600 40  0000 C CNN
F 1 "470R" V 4807 6401 40  0000 C CNN
F 2 "~" V 4730 6400 30  0000 C CNN
F 3 "~" H 4800 6400 30  0000 C CNN
	1    4800 6400
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 521EAF9F
P 4900 6400
F 0 "R13" V 4850 6600 40  0000 C CNN
F 1 "210R" V 4907 6401 40  0000 C CNN
F 2 "~" V 4830 6400 30  0000 C CNN
F 3 "~" H 4900 6400 30  0000 C CNN
	1    4900 6400
	1    0    0    -1  
$EndComp
$Comp
L CONN_3X2 JP3
U 1 1 521EAFAD
P 4850 5700
F 0 "JP3" H 4850 5950 50  0000 C CNN
F 1 "REG VOL." H 4850 5550 40  0000 C CNN
F 2 "" H 4850 5700 60  0000 C CNN
F 3 "" H 4850 5700 60  0000 C CNN
	1    4850 5700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR040
U 1 1 521EB2D8
P 4800 6800
F 0 "#PWR040" H 4800 6800 30  0001 C CNN
F 1 "GND" H 4800 6730 30  0001 C CNN
F 2 "" H 4800 6800 60  0000 C CNN
F 3 "" H 4800 6800 60  0000 C CNN
	1    4800 6800
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG041
U 1 1 521FDC51
P 5700 4150
F 0 "#FLG041" H 5700 4245 30  0001 C CNN
F 1 "PWR_FLAG" H 5700 4330 30  0001 C CNN
F 2 "" H 5700 4150 60  0000 C CNN
F 3 "" H 5700 4150 60  0000 C CNN
	1    5700 4150
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 522766A8
P 8950 2250
F 0 "R15" V 9000 2050 40  0000 C CNN
F 1 "100R" V 8957 2251 40  0000 C CNN
F 2 "~" V 8880 2250 30  0000 C CNN
F 3 "~" H 8950 2250 30  0000 C CNN
	1    8950 2250
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 522766BF
P 8950 2350
F 0 "R17" V 9000 2150 40  0000 C CNN
F 1 "100R" V 8957 2351 40  0000 C CNN
F 2 "~" V 8880 2350 30  0000 C CNN
F 3 "~" H 8950 2350 30  0000 C CNN
	1    8950 2350
	0    -1   -1   0   
$EndComp
$Comp
L R R19
U 1 1 522766D9
P 8950 2450
F 0 "R19" V 9000 2250 40  0000 C CNN
F 1 "100R" V 8957 2451 40  0000 C CNN
F 2 "~" V 8880 2450 30  0000 C CNN
F 3 "~" H 8950 2450 30  0000 C CNN
	1    8950 2450
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 522766DF
P 8950 2550
F 0 "R21" V 9000 2350 40  0000 C CNN
F 1 "100R" V 8957 2551 40  0000 C CNN
F 2 "~" V 8880 2550 30  0000 C CNN
F 3 "~" H 8950 2550 30  0000 C CNN
	1    8950 2550
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 5227711D
P 2750 1750
F 0 "C2" H 2750 1850 40  0000 L CNN
F 1 "0.1u" H 2756 1665 40  0000 L CNN
F 2 "~" H 2788 1600 30  0000 C CNN
F 3 "~" H 2750 1750 60  0000 C CNN
	1    2750 1750
	1    0    0    1   
$EndComp
$Comp
L GND #PWR042
U 1 1 52277123
P 2750 2000
F 0 "#PWR042" H 2750 2000 30  0001 C CNN
F 1 "GND" H 2750 1930 30  0001 C CNN
F 2 "" H 2750 2000 60  0000 C CNN
F 3 "" H 2750 2000 60  0000 C CNN
	1    2750 2000
	-1   0    0    -1  
$EndComp
Text HLabel 2200 2250 0    60   Input ~ 0
MOSI_M
Text HLabel 2200 2350 0    60   Output ~ 0
MISO_M
Text HLabel 2200 2450 0    60   Input ~ 0
CLK_M
Text HLabel 2200 2550 0    60   Input ~ 0
~CS_M~
$Comp
L R R14
U 1 1 52277133
P 2900 2250
F 0 "R14" V 2950 2050 40  0000 C CNN
F 1 "100R" V 2907 2251 40  0000 C CNN
F 2 "~" V 2830 2250 30  0000 C CNN
F 3 "~" H 2900 2250 30  0000 C CNN
	1    2900 2250
	0    1    -1   0   
$EndComp
$Comp
L R R18
U 1 1 52277139
P 2900 2450
F 0 "R18" V 2950 2250 40  0000 C CNN
F 1 "100R" V 2907 2451 40  0000 C CNN
F 2 "~" V 2830 2450 30  0000 C CNN
F 3 "~" H 2900 2450 30  0000 C CNN
	1    2900 2450
	0    1    -1   0   
$EndComp
$Comp
L R R16
U 1 1 5227713F
P 2900 2350
F 0 "R16" V 2950 2150 40  0000 C CNN
F 1 "100R" V 2907 2351 40  0000 C CNN
F 2 "~" V 2830 2350 30  0000 C CNN
F 3 "~" H 2900 2350 30  0000 C CNN
	1    2900 2350
	0    1    -1   0   
$EndComp
$Comp
L R R20
U 1 1 52277145
P 2900 2550
F 0 "R20" V 2950 2350 40  0000 C CNN
F 1 "100R" V 2907 2551 40  0000 C CNN
F 2 "~" V 2830 2550 30  0000 C CNN
F 3 "~" H 2900 2550 30  0000 C CNN
	1    2900 2550
	0    1    -1   0   
$EndComp
Wire Wire Line
	8800 2050 8550 2050
Wire Wire Line
	8800 1400 8800 2050
Wire Wire Line
	7700 3000 7700 3100
Wire Wire Line
	7700 1450 7700 1550
Wire Wire Line
	5200 4450 5850 4450
Wire Wire Line
	5450 4550 5200 4550
Wire Wire Line
	5450 4650 5200 4650
Connection ~ 5450 4550
Connection ~ 5450 4650
Wire Wire Line
	4250 5000 4250 5100
Connection ~ 5450 4450
Connection ~ 5450 4750
Wire Wire Line
	5750 2050 5750 1900
Wire Wire Line
	9100 1950 9100 2000
Wire Wire Line
	4800 4950 4800 5300
Wire Wire Line
	5500 2750 5500 2250
Connection ~ 5500 2250
Wire Wire Line
	5650 2750 5650 2350
Connection ~ 5650 2350
Wire Wire Line
	5800 2750 5800 2450
Connection ~ 5800 2450
Wire Wire Line
	5950 2750 5950 2550
Connection ~ 5950 2550
Connection ~ 5750 2050
Wire Wire Line
	5450 5100 5400 5100
Wire Wire Line
	4900 5100 4800 5100
Connection ~ 4800 5100
Connection ~ 2400 5100
Wire Wire Line
	2400 5000 2400 5300
Wire Wire Line
	1700 5550 2100 5550
Wire Wire Line
	2400 4400 2400 4500
Wire Wire Line
	1950 6250 3000 6250
Wire Wire Line
	1950 5700 1950 5550
Connection ~ 1950 5550
Wire Wire Line
	2700 6250 2700 6350
Wire Wire Line
	5450 4750 5200 4750
Wire Wire Line
	5950 4100 5950 4650
Wire Wire Line
	5850 4450 5850 4650
Wire Wire Line
	5450 4450 5450 5100
Wire Wire Line
	6050 4650 6050 4500
Wire Wire Line
	4150 3000 4150 3100
Wire Wire Line
	4150 1450 4150 1550
Wire Wire Line
	2600 5100 2600 5550
Wire Wire Line
	2400 5100 3250 5100
Wire Wire Line
	2600 5550 2700 5550
Wire Wire Line
	3000 6250 3000 5700
Connection ~ 2700 6250
Wire Wire Line
	2400 4400 3000 4400
Wire Wire Line
	2700 4350 2700 4400
Connection ~ 2700 4400
Wire Wire Line
	3000 4400 3000 4500
Wire Wire Line
	3000 5000 3000 5300
Wire Wire Line
	2400 5700 2400 6250
Connection ~ 2400 6250
Wire Wire Line
	1950 6250 1950 6200
Connection ~ 2600 5100
Wire Wire Line
	3250 5200 3000 5200
Connection ~ 3000 5200
Wire Wire Line
	6400 1950 6400 2050
Connection ~ 6400 2050
Wire Wire Line
	6400 1450 6400 1550
Wire Wire Line
	6400 1450 6650 1450
Wire Wire Line
	6650 1450 6650 1550
Wire Wire Line
	4900 6150 4900 6100
Wire Wire Line
	4800 6150 4800 6100
Wire Wire Line
	4700 6150 4700 6100
Wire Wire Line
	4700 6650 4700 6700
Wire Wire Line
	4700 6700 4900 6700
Wire Wire Line
	4900 6700 4900 6650
Wire Wire Line
	4800 6650 4800 6800
Connection ~ 4800 6700
Wire Wire Line
	4700 5300 4700 5250
Wire Wire Line
	4700 5250 4900 5250
Connection ~ 4800 5250
Wire Wire Line
	4900 5250 4900 5300
Wire Wire Line
	5700 4150 5700 4250
Wire Wire Line
	5700 4250 5950 4250
Connection ~ 5950 4250
Wire Wire Line
	4250 4350 4250 4600
Wire Wire Line
	4250 4450 4400 4450
Connection ~ 4250 4450
Wire Wire Line
	8700 2250 8550 2250
Wire Wire Line
	8550 2350 8700 2350
Wire Wire Line
	8700 2450 8550 2450
Wire Wire Line
	8550 2550 8700 2550
Wire Wire Line
	9200 2250 9600 2250
Wire Wire Line
	9600 2350 9200 2350
Wire Wire Line
	9200 2450 9600 2450
Wire Wire Line
	9200 2550 9600 2550
Wire Wire Line
	9100 1550 9100 1500
Wire Wire Line
	9100 1500 8800 1500
Connection ~ 8800 1500
Wire Wire Line
	3050 2050 3300 2050
Wire Wire Line
	3050 1400 3050 2050
Wire Wire Line
	2750 1950 2750 2000
Wire Wire Line
	3150 2250 3300 2250
Wire Wire Line
	3300 2350 3150 2350
Wire Wire Line
	3150 2450 3300 2450
Wire Wire Line
	3300 2550 3150 2550
Wire Wire Line
	2200 2250 2650 2250
Wire Wire Line
	2200 2350 2650 2350
Wire Wire Line
	2200 2450 2650 2450
Wire Wire Line
	2200 2550 2650 2550
Wire Wire Line
	2750 1550 2750 1500
Wire Wire Line
	2750 1500 3050 1500
Connection ~ 3050 1500
Wire Wire Line
	5000 2050 6850 2050
Wire Wire Line
	5000 2250 6850 2250
Wire Wire Line
	5000 2350 6850 2350
Wire Wire Line
	5000 2450 6850 2450
Wire Wire Line
	5000 2550 6850 2550
$Comp
L R R22
U 1 1 52273CB7
P 5500 3000
F 0 "R22" V 5580 3000 40  0000 C CNN
F 1 "33R" V 5507 3001 40  0000 C CNN
F 2 "~" V 5430 3000 30  0000 C CNN
F 3 "~" H 5500 3000 30  0000 C CNN
	1    5500 3000
	1    0    0    -1  
$EndComp
$Comp
L R R23
U 1 1 52273CC9
P 5650 3000
F 0 "R23" V 5730 3000 40  0000 C CNN
F 1 "33R" V 5657 3001 40  0000 C CNN
F 2 "~" V 5580 3000 30  0000 C CNN
F 3 "~" H 5650 3000 30  0000 C CNN
	1    5650 3000
	1    0    0    -1  
$EndComp
$Comp
L R R24
U 1 1 52273CCF
P 5800 3000
F 0 "R24" V 5880 3000 40  0000 C CNN
F 1 "33R" V 5807 3001 40  0000 C CNN
F 2 "~" V 5730 3000 30  0000 C CNN
F 3 "~" H 5800 3000 30  0000 C CNN
	1    5800 3000
	1    0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 52273CD5
P 5950 3000
F 0 "R25" V 6030 3000 40  0000 C CNN
F 1 "33R" V 5957 3001 40  0000 C CNN
F 2 "~" V 5880 3000 30  0000 C CNN
F 3 "~" H 5950 3000 30  0000 C CNN
	1    5950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3250 5650 3350
Wire Wire Line
	5500 3350 5500 3250
Wire Wire Line
	5800 3250 5800 3350
Wire Wire Line
	5950 3350 5950 3250
$Comp
L 2N7002 Q1
U 1 1 5229F1E8
P 2300 5500
F 0 "Q1" H 2300 5351 40  0000 R CNN
F 1 "2N7002" H 2300 5650 40  0000 R CNN
F 2 "SOT23" H 2170 5602 29  0000 C CNN
F 3 "~" H 2300 5500 60  0000 C CNN
	1    2300 5500
	1    0    0    -1  
$EndComp
$Comp
L 2N7002 Q2
U 1 1 5229F1F5
P 2900 5500
F 0 "Q2" H 2900 5351 40  0000 R CNN
F 1 "2N7002" H 2900 5650 40  0000 R CNN
F 2 "SOT23" H 2770 5602 29  0000 C CNN
F 3 "~" H 2900 5500 60  0000 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L VCC_M #PWR043
U 1 1 522B0A7C
P 3050 1400
F 0 "#PWR043" H 3050 1500 30  0001 C CNN
F 1 "VCC_M" H 3050 1500 30  0000 C CNN
F 2 "~" H 3050 1400 60  0000 C CNN
F 3 "~" H 3050 1400 60  0000 C CNN
	1    3050 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
