EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Connector_Generic:Conn_01x09 J?
U 1 1 63C1EAFF
P 8150 1700
AR Path="/63C1EAFF" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C1EAFF" Ref="J33"  Part="1" 
F 0 "J33" H 8150 2200 50  0000 C CNN
F 1 "Conn_01x09" V 8250 1950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 8150 1700 50  0001 C CNN
F 3 "~" H 8150 1700 50  0001 C CNN
	1    8150 1700
	-1   0    0    -1  
$EndComp
Text Label 2650 2850 0    60   ~ 0
FRIN1
Text Label 2650 5150 0    60   ~ 0
FLIN1
Text Label 2650 5250 0    60   ~ 0
FLIN2
Text Label 8350 1300 0    60   ~ 0
3V34
Text Label 2650 2950 0    60   ~ 0
FRIN2
Text Label 8350 2100 0    60   ~ 0
3V34
Text Label 2650 4950 0    60   ~ 0
ENC2A
Text Label 2650 4750 0    60   ~ 0
ENC1A
Text Notes 7450 1150 0    50   ~ 0
motor
Text Notes 8100 1150 0    50   ~ 0
motor
Text Label 2650 3950 0    60   ~ 0
BRIN1
Text Label 2650 4050 0    60   ~ 0
BRIN2
Text Label 2650 3850 0    60   ~ 0
BLIN2
Text Label 2650 3750 0    60   ~ 0
BLIN1
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U?
U 1 1 63C1EB13
P 2050 4050
AR Path="/63C1EB13" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C1EB13" Ref="U15"  Part="1" 
F 0 "U15" H 1650 3050 50  0000 C CNN
F 1 "ATmega328P-AU" H 1900 2950 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2050 4050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2050 4050 50  0001 C CNN
	1    2050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3550 3350 3650
Wire Wire Line
	3750 3450 3750 3650
Connection ~ 3350 3650
Wire Wire Line
	3400 3650 3350 3650
Wire Wire Line
	3350 3750 3350 3650
Wire Wire Line
	3750 3650 3750 3750
Connection ~ 3750 3650
Wire Wire Line
	3700 3650 3750 3650
$Comp
L Device:Crystal Y?
U 1 1 63C1EB21
P 3550 3650
AR Path="/63C1EB21" Ref="Y?"  Part="1" 
AR Path="/63BE4CD7/63C1EB21" Ref="Y2"  Part="1" 
F 0 "Y2" H 3550 3918 50  0000 C CNN
F 1 "Crystal" H 3550 3827 50  0000 C CNN
F 2 "akizukit:FC-135" H 3550 3650 50  0001 C CNN
F 3 "~" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 63C1EB27
P 3750 3850
AR Path="/63C1EB27" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C1EB27" Ref="C19"  Part="1" 
F 0 "C19" H 3658 3804 50  0000 R CNN
F 1 "C_Small" V 3658 3895 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 3750 3850 50  0001 C CNN
F 3 "~" H 3750 3850 50  0001 C CNN
	1    3750 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 63C1EB2D
P 3350 3850
AR Path="/63C1EB2D" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C1EB2D" Ref="C18"  Part="1" 
F 0 "C18" H 3258 3804 50  0000 R CNN
F 1 "C_Small" H 3258 3895 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 3350 3850 50  0001 C CNN
F 3 "~" H 3350 3850 50  0001 C CNN
	1    3350 3850
	-1   0    0    1   
$EndComp
Text Label 9100 1600 0    60   ~ 0
TXD4
Text Label 9100 1700 0    60   ~ 0
RXD4
Text Label 9100 1400 0    60   ~ 0
DTR4
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 63C1EB36
P 8900 1500
AR Path="/63C1EB36" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C1EB36" Ref="J34"  Part="1" 
F 0 "J34" V 8866 1780 50  0000 L CNN
F 1 "Conn_01x06" V 9000 1200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 8900 1500 50  0001 C CNN
F 3 "~" H 8900 1500 50  0001 C CNN
	1    8900 1500
	-1   0    0    -1  
$EndComp
NoConn ~ 9100 1500
Text Label 4350 4150 0    60   ~ 0
SDA4
Text Label 4350 4250 0    60   ~ 0
SCL4
Text Label 2650 4850 0    60   ~ 0
ENC1B
Text Label 2650 5050 0    60   ~ 0
ENC2B
Text Label 8350 1800 0    60   ~ 0
SCK4
Text Label 8350 2000 0    60   ~ 0
MOSI4
Text Label 8350 1900 0    60   ~ 0
MISO4
Text Label 8350 1700 0    60   ~ 0
CS4
Text Label 2650 3350 0    60   ~ 0
SCK4
Text Label 2650 3150 0    60   ~ 0
MOSI4
Text Label 2650 3250 0    60   ~ 0
MISO4
Text Label 2650 3050 0    60   ~ 0
CS4
Text Label 2050 2550 2    60   ~ 0
3V34
Wire Wire Line
	2050 2550 2150 2550
Text Label 2050 5650 2    60   ~ 0
GND4
Wire Wire Line
	2050 5650 2050 5550
Text Label 9100 1800 0    60   ~ 0
3V34
Text Label 9100 1300 0    60   ~ 0
GND4
NoConn ~ 8350 1400
NoConn ~ 8350 1500
NoConn ~ 8350 1600
Text Label 2650 4550 0    60   ~ 0
TXD4
Text Label 2650 4650 0    60   ~ 0
RXD4
Wire Wire Line
	3350 3550 2650 3550
Wire Wire Line
	2650 3450 3750 3450
Text Label 3250 4050 2    60   ~ 0
GND4
Wire Wire Line
	3250 4050 3350 4050
Wire Wire Line
	3750 4050 3750 3950
Wire Wire Line
	3750 4050 3350 4050
Wire Wire Line
	3350 4050 3350 3950
$Comp
L Device:R R?
U 1 1 63C1EB5B
P 4250 3900
AR Path="/63C1EB5B" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C1EB5B" Ref="R38"  Part="1" 
F 0 "R38" V 4330 3900 50  0000 C CNN
F 1 "1K" V 4250 3900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4180 3900 50  0001 C CNN
F 3 "" H 4250 3900 50  0001 C CNN
	1    4250 3900
	-1   0    0    -1  
$EndComp
Connection ~ 3350 4050
$Comp
L Device:R R?
U 1 1 63C1EB62
P 4100 3900
AR Path="/63C1EB62" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C1EB62" Ref="R35"  Part="1" 
F 0 "R35" V 4180 3900 50  0000 C CNN
F 1 "1K" V 4100 3900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4030 3900 50  0001 C CNN
F 3 "" H 4100 3900 50  0001 C CNN
	1    4100 3900
	-1   0    0    -1  
$EndComp
Text Label 4100 3650 1    60   ~ 0
3V34
Wire Wire Line
	4100 3650 4100 3750
Wire Wire Line
	4100 3750 4250 3750
Connection ~ 4100 3750
Wire Wire Line
	4250 4050 4250 4150
Wire Wire Line
	4250 4150 4350 4150
Wire Wire Line
	2650 4150 4250 4150
Connection ~ 4250 4150
Wire Wire Line
	2650 4250 4100 4250
Wire Wire Line
	4100 4250 4100 4050
Wire Wire Line
	4100 4250 4350 4250
Connection ~ 4100 4250
Wire Wire Line
	9150 2200 9100 2200
Text Label 9150 2200 0    60   ~ 0
3V34
Text Label 9150 2300 0    60   ~ 0
GND4
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 63C1EB77
P 8900 2100
AR Path="/63C1EB77" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C1EB77" Ref="J35"  Part="1" 
F 0 "J35" H 8980 2092 50  0000 L CNN
F 1 "Conn_01x04" V 9000 1850 50  0000 L CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 8900 2100 50  0001 C CNN
F 3 "~" H 8900 2100 50  0001 C CNN
	1    8900 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 2000 9150 2000
Wire Wire Line
	9150 2300 9100 2300
Wire Wire Line
	9150 2100 9100 2100
Text Label 9150 2100 0    60   ~ 0
SDA4
Text Label 9150 2000 0    60   ~ 0
SCL4
Text Label 1450 3050 2    60   ~ 0
POT14
Text Label 1450 3150 2    60   ~ 0
POT24
Wire Wire Line
	3750 4450 3850 4450
Wire Wire Line
	3750 4450 3750 4550
Connection ~ 3750 4450
Wire Wire Line
	3650 4450 3750 4450
Wire Wire Line
	3750 4350 3750 4450
Wire Wire Line
	4350 4450 4250 4450
Text Label 4350 4450 0    60   ~ 0
GND4
$Comp
L Switch:SW_Push SW?
U 1 1 63C1EB8B
P 4050 4450
AR Path="/63C1EB8B" Ref="SW?"  Part="1" 
AR Path="/63BE4CD7/63C1EB8B" Ref="SW8"  Part="1" 
F 0 "SW8" H 4200 4500 50  0000 C CNN
F 1 "SW_Push" H 4050 4400 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 4050 4650 50  0001 C CNN
F 3 "" H 4050 4650 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63C1EB91
P 3500 4450
AR Path="/63C1EB91" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C1EB91" Ref="R34"  Part="1" 
F 0 "R34" V 3580 4450 50  0000 C CNN
F 1 "1K" V 3500 4450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3430 4450 50  0001 C CNN
F 3 "" H 3500 4450 50  0001 C CNN
	1    3500 4450
	0    -1   1    0   
$EndComp
Text Label 3350 4450 2    60   ~ 0
3V34
$Comp
L Device:C_Small C?
U 1 1 63C1EB98
P 3750 4650
AR Path="/63C1EB98" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C1EB98" Ref="C20"  Part="1" 
F 0 "C20" H 3658 4604 50  0000 R CNN
F 1 "C_Small" V 3658 4695 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 3750 4650 50  0001 C CNN
F 3 "~" H 3750 4650 50  0001 C CNN
	1    3750 4650
	1    0    0    -1  
$EndComp
Text Label 3750 4850 3    60   ~ 0
DTR4
Wire Wire Line
	3750 4350 2650 4350
$Comp
L Device:C_Small C?
U 1 1 63C1EBA0
P 1350 2750
AR Path="/63C1EBA0" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C1EBA0" Ref="C14"  Part="1" 
F 0 "C14" H 1258 2704 50  0000 R CNN
F 1 "C_Small" H 1258 2795 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 1350 2750 50  0001 C CNN
F 3 "~" H 1350 2750 50  0001 C CNN
	1    1350 2750
	1    0    0    1   
$EndComp
Text Label 1350 2650 2    60   ~ 0
GND4
Wire Wire Line
	1350 2850 1450 2850
NoConn ~ 7700 2400
NoConn ~ 7700 2300
NoConn ~ 7700 2200
NoConn ~ 7700 2100
NoConn ~ 7700 2000
NoConn ~ 7700 1900
NoConn ~ 7700 1800
NoConn ~ 7700 1700
NoConn ~ 7700 1500
NoConn ~ 7700 1600
NoConn ~ 7700 1400
Text Label 7700 1300 0    60   ~ 0
GND4
Text Label 7700 2500 0    60   ~ 0
GND4
$Comp
L Connector_Generic:Conn_01x13 J?
U 1 1 63C1EBB5
P 7500 1900
AR Path="/63C1EBB5" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C1EBB5" Ref="J32"  Part="1" 
F 0 "J32" H 7500 2600 50  0000 C CNN
F 1 "Conn_01x13" V 7600 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 7500 1900 50  0001 C CNN
F 3 "~" H 7500 1900 50  0001 C CNN
	1    7500 1900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FE98
P 8950 5450
AR Path="/63C4FE98" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FE98" Ref="R54"  Part="1" 
F 0 "R54" V 9030 5450 50  0000 C CNN
F 1 "1K" V 8950 5450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 5450 50  0001 C CNN
F 3 "" H 8950 5450 50  0001 C CNN
	1    8950 5450
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FE9E
P 8950 5250
AR Path="/63C4FE9E" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FE9E" Ref="R53"  Part="1" 
F 0 "R53" V 9030 5250 50  0000 C CNN
F 1 "1K" V 8950 5250 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 5250 50  0001 C CNN
F 3 "" H 8950 5250 50  0001 C CNN
	1    8950 5250
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEA4
P 8950 5050
AR Path="/63C4FEA4" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEA4" Ref="R52"  Part="1" 
F 0 "R52" V 9030 5050 50  0000 C CNN
F 1 "1K" V 8950 5050 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 5050 50  0001 C CNN
F 3 "" H 8950 5050 50  0001 C CNN
	1    8950 5050
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEAA
P 8950 4400
AR Path="/63C4FEAA" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEAA" Ref="R50"  Part="1" 
F 0 "R50" V 9030 4400 50  0000 C CNN
F 1 "1K" V 8950 4400 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 4400 50  0001 C CNN
F 3 "" H 8950 4400 50  0001 C CNN
	1    8950 4400
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEB0
P 8950 4200
AR Path="/63C4FEB0" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEB0" Ref="R49"  Part="1" 
F 0 "R49" V 9030 4200 50  0000 C CNN
F 1 "1K" V 8950 4200 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 4200 50  0001 C CNN
F 3 "" H 8950 4200 50  0001 C CNN
	1    8950 4200
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEB6
P 8950 4000
AR Path="/63C4FEB6" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEB6" Ref="R48"  Part="1" 
F 0 "R48" V 9030 4000 50  0000 C CNN
F 1 "1K" V 8950 4000 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 4000 50  0001 C CNN
F 3 "" H 8950 4000 50  0001 C CNN
	1    8950 4000
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEBC
P 8950 3800
AR Path="/63C4FEBC" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEBC" Ref="R47"  Part="1" 
F 0 "R47" V 9030 3800 50  0000 C CNN
F 1 "1K" V 8950 3800 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 3800 50  0001 C CNN
F 3 "" H 8950 3800 50  0001 C CNN
	1    8950 3800
	0    -1   1    0   
$EndComp
Wire Wire Line
	7850 4750 8050 4750
Wire Wire Line
	7850 5150 8050 5150
$Comp
L Device:R R?
U 1 1 63C4FEC4
P 7700 5350
AR Path="/63C4FEC4" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEC4" Ref="R46"  Part="1" 
F 0 "R46" V 7780 5350 50  0000 C CNN
F 1 "1K" V 7700 5350 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 5350 50  0001 C CNN
F 3 "" H 7700 5350 50  0001 C CNN
	1    7700 5350
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FECA
P 7700 5150
AR Path="/63C4FECA" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FECA" Ref="R45"  Part="1" 
F 0 "R45" V 7780 5150 50  0000 C CNN
F 1 "1K" V 7700 5150 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 5150 50  0001 C CNN
F 3 "" H 7700 5150 50  0001 C CNN
	1    7700 5150
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FED0
P 7700 4950
AR Path="/63C4FED0" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FED0" Ref="R44"  Part="1" 
F 0 "R44" V 7780 4950 50  0000 C CNN
F 1 "1K" V 7700 4950 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 4950 50  0001 C CNN
F 3 "" H 7700 4950 50  0001 C CNN
	1    7700 4950
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FED6
P 7700 4750
AR Path="/63C4FED6" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FED6" Ref="R43"  Part="1" 
F 0 "R43" V 7780 4750 50  0000 C CNN
F 1 "1K" V 7700 4750 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 4750 50  0001 C CNN
F 3 "" H 7700 4750 50  0001 C CNN
	1    7700 4750
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEDC
P 7700 4300
AR Path="/63C4FEDC" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEDC" Ref="R42"  Part="1" 
F 0 "R42" V 7780 4300 50  0000 C CNN
F 1 "1K" V 7700 4300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEE2
P 7700 4100
AR Path="/63C4FEE2" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEE2" Ref="R41"  Part="1" 
F 0 "R41" V 7780 4100 50  0000 C CNN
F 1 "1K" V 7700 4100 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 4100 50  0001 C CNN
F 3 "" H 7700 4100 50  0001 C CNN
	1    7700 4100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEE8
P 7700 3900
AR Path="/63C4FEE8" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEE8" Ref="R40"  Part="1" 
F 0 "R40" V 7780 3900 50  0000 C CNN
F 1 "1K" V 7700 3900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 3900 50  0001 C CNN
F 3 "" H 7700 3900 50  0001 C CNN
	1    7700 3900
	0    -1   1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 63C4FEEE
P 7700 3700
AR Path="/63C4FEEE" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FEEE" Ref="R39"  Part="1" 
F 0 "R39" V 7780 3700 50  0000 C CNN
F 1 "1K" V 7700 3700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7630 3700 50  0001 C CNN
F 3 "" H 7700 3700 50  0001 C CNN
	1    7700 3700
	0    -1   1    0   
$EndComp
Text Label 8050 5450 2    60   ~ 0
GND4
Text Label 7550 5150 2    60   ~ 0
BRIN1
Text Label 7550 5350 2    60   ~ 0
BRIN2
Text Label 7550 4950 2    60   ~ 0
BLIN2
Text Label 7550 4750 2    60   ~ 0
BLIN1
Text Label 7550 4300 2    60   ~ 0
FRIN2
Text Label 7550 3900 2    60   ~ 0
FLIN2
Text Label 7550 3700 2    60   ~ 0
FLIN1
Text Label 7550 4100 2    60   ~ 0
FRIN1
Text Label 9100 4400 0    60   ~ 0
MGND
Text Label 8450 3700 0    60   ~ 0
M3V3
Text Label 8450 5250 0    60   ~ 0
MBRIN1
Text Label 8450 5450 0    60   ~ 0
MBRIN2
Text Label 8450 4400 0    60   ~ 0
MFRIN2
Text Label 8450 4000 0    60   ~ 0
MFLIN2
Text Label 8450 3800 0    60   ~ 0
MFLIN1
Text Label 8450 4200 0    60   ~ 0
MFRIN1
Wire Wire Line
	8450 4200 8800 4200
Wire Wire Line
	8800 3800 8450 3800
Wire Wire Line
	8450 5250 8800 5250
Wire Wire Line
	8450 5050 8800 5050
Wire Wire Line
	8450 5450 8800 5450
Wire Wire Line
	8450 4000 8800 4000
Wire Wire Line
	8450 4400 8800 4400
$Comp
L ume-boshi:TLP293-4 U?
U 1 1 63C4FF0C
P 8250 4050
AR Path="/63C4FF0C" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C4FF0C" Ref="U19"  Part="1" 
F 0 "U19" H 8250 4625 50  0000 C CNN
F 1 "TLP293-4" H 8250 4534 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 8250 3600 50  0001 C CNN
F 3 "" H 8250 3600 50  0001 C CNN
	1    8250 4050
	1    0    0    -1  
$EndComp
Text Label 8050 3800 2    60   ~ 0
GND4
Text Label 8050 4000 2    60   ~ 0
GND4
Text Label 8050 4200 2    60   ~ 0
GND4
Text Label 8050 4400 2    60   ~ 0
GND4
Text Label 9100 4200 0    60   ~ 0
MGND
Text Label 9100 4000 0    60   ~ 0
MGND
Text Label 9100 3800 0    60   ~ 0
MGND
Text Label 8450 3900 0    60   ~ 0
M3V3
Text Label 8450 4100 0    60   ~ 0
M3V3
Text Label 8450 4300 0    60   ~ 0
M3V3
$Comp
L ume-boshi:TLP293-4 U?
U 1 1 63C4FF1C
P 8250 5100
AR Path="/63C4FF1C" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C4FF1C" Ref="U20"  Part="1" 
F 0 "U20" H 8250 5675 50  0000 C CNN
F 1 "TLP293-4" H 8250 5584 50  0000 C CNN
F 2 "Package_SO:SOIC-16_4.55x10.3mm_P1.27mm" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 5100
	1    0    0    -1  
$EndComp
Text Label 8050 5250 2    60   ~ 0
GND4
Text Label 8050 5050 2    60   ~ 0
GND4
Text Label 8050 4850 2    60   ~ 0
GND4
Text Label 8450 4750 0    60   ~ 0
M3V3
Text Label 8450 4950 0    60   ~ 0
M3V3
Wire Wire Line
	8800 4850 8450 4850
Text Label 8450 4850 0    60   ~ 0
MBLIN1
Text Label 8450 5050 0    60   ~ 0
MBLIN2
$Comp
L Device:R R?
U 1 1 63C4FF2A
P 8950 4850
AR Path="/63C4FF2A" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C4FF2A" Ref="R51"  Part="1" 
F 0 "R51" V 9030 4850 50  0000 C CNN
F 1 "1K" V 8950 4850 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 4850 50  0001 C CNN
F 3 "" H 8950 4850 50  0001 C CNN
	1    8950 4850
	0    -1   1    0   
$EndComp
Text Label 9100 5450 0    60   ~ 0
MGND
Text Label 9100 5250 0    60   ~ 0
MGND
Text Label 9100 5050 0    60   ~ 0
MGND
Text Label 9100 4850 0    60   ~ 0
MGND
Text Label 8450 5150 0    60   ~ 0
M3V3
Text Label 8450 5350 0    60   ~ 0
M3V3
Wire Wire Line
	7850 3700 8050 3700
Wire Wire Line
	8050 3900 7850 3900
Wire Wire Line
	7850 4100 8050 4100
Wire Wire Line
	8050 4300 7850 4300
Wire Wire Line
	7850 4950 8050 4950
Wire Wire Line
	7850 5350 8050 5350
Text Notes 2000 1150 0    50   ~ 0
motor
Text Label 4000 1250 0    60   ~ 0
POT14
$Comp
L Device:CP C?
U 1 1 63C7B55B
P 2800 1500
AR Path="/63C7B55B" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C7B55B" Ref="C17"  Part="1" 
F 0 "C17" H 2825 1600 50  0000 L CNN
F 1 "CP" H 2825 1400 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 2838 1350 50  0001 C CNN
F 3 "" H 2800 1500 50  0001 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63C7B561
P 1600 1500
AR Path="/63C7B561" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C7B561" Ref="C15"  Part="1" 
F 0 "C15" H 1625 1600 50  0000 L CNN
F 1 "C" H 1625 1400 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 1638 1350 50  0001 C CNN
F 3 "" H 1600 1500 50  0001 C CNN
	1    1600 1500
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63C7B567
P 2600 1500
AR Path="/63C7B567" Ref="C?"  Part="1" 
AR Path="/63BE4CD7/63C7B567" Ref="C16"  Part="1" 
F 0 "C16" H 2625 1600 50  0000 L CNN
F 1 "C" H 2625 1400 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2638 1350 50  0001 C CNN
F 3 "" H 2600 1500 50  0001 C CNN
	1    2600 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 1650 2100 1650
Connection ~ 2100 1650
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63C7B56F
P 2100 2000
AR Path="/63C7B56F" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C7B56F" Ref="J23"  Part="1" 
F 0 "J23" V 1973 2080 50  0000 L CNN
F 1 "Conn_01x02" V 2200 1750 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 2100 2000 50  0001 C CNN
F 3 "~" H 2100 2000 50  0001 C CNN
	1    2100 2000
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117CD-3.3 U?
U 1 1 63C7B575
P 2100 1350
AR Path="/63C7B575" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C7B575" Ref="U16"  Part="1" 
F 0 "U16" H 2100 1400 50  0000 C CNN
F 1 "AMS1117CD-3.3" H 2100 1501 50  0000 C CNN
F 2 "akizukit:AZ1086H" H 2100 1550 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2200 1100 50  0001 C CNN
	1    2100 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW?
U 1 1 63C7B57B
P 1700 1800
AR Path="/63C7B57B" Ref="SW?"  Part="1" 
AR Path="/63BE4CD7/63C7B57B" Ref="SW7"  Part="1" 
F 0 "SW7" H 2000 1750 50  0000 C CNN
F 1 "SW_SPDT" H 2000 1850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1800 2100 1800
Wire Wire Line
	1900 1800 2000 1800
Wire Wire Line
	1500 1700 1400 1700
Wire Wire Line
	1400 1700 1400 1350
NoConn ~ 1500 1900
Wire Wire Line
	2100 1650 2100 1800
Text Label 2800 1350 0    60   ~ 0
M3V3
Text Label 1400 1350 2    60   ~ 0
MVcc
Text Label 2350 1800 0    60   ~ 0
MGND
Text Label 6600 4100 0    60   ~ 0
MGND
Text Label 6600 5150 0    60   ~ 0
MGND
Text Label 5900 5050 2    60   ~ 0
MBRIN1
Text Label 5900 5150 2    60   ~ 0
MBRIN2
Text Label 5900 4950 2    60   ~ 0
MBLIN2
Text Label 5900 4850 2    60   ~ 0
MBLIN1
Text Label 5900 4100 2    60   ~ 0
MFRIN2
Text Label 5900 3900 2    60   ~ 0
MFLIN2
Text Label 5900 3800 2    60   ~ 0
MFLIN1
Text Label 5900 4000 2    60   ~ 0
MFRIN1
Text Label 6600 4750 0    60   ~ 0
MBLOUT1
Text Label 6600 4950 0    60   ~ 0
MBROUT1
Text Label 6600 4850 0    60   ~ 0
MBLOUT2
Text Label 6600 5050 0    60   ~ 0
MBROUT2
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63C7B599
P 6350 1550
AR Path="/63C7B599" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C7B599" Ref="J30"  Part="1" 
F 0 "J30" V 6223 1630 50  0000 L CNN
F 1 "Conn_01x02" V 6450 1300 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 6350 1550 50  0001 C CNN
F 3 "~" H 6350 1550 50  0001 C CNN
	1    6350 1550
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63C7B59F
P 6350 1300
AR Path="/63C7B59F" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C7B59F" Ref="J29"  Part="1" 
F 0 "J29" V 6223 1380 50  0000 L CNN
F 1 "Conn_01x02" V 6450 1050 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 6350 1300 50  0001 C CNN
F 3 "~" H 6350 1300 50  0001 C CNN
	1    6350 1300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63C7B5A5
P 5600 1550
AR Path="/63C7B5A5" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C7B5A5" Ref="J27"  Part="1" 
F 0 "J27" V 5473 1630 50  0000 L CNN
F 1 "Conn_01x02" V 5700 1300 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 5600 1550 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 63C7B5AB
P 5600 1300
AR Path="/63C7B5AB" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63C7B5AB" Ref="J26"  Part="1" 
F 0 "J26" V 5473 1380 50  0000 L CNN
F 1 "Conn_01x02" V 5700 1050 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 5600 1300 50  0001 C CNN
F 3 "~" H 5600 1300 50  0001 C CNN
	1    5600 1300
	-1   0    0    -1  
$EndComp
Text Label 6550 1300 0    60   ~ 0
MBLOUT1
Text Label 5800 1300 0    60   ~ 0
MFLOUT1
Text Label 5800 1550 0    60   ~ 0
MFROUT1
Text Label 5800 1650 0    60   ~ 0
MFROUT2
Text Label 5800 1400 0    60   ~ 0
MFLOUT2
Text Label 6550 1550 0    60   ~ 0
MBROUT1
Text Label 6550 1400 0    60   ~ 0
MBLOUT2
Text Label 6550 1650 0    60   ~ 0
MBROUT2
Text Label 3550 1350 2    60   ~ 0
3V34
$Comp
L Device:R_POT RV?
U 1 1 63C7B5BA
P 3800 1350
AR Path="/63C7B5BA" Ref="RV?"  Part="1" 
AR Path="/63BE4CD7/63C7B5BA" Ref="RV2"  Part="1" 
F 0 "RV2" V 3950 1450 50  0000 C CNN
F 1 "R_POT" V 4000 1350 50  0000 C CNN
F 2 "akizukit:S_POT_SMD" H 3800 1350 50  0001 C CNN
F 3 "~" H 3800 1350 50  0001 C CNN
	1    3800 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1350 4050 1350
Connection ~ 4000 1350
Wire Wire Line
	4000 1200 4000 1350
Wire Wire Line
	3800 1200 4000 1200
Wire Wire Line
	3650 1350 3600 1350
Wire Wire Line
	3950 1350 4000 1350
$Comp
L Device:R R?
U 1 1 63C7B5C6
P 4200 1350
AR Path="/63C7B5C6" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C7B5C6" Ref="R36"  Part="1" 
F 0 "R36" V 4280 1350 50  0000 C CNN
F 1 "1K" V 4200 1350 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4130 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	0    -1   1    0   
$EndComp
Text Label 4350 1350 0    60   ~ 0
GND4
Wire Wire Line
	1400 1350 1600 1350
Wire Wire Line
	2400 1350 2600 1350
Wire Wire Line
	2100 1650 2600 1650
$Comp
L ume-boshi:LV8548MC U?
U 1 1 63C7B5D0
P 6250 3900
AR Path="/63C7B5D0" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C7B5D0" Ref="U17"  Part="1" 
F 0 "U17" H 6250 4250 50  0000 C CNN
F 1 "LV8548MC" H 6250 4200 50  0000 C CNN
F 2 "Package_SO:SSOP-10_3.9x4.9mm_P1.00mm" H 6250 3550 50  0001 C CNN
F 3 "" H 6250 3550 50  0001 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L ume-boshi:LV8548MC U?
U 1 1 63C7B5D6
P 6250 4950
AR Path="/63C7B5D6" Ref="U?"  Part="1" 
AR Path="/63BE4CD7/63C7B5D6" Ref="U18"  Part="1" 
F 0 "U18" H 6250 5300 50  0000 C CNN
F 1 "LV8548MC" H 6250 5250 50  0000 C CNN
F 2 "Package_SO:SSOP-10_3.9x4.9mm_P1.00mm" H 6250 4600 50  0001 C CNN
F 3 "" H 6250 4600 50  0001 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
Text Label 6600 3800 0    60   ~ 0
MFLOUT2
Text Label 6600 4000 0    60   ~ 0
MFROUT2
Text Label 6600 3900 0    60   ~ 0
MFROUT1
Text Label 6600 3700 0    60   ~ 0
MFLOUT1
Connection ~ 1600 1350
Wire Wire Line
	1600 1350 1800 1350
Connection ~ 2600 1350
Wire Wire Line
	2600 1350 2800 1350
Connection ~ 2600 1650
Wire Wire Line
	2600 1650 2800 1650
Connection ~ 2100 1800
Text Label 4000 1600 0    60   ~ 0
POT24
$Comp
L Device:R_POT RV?
U 1 1 63C7B5E9
P 3800 1700
AR Path="/63C7B5E9" Ref="RV?"  Part="1" 
AR Path="/63BE4CD7/63C7B5E9" Ref="RV3"  Part="1" 
F 0 "RV3" V 3950 1800 50  0000 C CNN
F 1 "R_POT" V 4000 1700 50  0000 C CNN
F 2 "akizukit:S_POT_SMD" H 3800 1700 50  0001 C CNN
F 3 "~" H 3800 1700 50  0001 C CNN
	1    3800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1700 4050 1700
Connection ~ 4000 1700
Wire Wire Line
	4000 1550 4000 1700
Wire Wire Line
	3800 1550 4000 1550
Wire Wire Line
	3950 1700 4000 1700
$Comp
L Device:R R?
U 1 1 63C7B5F4
P 4200 1700
AR Path="/63C7B5F4" Ref="R?"  Part="1" 
AR Path="/63BE4CD7/63C7B5F4" Ref="R37"  Part="1" 
F 0 "R37" V 4280 1700 50  0000 C CNN
F 1 "1K" V 4200 1700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4130 1700 50  0001 C CNN
F 3 "" H 4200 1700 50  0001 C CNN
	1    4200 1700
	0    -1   1    0   
$EndComp
Wire Wire Line
	4350 1350 4350 1700
Wire Wire Line
	3650 1700 3600 1700
Wire Wire Line
	3600 1700 3600 1350
Connection ~ 3600 1350
Wire Wire Line
	3600 1350 3550 1350
Text Label 6550 2600 0    60   ~ 0
ENC1B
Text Label 5800 2400 0    60   ~ 0
ENC2A
Text Label 6550 2400 0    60   ~ 0
ENC1A
Text Label 5800 2600 0    60   ~ 0
ENC2B
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 63D129D2
P 6350 2400
AR Path="/63D129D2" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63D129D2" Ref="J31"  Part="1" 
F 0 "J31" V 6450 2450 50  0000 R CNN
F 1 "Conn_01x04" V 6500 2600 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x04_P1.00mm_Vertical" H 6350 2400 50  0001 C CNN
F 3 "~" H 6350 2400 50  0001 C CNN
	1    6350 2400
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 63D129D8
P 5600 2400
AR Path="/63D129D8" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63D129D8" Ref="J28"  Part="1" 
F 0 "J28" V 5700 2450 50  0000 R CNN
F 1 "Conn_01x04" V 5750 2600 50  0000 R CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x04_P1.00mm_Vertical" H 5600 2400 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	-1   0    0    -1  
$EndComp
Text Label 6550 2300 0    60   ~ 0
GND4
Text Label 6550 2500 0    60   ~ 0
3V34
Wire Wire Line
	6550 2300 5800 2300
Wire Wire Line
	5800 2500 6550 2500
Text Label 800  800  3    60   ~ 0
3V34
Text Label 950  800  3    60   ~ 0
GND4
Text Label 1250 800  3    60   ~ 0
MGND
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63D87163
P 1250 800
AR Path="/63D87163" Ref="#FLG?"  Part="1" 
AR Path="/63BE4CD7/63D87163" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 1250 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1250 973 50  0000 C CNN
F 2 "" H 1250 800 50  0001 C CNN
F 3 "~" H 1250 800 50  0001 C CNN
	1    1250 800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63D87169
P 800 800
AR Path="/63D87169" Ref="#FLG?"  Part="1" 
AR Path="/63BE4CD7/63D87169" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 800 875 50  0001 C CNN
F 1 "PWR_FLAG" H 800 973 50  0000 C CNN
F 2 "" H 800 800 50  0001 C CNN
F 3 "~" H 800 800 50  0001 C CNN
	1    800  800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63D8716F
P 950 800
AR Path="/63D8716F" Ref="#FLG?"  Part="1" 
AR Path="/63BE4CD7/63D8716F" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 950 875 50  0001 C CNN
F 1 "PWR_FLAG" H 950 973 50  0000 C CNN
F 2 "" H 950 800 50  0001 C CNN
F 3 "~" H 950 800 50  0001 C CNN
	1    950  800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 63D87175
P 1100 800
AR Path="/63D87175" Ref="#FLG?"  Part="1" 
AR Path="/63BE4CD7/63D87175" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 1100 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 973 50  0000 C CNN
F 2 "" H 1100 800 50  0001 C CNN
F 3 "~" H 1100 800 50  0001 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
Text Label 1100 800  3    60   ~ 0
MVcc
Wire Wire Line
	3750 4850 3750 4750
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 63DC8AB3
P 8900 2650
AR Path="/63DC8AB3" Ref="J?"  Part="1" 
AR Path="/63BE4CD7/63DC8AB3" Ref="J24"  Part="1" 
F 0 "J24" V 8773 2830 50  0000 L CNN
F 1 "Conn_01x03" V 9000 2450 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8900 2650 50  0001 C CNN
F 3 "~" H 8900 2650 50  0001 C CNN
	1    8900 2650
	-1   0    0    -1  
$EndComp
Text Label 9100 2550 0    60   ~ 0
GND4
Text Label 9100 2750 0    60   ~ 0
GND4
Text Label 9100 2650 0    60   ~ 0
3V34
Text Label 5900 3700 2    60   ~ 0
MVcc
Text Label 5900 4750 2    60   ~ 0
MVcc
$EndSCHEMATC
