EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L akizukit:ESP32 U2
U 1 1 5BE24AB6
P 2000 3400
F 0 "U2" H 2000 3000 60  0000 C CNN
F 1 "ESP32" H 2000 3100 60  0000 C CNN
F 2 "akizukit:ESP-WROOM-32" H 2000 3000 60  0001 C CNN
F 3 "" H 2000 3000 60  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 5BE24BE9
P 7550 1750
F 0 "R28" V 7630 1750 50  0000 C CNN
F 1 "5K" V 7550 1750 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7480 1750 50  0001 C CNN
F 3 "" H 7550 1750 50  0001 C CNN
	1    7550 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 5BE2DD66
P 7000 1500
F 0 "C10" H 7025 1600 50  0000 L CNN
F 1 "1n" H 7025 1400 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 7038 1350 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1500
	0    -1   1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5BE2E5DE
P 7000 1950
F 0 "C11" H 7025 2050 50  0000 L CNN
F 1 "1n" H 7025 1850 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 7038 1800 50  0001 C CNN
F 3 "" H 7000 1950 50  0001 C CNN
	1    7000 1950
	0    -1   1    0   
$EndComp
Text Label 2900 4000 0    60   ~ 0
IO0
Text Label 7250 1750 0    60   ~ 0
IO0
Text Label 1150 2900 2    60   ~ 0
EN
Text Label 7250 1300 0    60   ~ 0
EN
$Comp
L power:+3V3 #PWR02
U 1 1 5BE2FBFA
P 700 2800
F 0 "#PWR02" H 700 2650 50  0001 C CNN
F 1 "+3V3" H 700 2940 50  0000 C CNN
F 2 "" H 700 2800 50  0001 C CNN
F 3 "" H 700 2800 50  0001 C CNN
	1    700  2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BE3013C
P 700 2950
F 0 "C1" H 725 3050 50  0000 L CNN
F 1 "1u" H 725 2850 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 738 2800 50  0001 C CNN
F 3 "" H 700 2950 50  0001 C CNN
	1    700  2950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5BE30D1C
P 1150 2700
F 0 "#PWR09" H 1150 2450 50  0001 C CNN
F 1 "GND" H 1300 2650 50  0000 C CNN
F 2 "" H 1150 2700 50  0001 C CNN
F 3 "" H 1150 2700 50  0001 C CNN
	1    1150 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R27
U 1 1 5BE3120D
P 7550 1300
F 0 "R27" V 7630 1300 50  0000 C CNN
F 1 "12K" V 7550 1300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7480 1300 50  0001 C CNN
F 3 "" H 7550 1300 50  0001 C CNN
	1    7550 1300
	0    1    -1   0   
$EndComp
$Comp
L Device:CP C5
U 1 1 5BE32ED4
P 2850 900
F 0 "C5" H 2875 1000 50  0000 L CNN
F 1 "CP" H 2875 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_Elec_6.3x7.7" H 2888 750 50  0001 C CNN
F 3 "" H 2850 900 50  0001 C CNN
	1    2850 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BE33207
P 1650 900
F 0 "C2" H 1675 1000 50  0000 L CNN
F 1 "C" H 1675 800 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 1688 750 50  0001 C CNN
F 3 "" H 1650 900 50  0001 C CNN
	1    1650 900 
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR019
U 1 1 5BE332BB
P 2850 750
F 0 "#PWR019" H 2850 600 50  0001 C CNN
F 1 "+3V3" H 2850 890 50  0000 C CNN
F 2 "" H 2850 750 50  0001 C CNN
F 3 "" H 2850 750 50  0001 C CNN
	1    2850 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5BE333B8
P 2400 1250
F 0 "#PWR014" H 2400 1000 50  0001 C CNN
F 1 "GND" H 2400 1100 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BE33AA3
P 2650 900
F 0 "C3" H 2675 1000 50  0000 L CNN
F 1 "C" H 2675 800 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 2688 750 50  0001 C CNN
F 3 "" H 2650 900 50  0001 C CNN
	1    2650 900 
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BE34F03
P 2750 4500
F 0 "R1" V 2830 4500 50  0000 C CNN
F 1 "5K" V 2750 4500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 2680 4500 50  0001 C CNN
F 3 "" H 2750 4500 50  0001 C CNN
	1    2750 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5BE351B1
P 2900 4500
F 0 "#PWR021" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2900 4350 50  0000 C CNN
F 2 "" H 2900 4500 50  0001 C CNN
F 3 "" H 2900 4500 50  0001 C CNN
	1    2900 4500
	-1   0    0    -1  
$EndComp
Text Label 2850 3100 0    60   ~ 0
TXD
Text Label 2850 3000 0    60   ~ 0
RXD
Text Label 7200 900  3    60   ~ 0
TXD
Text Label 7100 900  3    60   ~ 0
RXD
$Comp
L power:GND #PWR040
U 1 1 5BE3B36D
P 7500 900
F 0 "#PWR040" H 7500 650 50  0001 C CNN
F 1 "GND" V 7600 800 50  0000 C CNN
F 2 "" H 7500 900 50  0001 C CNN
F 3 "" H 7500 900 50  0001 C CNN
	1    7500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR039
U 1 1 5BE5B60E
P 6950 900
F 0 "#PWR039" H 6950 750 50  0001 C CNN
F 1 "+3V3" V 7000 1050 50  0000 C CNN
F 2 "" H 6950 900 50  0001 C CNN
F 3 "" H 6950 900 50  0001 C CNN
	1    6950 900 
	-1   0    0    1   
$EndComp
Text Label 7400 900  3    60   ~ 0
DTR
Text Label 7300 900  3    60   ~ 0
RTS
Text Label 7050 3500 2    60   ~ 0
RTS
Text Label 7050 3050 2    60   ~ 0
DTR
Text Label 7800 3800 0    60   ~ 0
IO0
$Comp
L Device:R R30
U 1 1 5BE5E397
P 7350 3500
F 0 "R30" V 7430 3500 50  0000 C CNN
F 1 "12K" V 7350 3500 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7280 3500 50  0001 C CNN
F 3 "" H 7350 3500 50  0001 C CNN
	1    7350 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5BE5E0B3
P 7350 3050
F 0 "R29" V 7430 3050 50  0000 C CNN
F 1 "12K" V 7350 3050 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 7280 3050 50  0001 C CNN
F 3 "" H 7350 3050 50  0001 C CNN
	1    7350 3050
	0    1    1    0   
$EndComp
Text Label 7800 2850 0    60   ~ 0
EN
Text Notes 7150 2950 0    60   ~ 0
Auto Write
Text Label 4350 1450 2    60   ~ 0
MISO
Text Label 4350 1250 2    60   ~ 0
SCK
Text Label 4350 1050 2    39   ~ 0
MOSI
$Comp
L power:GND #PWR036
U 1 1 5BE82D55
P 6050 1750
F 0 "#PWR036" H 6050 1500 50  0001 C CNN
F 1 "GND" H 6050 1600 50  0000 C CNN
F 2 "" H 6050 1750 50  0001 C CNN
F 3 "" H 6050 1750 50  0001 C CNN
	1    6050 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5BE82ED2
P 3900 1450
F 0 "#PWR027" H 3900 1200 50  0001 C CNN
F 1 "GND" H 3900 1300 50  0000 C CNN
F 2 "" H 3900 1450 50  0001 C CNN
F 3 "" H 3900 1450 50  0001 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 5BE833AD
P 3900 950
F 0 "#PWR026" H 3900 800 50  0001 C CNN
F 1 "+3V3" H 3900 1090 50  0000 C CNN
F 2 "" H 3900 950 50  0001 C CNN
F 3 "" H 3900 950 50  0001 C CNN
	1    3900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5BE83C0B
P 3750 1200
F 0 "C6" H 3775 1300 50  0000 L CNN
F 1 "C" H 3775 1100 50  0000 L CNN
F 2 "akizukit:SMD-2012" H 3788 1050 50  0001 C CNN
F 3 "" H 3750 1200 50  0001 C CNN
	1    3750 1200
	1    0    0    -1  
$EndComp
NoConn ~ 4350 1650
NoConn ~ 4350 1750
Text Label 2500 4450 0    60   ~ 0
IO2
Text Label 2900 3800 0    60   ~ 0
IO16
Text Label 2900 3700 0    60   ~ 0
IO17
Text Label 2900 3600 0    60   ~ 0
IO5
Text Label 2900 3500 0    60   ~ 0
SCK
Text Label 2900 3400 0    60   ~ 0
MISO
Text Label 2900 3200 0    60   ~ 0
SDA
NoConn ~ 4350 1550
NoConn ~ 4350 850 
Text Label 2900 2900 0    60   ~ 0
SCL
Text Label 2900 2800 0    60   ~ 0
MOSI
Text Label 1100 3900 2    60   ~ 0
IO14
Text Label 1100 3800 2    60   ~ 0
IO27
Text Label 1100 3700 2    60   ~ 0
IO26
Text Label 1100 3600 2    60   ~ 0
IO25
Text Label 1100 3500 2    60   ~ 0
IO33
Text Label 1100 3400 2    60   ~ 0
IO32
Text Label 1100 3300 2    60   ~ 0
IO35
Text Label 1650 4650 0    60   ~ 0
LEDs
Text Label 2350 4600 0    60   ~ 0
IO15
Text Label 4350 950  2    60   ~ 0
CS1
Text Label 1950 7700 0    60   ~ 0
CS1
NoConn ~ 1750 4500
NoConn ~ 1850 4500
NoConn ~ 1950 4500
NoConn ~ 2050 4500
NoConn ~ 2150 4500
NoConn ~ 2250 4500
$Comp
L power:+3V3 #PWR010
U 1 1 5BEA986B
P 1250 6700
F 0 "#PWR010" H 1250 6550 50  0001 C CNN
F 1 "+3V3" H 1250 6840 50  0000 C CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BEA99E8
P 1100 6600
F 0 "#PWR08" H 1100 6350 50  0001 C CNN
F 1 "GND" H 1100 6450 50  0000 C CNN
F 2 "" H 1100 6600 50  0001 C CNN
F 3 "" H 1100 6600 50  0001 C CNN
	1    1100 6600
	0    -1   1    0   
$EndComp
$Comp
L Device:Speaker LS1
U 1 1 5BEB8E9E
P 6850 4300
F 0 "LS1" H 6850 4100 50  0000 R CNN
F 1 "Speaker" H 7000 4000 50  0000 R CNN
F 2 "akizukit:small_speaker" H 6850 4100 50  0001 C CNN
F 3 "" H 6840 4250 50  0001 C CNN
	1    6850 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5BEBA3F6
P 6850 4600
F 0 "#PWR025" H 6850 4350 50  0001 C CNN
F 1 "GND" H 6850 4450 50  0000 C CNN
F 2 "" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0001 C CNN
	1    6850 4600
	1    0    0    -1  
$EndComp
Text Label 7000 4600 3    60   ~ 0
Speaker1
$Comp
L Device:R R9
U 1 1 5BE84A0C
P 3700 7600
F 0 "R9" V 3780 7600 50  0000 C CNN
F 1 "470" V 3700 7600 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3630 7600 50  0001 C CNN
F 3 "" H 3700 7600 50  0001 C CNN
	1    3700 7600
	0    -1   1    0   
$EndComp
Text Label 1100 6800 0    60   ~ 0
SDA
Text Label 1100 6900 0    60   ~ 0
SCL
Text Label 1100 3000 2    60   ~ 0
POT1
Wire Wire Line
	2850 4000 2900 4000
Wire Wire Line
	7250 1300 7250 1500
Wire Wire Line
	7250 1500 7150 1500
Wire Wire Line
	7200 1300 7250 1300
Wire Wire Line
	6850 1500 6750 1500
Wire Wire Line
	6750 1300 6750 1500
Wire Wire Line
	7250 1750 7250 1950
Wire Wire Line
	7250 1950 7150 1950
Wire Wire Line
	7200 1750 7250 1750
Wire Wire Line
	6850 1950 6750 1950
Wire Wire Line
	6750 1950 6750 1750
Wire Wire Line
	6650 1750 6750 1750
Connection ~ 6750 1750
Wire Wire Line
	700  2800 1150 2800
Wire Wire Line
	1650 1050 1650 1100
Wire Wire Line
	1650 1100 2150 1100
Connection ~ 2150 1100
Wire Wire Line
	2850 1100 2850 1050
Wire Wire Line
	2650 1050 2650 1100
Connection ~ 2650 1100
Connection ~ 7150 3050
Wire Wire Line
	7050 3500 7200 3500
Wire Wire Line
	7200 3250 7200 3500
Wire Wire Line
	7800 3250 7200 3250
Wire Wire Line
	7050 3050 7150 3050
Wire Wire Line
	7150 3300 7150 3050
Wire Wire Line
	7800 3300 7150 3300
Wire Wire Line
	7800 3700 7800 3800
Wire Wire Line
	6950 900  7000 900 
Wire Wire Line
	3900 1450 3900 1350
Wire Wire Line
	3750 1350 3900 1350
Wire Wire Line
	3900 950  3900 1050
Wire Wire Line
	3750 1050 3900 1050
Connection ~ 3900 1050
Connection ~ 3900 1350
Wire Wire Line
	2900 3900 2850 3900
Wire Wire Line
	2850 3800 2900 3800
Wire Wire Line
	2900 3700 2850 3700
Wire Wire Line
	2850 3600 2900 3600
Wire Wire Line
	2900 3500 2850 3500
Wire Wire Line
	2850 3400 2900 3400
Wire Wire Line
	2900 3200 2850 3200
Wire Wire Line
	2900 2900 2850 2900
Wire Wire Line
	2900 2800 2850 2800
Wire Wire Line
	1150 4000 1100 4000
Wire Wire Line
	1100 3900 1150 3900
Wire Wire Line
	1150 3800 1100 3800
Wire Wire Line
	1100 3700 1150 3700
Wire Wire Line
	1150 3600 1100 3600
Wire Wire Line
	1100 3500 1150 3500
Wire Wire Line
	1150 3400 1100 3400
Wire Wire Line
	1100 3300 1150 3300
Wire Wire Line
	1100 3200 1150 3200
Wire Wire Line
	1650 4650 1650 4500
Wire Wire Line
	2350 4600 2350 4500
Wire Wire Line
	6850 4500 6850 4600
Wire Wire Line
	6950 4500 6950 4600
Wire Wire Line
	3200 7350 3300 7350
Wire Wire Line
	2750 7350 2750 7600
Wire Wire Line
	3200 7600 3300 7600
Wire Wire Line
	3850 7350 3850 7600
Wire Wire Line
	3300 7300 3300 7350
Connection ~ 3300 7350
Wire Wire Line
	3300 7550 3300 7600
Connection ~ 3300 7600
Wire Wire Line
	2750 7350 2800 7350
Wire Wire Line
	2800 7600 2750 7600
$Comp
L Device:R R16
U 1 1 5BEB2713
P 4050 1300
F 0 "R16" V 4130 1300 50  0000 C CNN
F 1 "R" V 4050 1300 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3980 1300 50  0001 C CNN
F 3 "" H 4050 1300 50  0001 C CNN
	1    4050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1450 4350 1450
$Comp
L power:+6V #PWR012
U 1 1 5BE9F2CC
P 1450 750
F 0 "#PWR012" H 1450 600 50  0001 C CNN
F 1 "+6V" H 1450 890 50  0000 C CNN
F 2 "" H 1450 750 50  0001 C CNN
F 3 "" H 1450 750 50  0001 C CNN
	1    1450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1300 6800 1300
Wire Wire Line
	6750 1750 6800 1750
Wire Wire Line
	2150 1100 2650 1100
Wire Wire Line
	2650 1100 2850 1100
Wire Wire Line
	7150 3050 7200 3050
Wire Wire Line
	3900 1050 3900 1150
Wire Wire Line
	3900 1350 4350 1350
$Comp
L Connector_Generic:Conn_01x06 J13
U 1 1 5C42DB36
P 7300 700
F 0 "J13" V 7266 980 50  0000 L CNN
F 1 "Conn_01x06" V 7400 400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 7300 700 50  0001 C CNN
F 3 "~" H 7300 700 50  0001 C CNN
	1    7300 700 
	0    1    -1   0   
$EndComp
$Comp
L Connector:Micro_SD_Card_Det_Hirose_DM3AT J12
U 1 1 5C42EF1E
P 5250 1250
F 0 "J12" H 5850 1950 50  0000 C CNN
F 1 "Micro_SD_Card_Det_Hirose_DM3AT" H 5150 1950 50  0000 C CNN
F 2 "akizukit:SD_DM3AT-SF-PEJMS" H 7300 1950 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 5250 1350 50  0001 C CNN
	1    5250 1250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5C43434E
P 3000 7350
F 0 "SW3" H 3150 7400 50  0000 C CNN
F 1 "SW_Push" H 3000 7300 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 3000 7550 50  0001 C CNN
F 3 "" H 3000 7550 50  0001 C CNN
	1    3000 7350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5C43441A
P 3000 7600
F 0 "SW4" H 3150 7650 50  0000 C CNN
F 1 "SW_Push" H 3000 7550 50  0000 C CNN
F 2 "akizukit:SMD_SW" H 3000 7800 50  0001 C CNN
F 3 "" H 3000 7800 50  0001 C CNN
	1    3000 7600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5C451605
P 2150 1450
F 0 "J6" V 2023 1530 50  0000 L CNN
F 1 "Conn_01x02" V 2250 1200 50  0000 L CNN
F 2 "akizukit:Connector_EH_2pin" H 2150 1450 50  0001 C CNN
F 3 "~" H 2150 1450 50  0001 C CNN
	1    2150 1450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5C4745C4
P 7000 1750
F 0 "SW6" H 7150 1800 50  0000 C CNN
F 1 "SW_Push" H 7000 1700 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 7000 1950 50  0001 C CNN
F 3 "" H 7000 1950 50  0001 C CNN
	1    7000 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5C474BD1
P 7000 1300
F 0 "SW5" H 7150 1350 50  0000 C CNN
F 1 "SW_Push" H 7000 1250 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS" H 7000 1500 50  0001 C CNN
F 3 "" H 7000 1500 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7400 1750
Connection ~ 7250 1750
Connection ~ 7250 1300
Wire Wire Line
	2150 1050 2150 1100
Wire Wire Line
	1050 6700 1250 6700
Wire Wire Line
	1100 6800 1050 6800
Wire Wire Line
	7250 1300 7400 1300
Text Label 1100 4000 2    60   ~ 0
IO12
NoConn ~ 2850 3300
$Comp
L Switch:SW_SPDT SW1
U 1 1 5D640648
P 1750 1250
F 0 "SW1" H 2050 1200 50  0000 C CNN
F 1 "SW_SPDT" H 2050 1300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1750 1250 50  0001 C CNN
F 3 "" H 1750 1250 50  0001 C CNN
	1    1750 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1250 2150 1250
Wire Wire Line
	1950 1250 2050 1250
Wire Wire Line
	1550 1150 1450 1150
Wire Wire Line
	1450 1150 1450 750 
NoConn ~ 1550 1350
Text Label 2900 3900 0    60   ~ 0
IO4
Text Label 1100 7200 0    60   ~ 0
MISO
Text Label 1100 7600 0    60   ~ 0
SCK
Text Label 1100 7300 0    60   ~ 0
MOSI
Text Label 1100 7700 0    60   ~ 0
IO27
$Comp
L power:GND #PWR07
U 1 1 5D772B24
P 1050 7400
F 0 "#PWR07" H 1050 7150 50  0001 C CNN
F 1 "GND" H 1050 7250 50  0000 C CNN
F 2 "" H 1050 7400 50  0001 C CNN
F 3 "" H 1050 7400 50  0001 C CNN
	1    1050 7400
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR011
U 1 1 5D772BCD
P 1250 7500
F 0 "#PWR011" H 1250 7350 50  0001 C CNN
F 1 "+3V3" H 1250 7640 50  0000 C CNN
F 2 "" H 1250 7500 50  0001 C CNN
F 3 "" H 1250 7500 50  0001 C CNN
	1    1250 7500
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 6600 1050 6600
Wire Wire Line
	1250 7500 1050 7500
Wire Wire Line
	1100 7200 1050 7200
Wire Wire Line
	1100 7600 1050 7600
Wire Wire Line
	1050 7300 1100 7300
Wire Wire Line
	1050 7700 1100 7700
Wire Wire Line
	1050 6900 1100 6900
$Comp
L power:+3V3 #PWR016
U 1 1 5D62DA13
P 2400 5500
F 0 "#PWR016" H 2400 5350 50  0001 C CNN
F 1 "+3V3" H 2400 5640 50  0000 C CNN
F 2 "" H 2400 5500 50  0001 C CNN
F 3 "" H 2400 5500 50  0001 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
Text Label 2400 5600 0    60   ~ 0
IO14
Text Label 2400 5700 0    60   ~ 0
IO12
Text Label 2400 6000 0    60   ~ 0
SCK
Text Label 2400 6200 0    60   ~ 0
MOSI
Text Label 2400 5900 0    60   ~ 0
IO4
Text Label 900  5800 0    60   ~ 0
IO26
Text Label 900  5400 0    60   ~ 0
IO35
Text Label 900  6100 0    60   ~ 0
IO15
Text Label 900  6000 0    60   ~ 0
IO16
Text Label 900  5600 0    60   ~ 0
IO32
Text Label 900  5900 0    60   ~ 0
IO17
Text Label 900  5200 0    60   ~ 0
POT1
Text Label 900  5300 0    60   ~ 0
IO34
Text Label 2400 5800 0    60   ~ 0
IO5
Text Label 900  5700 0    60   ~ 0
IO27
$Comp
L power:+3V3 #PWR017
U 1 1 5D9D16B7
P 2400 6300
F 0 "#PWR017" H 2400 6150 50  0001 C CNN
F 1 "+3V3" H 2400 6440 50  0000 C CNN
F 2 "" H 2400 6300 50  0001 C CNN
F 3 "" H 2400 6300 50  0001 C CNN
	1    2400 6300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D9D17F6
P 900 5000
F 0 "#PWR05" H 900 4750 50  0001 C CNN
F 1 "GND" H 900 4850 50  0000 C CNN
F 2 "" H 900 5000 50  0001 C CNN
F 3 "" H 900 5000 50  0001 C CNN
	1    900  5000
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D9D1935
P 900 6200
F 0 "#PWR06" H 900 5950 50  0001 C CNN
F 1 "GND" H 900 6050 50  0000 C CNN
F 2 "" H 900 6200 50  0001 C CNN
F 3 "" H 900 6200 50  0001 C CNN
	1    900  6200
	-1   0    0    -1  
$EndComp
Text Label 2400 6100 0    60   ~ 0
MISO
$Comp
L Connector_Generic:Conn_01x13 J1
U 1 1 5DAB2103
P 700 5600
F 0 "J1" H 700 6300 50  0000 C CNN
F 1 "Conn_01x13" V 800 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 700 5600 50  0001 C CNN
F 3 "~" H 700 5600 50  0001 C CNN
	1    700  5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 1100 2150 1250
$Comp
L Device:R R3
U 1 1 5E6D835F
P 3250 6700
F 0 "R3" V 3330 6700 50  0000 C CNN
F 1 "1k" V 3250 6700 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3180 6700 50  0001 C CNN
F 3 "" H 3250 6700 50  0001 C CNN
	1    3250 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E706A28
P 3500 6800
F 0 "R5" V 3580 6800 50  0000 C CNN
F 1 "1k" V 3500 6800 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3430 6800 50  0001 C CNN
F 3 "" H 3500 6800 50  0001 C CNN
	1    3500 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 6800 2800 6800
Wire Wire Line
	3400 6700 3750 6700
Wire Wire Line
	3750 6700 3750 6800
Wire Wire Line
	3750 6800 3650 6800
Text Label 1100 3200 2    60   ~ 0
IO34
Wire Wire Line
	1150 2700 1000 2700
Wire Wire Line
	1150 3000 1100 3000
Wire Wire Line
	1000 3100 1000 2700
Wire Wire Line
	1000 3100 1150 3100
$Comp
L Device:R R15
U 1 1 5E846E86
P 4050 1050
F 0 "R15" V 4130 1050 50  0000 C CNN
F 1 "R" V 4050 1050 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3980 1050 50  0001 C CNN
F 3 "" H 4050 1050 50  0001 C CNN
	1    4050 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 1050 4350 1050
Text Notes 4100 1000 0    50   ~ 0
it may not be necessary
$Comp
L Connector_Generic:Conn_01x01 J14
U 1 1 5E8D777A
P 9500 6950
F 0 "J14" V 9372 7030 50  0000 L CNN
F 1 "Conn_01x01" V 9463 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 9500 6950 50  0001 C CNN
F 3 "~" H 9500 6950 50  0001 C CNN
	1    9500 6950
	0    1    1    0   
$EndComp
NoConn ~ 9500 6750
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 5E8EBECB
P 9650 6950
F 0 "J15" V 9522 7030 50  0000 L CNN
F 1 "Conn_01x01" V 9613 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 9650 6950 50  0001 C CNN
F 3 "~" H 9650 6950 50  0001 C CNN
	1    9650 6950
	0    1    1    0   
$EndComp
NoConn ~ 9650 6750
$Comp
L Connector_Generic:Conn_01x01 J16
U 1 1 5E8FD37C
P 9800 6950
F 0 "J16" V 9672 7030 50  0000 L CNN
F 1 "Conn_01x01" V 9763 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 9800 6950 50  0001 C CNN
F 3 "~" H 9800 6950 50  0001 C CNN
	1    9800 6950
	0    1    1    0   
$EndComp
NoConn ~ 9800 6750
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 5E90E8B1
P 9950 6950
F 0 "J17" V 9822 7030 50  0000 L CNN
F 1 "Conn_01x01" V 9913 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 9950 6950 50  0001 C CNN
F 3 "~" H 9950 6950 50  0001 C CNN
	1    9950 6950
	0    1    1    0   
$EndComp
NoConn ~ 9950 6750
$Comp
L Connector_Generic:Conn_01x01 J18
U 1 1 5E91FCD6
P 10100 6950
F 0 "J18" V 9972 7030 50  0000 L CNN
F 1 "Conn_01x01" V 10063 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 10100 6950 50  0001 C CNN
F 3 "~" H 10100 6950 50  0001 C CNN
	1    10100 6950
	0    1    1    0   
$EndComp
NoConn ~ 10100 6750
$Comp
L Connector_Generic:Conn_01x01 J19
U 1 1 5E968343
P 10250 6950
F 0 "J19" V 10122 7030 50  0000 L CNN
F 1 "Conn_01x01" V 10213 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 10250 6950 50  0001 C CNN
F 3 "~" H 10250 6950 50  0001 C CNN
	1    10250 6950
	0    1    1    0   
$EndComp
NoConn ~ 10250 6750
$Comp
L Connector_Generic:Conn_01x01 J20
U 1 1 5E96834A
P 10400 6950
F 0 "J20" V 10272 7030 50  0000 L CNN
F 1 "Conn_01x01" V 10363 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 10400 6950 50  0001 C CNN
F 3 "~" H 10400 6950 50  0001 C CNN
	1    10400 6950
	0    1    1    0   
$EndComp
NoConn ~ 10400 6750
$Comp
L Connector_Generic:Conn_01x01 J21
U 1 1 5E968351
P 10550 6950
F 0 "J21" V 10422 7030 50  0000 L CNN
F 1 "Conn_01x01" V 10513 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 10550 6950 50  0001 C CNN
F 3 "~" H 10550 6950 50  0001 C CNN
	1    10550 6950
	0    1    1    0   
$EndComp
NoConn ~ 10550 6750
$Comp
L Connector_Generic:Conn_01x01 J22
U 1 1 5E968358
P 10700 6950
F 0 "J22" V 10572 7030 50  0000 L CNN
F 1 "Conn_01x01" V 10663 7030 50  0000 L CNN
F 2 "akizukit:HOLE_3.2mm_nopad" H 10700 6950 50  0001 C CNN
F 3 "~" H 10700 6950 50  0001 C CNN
	1    10700 6950
	0    1    1    0   
$EndComp
NoConn ~ 10700 6750
Text Label 900  5500 0    60   ~ 0
IO33
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5F833EE4
P 1750 7600
F 0 "J5" V 1623 7780 50  0000 L CNN
F 1 "Conn_01x03" V 1850 7400 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 1750 7600 50  0001 C CNN
F 3 "~" H 1750 7600 50  0001 C CNN
	1    1750 7600
	-1   0    0    -1  
$EndComp
Text Label 1950 7600 0    60   ~ 0
IO25
Text Label 1950 7500 0    60   ~ 0
Speaker1
$Comp
L Connector_Generic:Conn_01x09 J8
U 1 1 5F85E037
P 2200 5900
F 0 "J8" H 2200 6400 50  0000 C CNN
F 1 "Conn_01x09" V 2300 6150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 2200 5900 50  0001 C CNN
F 3 "~" H 2200 5900 50  0001 C CNN
	1    2200 5900
	-1   0    0    -1  
$EndComp
Text Label 900  5100 0    60   ~ 0
LEDs
$Comp
L akizukit:TypeC U9
U 1 1 6065AA3B
P 9650 1150
F 0 "U9" H 9625 1725 50  0000 C CNN
F 1 "TypeC" H 9625 1634 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 9650 600 50  0001 C CNN
F 3 "" H 9650 600 50  0001 C CNN
	1    9650 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 6066F2B0
P 6650 1750
F 0 "#PWR038" H 6650 1500 50  0001 C CNN
F 1 "GND" V 6750 1650 50  0000 C CNN
F 2 "" H 6650 1750 50  0001 C CNN
F 3 "" H 6650 1750 50  0001 C CNN
	1    6650 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR041
U 1 1 6066FC77
P 7750 1300
F 0 "#PWR041" H 7750 1150 50  0001 C CNN
F 1 "+3V3" V 7800 1450 50  0000 C CNN
F 2 "" H 7750 1300 50  0001 C CNN
F 3 "" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR046
U 1 1 606A4A8C
P 10400 650
F 0 "#PWR046" H 10400 500 50  0001 C CNN
F 1 "+3V3" H 10500 750 50  0000 C CNN
F 2 "" H 10400 650 50  0001 C CNN
F 3 "" H 10400 650 50  0001 C CNN
	1    10400 650 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 606CB59A
P 10100 1500
F 0 "#PWR044" H 10100 1250 50  0001 C CNN
F 1 "GND" V 10200 1400 50  0000 C CNN
F 2 "" H 10100 1500 50  0001 C CNN
F 3 "" H 10100 1500 50  0001 C CNN
	1    10100 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 800  9150 800 
Wire Wire Line
	9150 800  9150 1500
Wire Wire Line
	10000 800  10100 800 
Wire Wire Line
	10100 800  10100 1500
Wire Wire Line
	10000 1500 10100 1500
Wire Wire Line
	9250 1500 9150 1500
Wire Wire Line
	9050 900  9250 900 
Wire Wire Line
	9050 900  9050 1400
Wire Wire Line
	9050 1400 9250 1400
Connection ~ 9050 900 
Wire Wire Line
	10200 900  10000 900 
Wire Wire Line
	10200 900  10200 1400
Wire Wire Line
	10200 1400 10000 1400
Connection ~ 10200 900 
Text Label 10000 1200 0    50   ~ 0
D+
Text Label 10000 1100 0    50   ~ 0
D-
NoConn ~ 9250 1300
NoConn ~ 10000 1000
Text Label 9250 1100 2    50   ~ 0
D+
Text Label 9250 1200 2    50   ~ 0
D-
$Comp
L Device:R R31
U 1 1 6078EFA7
P 8950 1450
F 0 "R31" V 9030 1450 50  0000 C CNN
F 1 "1K" V 8950 1450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 8880 1450 50  0001 C CNN
F 3 "" H 8950 1450 50  0001 C CNN
	1    8950 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 6078FC82
P 10300 1450
F 0 "R32" V 10380 1450 50  0000 C CNN
F 1 "1K" V 10300 1450 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 10230 1450 50  0001 C CNN
F 3 "" H 10300 1450 50  0001 C CNN
	1    10300 1450
	1    0    0    1   
$EndComp
Wire Wire Line
	9250 1000 8950 1000
Wire Wire Line
	8950 1000 8950 1300
Wire Wire Line
	10000 1300 10300 1300
$Comp
L power:GND #PWR042
U 1 1 607B8C41
P 8950 1600
F 0 "#PWR042" H 8950 1350 50  0001 C CNN
F 1 "GND" V 9050 1500 50  0000 C CNN
F 2 "" H 8950 1600 50  0001 C CNN
F 3 "" H 8950 1600 50  0001 C CNN
	1    8950 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 607B90CE
P 10300 1600
F 0 "#PWR045" H 10300 1350 50  0001 C CNN
F 1 "GND" V 10400 1500 50  0000 C CNN
F 2 "" H 10300 1600 50  0001 C CNN
F 3 "" H 10300 1600 50  0001 C CNN
	1    10300 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:Polyfuse_Small F1
U 1 1 607E2A81
P 10300 650
F 0 "F1" V 10095 650 50  0000 C CNN
F 1 "Polyfuse_Small" V 10186 650 50  0000 C CNN
F 2 "akizukit:SMD-1608" H 10350 450 50  0001 L CNN
F 3 "~" H 10300 650 50  0001 C CNN
	1    10300 650 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 650  9050 900 
Wire Wire Line
	9050 650  10200 650 
Wire Wire Line
	10200 650  10200 900 
Connection ~ 10200 650 
Wire Wire Line
	7750 1300 7700 1300
Wire Wire Line
	7700 1300 7700 1750
Wire Wire Line
	6750 1500 6750 1750
Connection ~ 6750 1500
Wire Notes Line
	9000 4250 11250 4250
Wire Notes Line
	8650 4250 6550 4250
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 60D94866
P 850 6800
F 0 "J2" H 930 6792 50  0000 L CNN
F 1 "Conn_01x04" V 950 6550 50  0000 L CNN
F 2 "Connector:NS-Tech_Grove_1x04_P2mm_Vertical" H 850 6800 50  0001 C CNN
F 3 "~" H 850 6800 50  0001 C CNN
	1    850  6800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 6143F4AE
P 850 7400
F 0 "J3" V 816 7680 50  0000 L CNN
F 1 "Conn_01x06" V 950 7100 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 850 7400 50  0001 C CNN
F 3 "~" H 850 7400 50  0001 C CNN
	1    850  7400
	-1   0    0    -1  
$EndComp
Text Label 10100 1050 0    60   ~ 0
GNDThin
$Comp
L power:GND #PWR043
U 1 1 6171656B
P 9150 1500
F 0 "#PWR043" H 9150 1250 50  0001 C CNN
F 1 "GND" V 9250 1400 50  0000 C CNN
F 2 "" H 9150 1500 50  0001 C CNN
F 3 "" H 9150 1500 50  0001 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 750  1650 750 
Wire Wire Line
	3900 1150 4050 1150
Wire Wire Line
	2450 750  2650 750 
$Comp
L power:GND #PWR013
U 1 1 607E861E
P 1550 4500
F 0 "#PWR013" H 1550 4250 50  0001 C CNN
F 1 "GND" H 1555 4327 50  0000 C CNN
F 2 "" H 1550 4500 50  0001 C CNN
F 3 "" H 1550 4500 50  0001 C CNN
	1    1550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BE2FC35
P 700 3100
F 0 "#PWR03" H 700 2850 50  0001 C CNN
F 1 "GND" H 700 2950 50  0000 C CNN
F 2 "" H 700 3100 50  0001 C CNN
F 3 "" H 700 3100 50  0001 C CNN
	1    700  3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 607EA6C2
P 2850 2700
F 0 "#PWR020" H 2850 2450 50  0001 C CNN
F 1 "GND" H 2700 2650 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6082BC5E
P 850 800
F 0 "#PWR04" H 850 550 50  0001 C CNN
F 1 "GND" H 855 627 50  0000 C CNN
F 2 "" H 850 800 50  0001 C CNN
F 3 "" H 850 800 50  0001 C CNN
	1    850  800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6082C571
P 850 800
F 0 "#FLG03" H 850 875 50  0001 C CNN
F 1 "PWR_FLAG" H 850 973 50  0000 C CNN
F 2 "" H 850 800 50  0001 C CNN
F 3 "~" H 850 800 50  0001 C CNN
	1    850  800 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6082C6B0
P 700 800
F 0 "#FLG01" H 700 875 50  0001 C CNN
F 1 "PWR_FLAG" H 700 973 50  0000 C CNN
F 2 "" H 700 800 50  0001 C CNN
F 3 "~" H 700 800 50  0001 C CNN
	1    700  800 
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR01
U 1 1 6082D40D
P 700 800
F 0 "#PWR01" H 700 650 50  0001 C CNN
F 1 "+6V" H 715 973 50  0000 C CNN
F 2 "" H 700 800 50  0001 C CNN
F 3 "" H 700 800 50  0001 C CNN
	1    700  800 
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:AMS1117CD-3.3 U3
U 1 1 5C4B445A
P 2150 750
F 0 "U3" H 2150 992 50  0000 C CNN
F 1 "AMS1117CD-3.3" H 2150 901 50  0000 C CNN
F 2 "akizukit:AZ1086H" H 2150 950 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2250 500 50  0001 C CNN
	1    2150 750 
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:CP2104 U10
U 1 1 60941A0E
P 9750 3050
F 0 "U10" H 9350 2200 50  0000 C CNN
F 1 "CP2104" H 9350 2100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 9900 2100 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 9200 4300 50  0001 C CNN
	1    9750 3050
	1    0    0    -1  
$EndComp
$Comp
L ume-boshi:OSRB38C9AA U8
U 1 1 60C78528
P 6600 6900
F 0 "U8" H 6550 7100 50  0000 L CNN
F 1 "OSRB38C9AA" H 6350 6700 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 6600 6700 50  0001 C CNN
F 3 "" H 6600 6700 50  0001 C CNN
	1    6600 6900
	1    0    0    -1  
$EndComp
$Comp
L ume-boshi:OSRB38C9AA U7
U 1 1 60CBAD3C
P 5900 6900
F 0 "U7" H 5850 7100 50  0000 L CNN
F 1 "OSRB38C9AA" H 5650 6700 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 5900 6700 50  0001 C CNN
F 3 "" H 5900 6700 50  0001 C CNN
	1    5900 6900
	1    0    0    -1  
$EndComp
$Comp
L ume-boshi:OSRB38C9AA U6
U 1 1 60CBC1C9
P 5200 6900
F 0 "U6" H 5150 7100 50  0000 L CNN
F 1 "OSRB38C9AA" H 4950 6700 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 5200 6700 50  0001 C CNN
F 3 "" H 5200 6700 50  0001 C CNN
	1    5200 6900
	1    0    0    -1  
$EndComp
$Comp
L ume-boshi:OSRB38C9AA U4
U 1 1 60CBC1CF
P 4500 6900
F 0 "U4" H 4450 7100 50  0000 L CNN
F 1 "OSRB38C9AA" H 4250 6700 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x03_P1.27mm_Vertical" H 4500 6700 50  0001 C CNN
F 3 "" H 4500 6700 50  0001 C CNN
	1    4500 6900
	1    0    0    -1  
$EndComp
Text Label 1550 6000 0    60   ~ 0
SSW1
Text Label 1550 6100 0    60   ~ 0
SSW2
Wire Wire Line
	2800 6700 3100 6700
Text Label 1550 5300 0    60   ~ 0
SDIP1
Text Label 1550 5400 0    60   ~ 0
SDIP2
Connection ~ 700  2800
NoConn ~ 9050 3250
NoConn ~ 9050 3350
NoConn ~ 9050 3450
NoConn ~ 9050 3550
NoConn ~ 9050 3750
NoConn ~ 10450 3650
NoConn ~ 10450 3750
NoConn ~ 10450 3350
NoConn ~ 10450 2750
NoConn ~ 10450 2550
NoConn ~ 10450 2450
NoConn ~ 9950 2150
Wire Wire Line
	9950 4050 9850 4050
Wire Wire Line
	9850 4050 9750 4050
Connection ~ 9850 4050
Wire Wire Line
	9550 2150 9750 2150
Connection ~ 9550 2150
Wire Wire Line
	9550 2050 9550 2150
Text Label 9050 3050 2    50   ~ 0
D+
Text Label 9050 2950 2    50   ~ 0
D-
Text Label 10450 3250 0    60   ~ 0
RTS
Text Label 10450 2650 0    60   ~ 0
DTR
Text Label 9950 4050 0    60   ~ 0
GNDThin
Text Label 9550 2050 2    60   ~ 0
3v3Thin
Text Label 10450 3050 0    60   ~ 0
RXD
Text Label 10450 2950 0    60   ~ 0
TXD
$Comp
L Device:C_Small C13
U 1 1 612EC14D
P 9850 2050
F 0 "C13" V 9621 2050 50  0000 C CNN
F 1 "C_Small" V 9712 2050 50  0000 C CNN
F 2 "akizukit:SMD-2012" H 9850 2050 50  0001 C CNN
F 3 "~" H 9850 2050 50  0001 C CNN
	1    9850 2050
	0    1    1    0   
$EndComp
Text Label 8800 2650 2    60   ~ 0
GNDThin
Wire Wire Line
	9750 2050 9550 2050
Wire Wire Line
	10050 2050 9950 2050
Wire Wire Line
	8700 2350 8800 2350
Text Label 10750 3550 0    60   ~ 0
3v3Thin
$Comp
L Device:R R33
U 1 1 61381CFA
P 10600 3550
F 0 "R33" V 10680 3550 50  0000 C CNN
F 1 "1K" V 10600 3550 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 10530 3550 50  0001 C CNN
F 3 "" H 10600 3550 50  0001 C CNN
	1    10600 3550
	0    -1   1    0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 61382333
P 8800 2450
F 0 "C12" V 8700 2450 50  0000 C CNN
F 1 "C_Small" V 8900 2450 50  0000 C CNN
F 2 "akizukit:SMD-2012" H 8800 2450 50  0001 C CNN
F 3 "~" H 8800 2450 50  0001 C CNN
	1    8800 2450
	1    0    0    -1  
$EndComp
Text Label 9050 650  2    60   ~ 0
VBUS
Connection ~ 8800 2350
Wire Wire Line
	8800 2350 9050 2350
Text Label 8700 2350 2    60   ~ 0
VBUS
Wire Wire Line
	8800 2650 8800 2550
Wire Wire Line
	9050 2350 9050 2450
Text Label 10050 2050 0    60   ~ 0
GNDThin
$Comp
L ume-boshi:MCP73855T-I U1
U 1 1 6143697E
P 1950 2150
F 0 "U1" H 1950 2575 50  0000 C CNN
F 1 "MCP73855T-I" H 1950 2484 50  0000 C CNN
F 2 "akizukit:MCP73855" H 1950 1850 50  0001 C CNN
F 3 "" H 1950 1850 50  0001 C CNN
	1    1950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1950 1450 1950
Text Label 1350 1950 2    60   ~ 0
VBUS
Wire Wire Line
	1450 1950 1450 2050
Wire Wire Line
	1450 2050 1550 2050
Connection ~ 1450 1950
Wire Wire Line
	1450 1950 1550 1950
Wire Wire Line
	1450 2050 1450 2150
Wire Wire Line
	1450 2150 1550 2150
Connection ~ 1450 2050
Wire Wire Line
	1450 2150 1450 2500
Wire Wire Line
	1450 2500 2350 2500
Wire Wire Line
	2350 2500 2350 2350
Connection ~ 1450 2150
Text Label 1350 2250 2    60   ~ 0
GNDThin
Text Label 2350 2050 0    60   ~ 0
GNDThin
Wire Wire Line
	1350 2250 1400 2250
Wire Wire Line
	1400 2250 1400 2350
Wire Wire Line
	1400 2350 1550 2350
Connection ~ 1400 2250
Wire Wire Line
	1400 2250 1550 2250
$Comp
L Device:C_Small C4
U 1 1 6149AD4B
P 2800 1950
F 0 "C4" V 2571 1950 50  0000 C CNN
F 1 "C_Small" V 2662 1950 50  0000 C CNN
F 2 "akizukit:SMD-2012" H 2800 1950 50  0001 C CNN
F 3 "~" H 2800 1950 50  0001 C CNN
	1    2800 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1950 2900 1950
Wire Wire Line
	2700 1950 2350 1950
Text Label 2050 1200 2    50   ~ 0
LiPo+
Wire Wire Line
	2050 1200 2050 1250
Connection ~ 2050 1250
Text Label 2750 2250 2    50   ~ 0
LiPo+
Wire Wire Line
	2350 2150 2450 2150
Wire Wire Line
	2450 2250 2350 2250
Wire Wire Line
	2450 2150 2450 2250
Connection ~ 2450 2150
Wire Wire Line
	9050 2650 9050 2450
Connection ~ 9050 2450
Text Label 10500 650  0    60   ~ 0
3v3Thin
Wire Wire Line
	10500 650  10400 650 
Connection ~ 10400 650 
Connection ~ 4050 1150
Wire Wire Line
	4050 1150 4350 1150
Wire Wire Line
	1800 6700 1800 6800
$Comp
L ume-boshi:DIP_SW_4 SW2
U 1 1 5D419D95
P 2300 6850
F 0 "SW2" H 2300 6900 60  0000 C CNN
F 1 "DIP_SW_4" H 2300 6800 60  0000 C CNN
F 2 "akizukit:EHS104LD" H 2300 6900 60  0001 C CNN
F 3 "" H 2300 6900 60  0000 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
Connection ~ 1450 750 
Connection ~ 2150 1250
Connection ~ 2650 750 
Wire Wire Line
	2650 750  2850 750 
Connection ~ 1650 750 
Wire Wire Line
	1650 750  1850 750 
Text Label 1550 5500 0    60   ~ 0
SDIP3
Text Label 1550 5600 0    60   ~ 0
SDIP4
$Comp
L Device:R R4
U 1 1 6169D42B
P 3250 6900
F 0 "R4" V 3330 6900 50  0000 C CNN
F 1 "1k" V 3250 6900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3180 6900 50  0001 C CNN
F 3 "" H 3250 6900 50  0001 C CNN
	1    3250 6900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 6169D431
P 3500 7000
F 0 "R6" V 3580 7000 50  0000 C CNN
F 1 "1k" V 3500 7000 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3430 7000 50  0001 C CNN
F 3 "" H 3500 7000 50  0001 C CNN
	1    3500 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 7000 2800 7000
Wire Wire Line
	3400 6900 3750 6900
Wire Wire Line
	3750 6900 3750 7000
Wire Wire Line
	3750 7000 3650 7000
Wire Wire Line
	2800 6900 3100 6900
Connection ~ 1800 6800
Wire Wire Line
	1800 6800 1800 6900
Connection ~ 1800 6900
Wire Wire Line
	1800 6900 1800 7000
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 61779E8C
P 2200 5000
F 0 "J7" V 2073 5180 50  0000 L CNN
F 1 "Conn_01x03" V 2300 4800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2200 5000 50  0001 C CNN
F 3 "~" H 2200 5000 50  0001 C CNN
	1    2200 5000
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 6177AA23
P 2950 5000
F 0 "J9" V 2823 5180 50  0000 L CNN
F 1 "Conn_01x03" V 3050 4800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2950 5000 50  0001 C CNN
F 3 "~" H 2950 5000 50  0001 C CNN
	1    2950 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6177AC4E
P 2600 5100
F 0 "#PWR018" H 2600 4850 50  0001 C CNN
F 1 "GND" H 2600 4950 50  0000 C CNN
F 2 "" H 2600 5100 50  0001 C CNN
F 3 "" H 2600 5100 50  0001 C CNN
	1    2600 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2600 5100 2400 5100
Wire Wire Line
	2600 5100 2600 4900
Wire Wire Line
	2600 4900 2400 4900
Connection ~ 2600 5100
$Comp
L power:+3V3 #PWR015
U 1 1 6179E284
P 2400 5000
F 0 "#PWR015" H 2400 4850 50  0001 C CNN
F 1 "+3V3" H 2400 5140 50  0000 C CNN
F 2 "" H 2400 5000 50  0001 C CNN
F 3 "" H 2400 5000 50  0001 C CNN
	1    2400 5000
	0    1    1    0   
$EndComp
Connection ~ 7700 1300
Connection ~ 7200 3500
Connection ~ 9150 1500
Connection ~ 10100 1500
$Comp
L power:GND #PWR022
U 1 1 6194F9C4
P 3000 1950
F 0 "#PWR022" H 3000 1700 50  0001 C CNN
F 1 "GND" H 3000 1800 50  0000 C CNN
F 2 "" H 3000 1950 50  0001 C CNN
F 3 "" H 3000 1950 50  0001 C CNN
	1    3000 1950
	-1   0    0    -1  
$EndComp
Wire Notes Line
	11750 4250 11750 2400
Wire Notes Line
	6550 400  6550 6500
Connection ~ 2850 750 
Wire Wire Line
	2450 4500 2500 4500
Wire Wire Line
	2500 4450 2500 4500
Connection ~ 2500 4500
Wire Wire Line
	2500 4500 2600 4500
$Comp
L Device:R R2
U 1 1 61CE6C0F
P 3150 900
F 0 "R2" V 3230 900 50  0000 C CNN
F 1 "2K" V 3150 900 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3080 900 50  0001 C CNN
F 3 "" H 3150 900 50  0001 C CNN
	1    3150 900 
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61CE6C15
P 3150 1350
F 0 "#PWR023" H 3150 1100 50  0001 C CNN
F 1 "GND" H 3155 1177 50  0000 C CNN
F 2 "" H 3150 1350 50  0001 C CNN
F 3 "" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 750  2850 750 
$Comp
L Device:LED D1
U 1 1 61CE6C1C
P 3150 1200
F 0 "D1" V 3189 1278 50  0000 L CNN
F 1 "LED" V 3098 1278 50  0000 L CNN
F 2 "akizukit:2012LED" H 3150 1200 50  0001 C CNN
F 3 "~" H 3150 1200 50  0001 C CNN
	1    3150 1200
	0    1    -1   0   
$EndComp
Connection ~ 1150 2700
$Comp
L power:+3V3 #PWR024
U 1 1 5BE86C9B
P 3700 2450
F 0 "#PWR024" H 3700 2300 50  0001 C CNN
F 1 "+3V3" H 3700 2590 50  0000 C CNN
F 2 "" H 3700 2450 50  0001 C CNN
F 3 "" H 3700 2450 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BE86D5D
P 3700 2650
F 0 "R7" V 3780 2650 50  0000 C CNN
F 1 "2.2K" V 3700 2650 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3630 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5BE87109
P 3850 2750
F 0 "R10" V 3930 2750 50  0000 C CNN
F 1 "2.2K" V 3850 2750 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3780 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 2450 3700 2500
Wire Wire Line
	3700 2500 3850 2500
Wire Wire Line
	3850 2500 3850 2600
Text Label 3600 2800 2    60   ~ 0
SDA
Text Label 3600 2900 2    60   ~ 0
SCL
Wire Wire Line
	3600 2800 3700 2800
Wire Wire Line
	3600 2900 3850 2900
Connection ~ 3700 2500
Connection ~ 3700 2800
Connection ~ 3850 2900
Wire Wire Line
	3700 2800 4400 2800
Wire Wire Line
	3850 2900 4400 2900
Wire Wire Line
	5850 2500 5850 2750
Wire Wire Line
	5850 2500 5600 2500
Wire Wire Line
	6250 2400 6250 2750
Wire Wire Line
	5600 2400 6250 2400
NoConn ~ 4400 3400
NoConn ~ 4400 3300
Connection ~ 4400 2600
Wire Wire Line
	4300 2600 4400 2600
Wire Wire Line
	4250 3100 4400 3100
$Comp
L power:+3V3 #PWR029
U 1 1 60FE8510
P 4250 3100
F 0 "#PWR029" H 4250 2950 50  0001 C CNN
F 1 "+3V3" H 4250 3240 50  0000 C CNN
F 2 "" H 4250 3100 50  0001 C CNN
F 3 "" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR031
U 1 1 60FE84C0
P 4300 2300
F 0 "#PWR031" H 4300 2150 50  0001 C CNN
F 1 "+3V3" H 4300 2440 50  0000 C CNN
F 2 "" H 4300 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0001 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
NoConn ~ 4400 3000
Connection ~ 5850 2750
Wire Wire Line
	5900 2750 5850 2750
Wire Wire Line
	5850 2850 5850 2750
Wire Wire Line
	5700 2300 5600 2300
Wire Wire Line
	6000 2300 5900 2300
Wire Wire Line
	6250 2750 6250 2850
Connection ~ 6250 2750
Wire Wire Line
	6200 2750 6250 2750
Wire Wire Line
	4400 2500 4400 2600
Wire Wire Line
	4300 2500 4400 2500
Wire Wire Line
	4300 2400 4300 2500
$Comp
L Device:R R17
U 1 1 60F74E4B
P 4150 2600
F 0 "R17" V 4230 2600 50  0000 C CNN
F 1 "2.2K" V 4150 2600 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 4080 2600 50  0001 C CNN
F 3 "" H 4150 2600 50  0001 C CNN
	1    4150 2600
	0    1    -1   0   
$EndComp
Connection ~ 4300 2300
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 60F725D2
P 4100 2400
F 0 "J11" H 4100 2150 50  0000 C CNN
F 1 "Conn_01x02" H 4250 2200 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4100 2400 50  0001 C CNN
F 3 "~" H 4100 2400 50  0001 C CNN
	1    4100 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 60F27FA9
P 6050 2750
F 0 "Y1" H 6050 3018 50  0000 C CNN
F 1 "Crystal" H 6050 2927 50  0000 C CNN
F 2 "akizukit:FC-135" H 6050 2750 50  0001 C CNN
F 3 "~" H 6050 2750 50  0001 C CNN
	1    6050 2750
	1    0    0    -1  
$EndComp
Connection ~ 4400 3700
Wire Wire Line
	4400 3700 4400 3600
Connection ~ 4400 3800
Wire Wire Line
	4400 3800 4400 3700
Connection ~ 4400 3900
Wire Wire Line
	4400 3900 4400 3800
Wire Wire Line
	4300 3900 4400 3900
$Comp
L Device:C_Small C9
U 1 1 60EF6CFB
P 6250 2950
F 0 "C9" H 6158 2904 50  0000 R CNN
F 1 "C_Small" V 6158 2995 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 6250 2950 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 60EF6891
P 5850 2950
F 0 "C8" H 5758 2904 50  0000 R CNN
F 1 "C_Small" H 5758 2995 50  0000 R CNN
F 2 "akizukit:SMD-2012" H 5850 2950 50  0001 C CNN
F 3 "~" H 5850 2950 50  0001 C CNN
	1    5850 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 60EF52C7
P 5800 2300
F 0 "C7" V 5571 2300 50  0000 C CNN
F 1 "C_Small" V 5662 2300 50  0000 C CNN
F 2 "akizukit:SMD-2012" H 5800 2300 50  0001 C CNN
F 3 "~" H 5800 2300 50  0001 C CNN
	1    5800 2300
	0    1    1    0   
$EndComp
NoConn ~ 5600 2700
NoConn ~ 5600 2600
Wire Wire Line
	5700 2900 5600 2900
$Comp
L power:+3V3 #PWR033
U 1 1 60ED2458
P 5700 2900
F 0 "#PWR033" H 5700 2750 50  0001 C CNN
F 1 "+3V3" H 5700 3040 50  0000 C CNN
F 2 "" H 5700 2900 50  0001 C CNN
F 3 "" H 5700 2900 50  0001 C CNN
	1    5700 2900
	1    0    0    -1  
$EndComp
Connection ~ 4400 2300
Wire Wire Line
	4400 2300 4400 2400
Wire Wire Line
	4300 2300 4400 2300
$Comp
L power:+3V3 #PWR030
U 1 1 60EBB9A4
P 4300 2300
F 0 "#PWR030" H 4300 2150 50  0001 C CNN
F 1 "+3V3" H 4300 2440 50  0000 C CNN
F 2 "" H 4300 2300 50  0001 C CNN
F 3 "" H 4300 2300 50  0001 C CNN
	1    4300 2300
	1    0    0    -1  
$EndComp
NoConn ~ 5600 3900
NoConn ~ 5600 3800
NoConn ~ 5600 3700
NoConn ~ 5600 3600
NoConn ~ 5600 3500
NoConn ~ 5600 3400
NoConn ~ 5600 3300
NoConn ~ 5600 3200
NoConn ~ 5600 3100
$Comp
L ume-boshi:BNO085 U5
U 1 1 60E5F4D7
P 5000 3100
F 0 "U5" H 5000 4125 50  0000 C CNN
F 1 "BNO085" H 5000 4034 50  0000 C CNN
F 2 "Package_LGA:LGA-28_5.2x3.8mm_P0.5mm" H 5000 2300 50  0001 C CNN
F 3 "" H 5000 2300 50  0001 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4600 6950 4600
Wire Notes Line
	3400 500  3400 4150
Wire Notes Line
	3400 4150 6550 4150
Text Label 1550 5100 0    60   ~ 0
SLEDs
Text Label 1550 5200 0    60   ~ 0
SPOT
$Comp
L Connector_Generic:Conn_01x13 J4
U 1 1 61EA99AD
P 1350 5600
F 0 "J4" H 1350 6300 50  0000 C CNN
F 1 "Conn_01x13" V 1450 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x13_P2.54mm_Vertical" H 1350 5600 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	-1   0    0    -1  
$EndComp
Text Label 1550 5000 0    60   ~ 0
SGND
$Comp
L Connector_Generic:Conn_01x09 J10
U 1 1 61EDFF6B
P 2950 5900
F 0 "J10" H 2950 6400 50  0000 C CNN
F 1 "Conn_01x09" V 3050 6150 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 2950 5900 50  0001 C CNN
F 3 "~" H 2950 5900 50  0001 C CNN
	1    2950 5900
	-1   0    0    -1  
$EndComp
Text Label 3150 5500 0    60   ~ 0
S3V3
Text Label 3150 6300 0    60   ~ 0
S3V3
Text Label 1550 5900 0    60   ~ 0
SSERVO2
Text Label 1550 5800 0    60   ~ 0
SSERVO1
Text Notes 1300 4850 0    50   ~ 0
swarm
Text Notes 2900 5350 0    50   ~ 0
swarm
Text Label 1550 6200 0    60   ~ 0
SGND
Text Label 3300 7550 0    60   ~ 0
SSW2
Text Label 2800 6700 0    60   ~ 0
SDIP1
Text Label 2800 6800 0    60   ~ 0
SDIP2
Text Label 2800 6900 0    60   ~ 0
SDIP3
Text Label 2800 7000 0    60   ~ 0
SDIP4
Text Label 3300 7300 0    60   ~ 0
SSW1
Text Label 5400 5750 2    60   ~ 0
SSERVO2
Text Label 5400 4550 2    60   ~ 0
SSERVO1
Text Label 4450 7600 2    60   ~ 0
SLEDs
Text Label 6300 7450 0    60   ~ 0
SPOT
Wire Wire Line
	4450 7600 4500 7600
$Sheet
S 4500 7400 650  250 
U 61FE4A46
F0 "sheet61FE4A3F" 60
F1 "ws2812B.sch" 60
F2 "DIN" I L 4500 7600 60 
F3 "DOUT" I R 5150 7600 60 
F4 "GND" I L 4500 7450 50 
F5 "3v3" I R 5150 7450 50 
$EndSheet
NoConn ~ 5350 7600
Wire Wire Line
	5350 7600 5150 7600
Text Label 5150 7450 0    60   ~ 0
S3V3
Text Label 4500 7450 2    60   ~ 0
SGND
Text Label 3550 6700 0    60   ~ 0
SGND
Wire Wire Line
	3750 6900 3750 6800
Connection ~ 3750 6900
Connection ~ 3750 6800
Text Label 1800 6700 2    60   ~ 0
S3V3
Text Label 2750 7350 2    60   ~ 0
S3V3
Wire Wire Line
	3300 7350 3550 7350
Wire Wire Line
	3300 7600 3550 7600
$Comp
L Device:R_POT RV1
U 1 1 620D7482
P 6100 7600
F 0 "RV1" V 5986 7600 50  0000 C CNN
F 1 "R_POT" V 6300 7600 50  0000 C CNN
F 2 "akizukit:S_POT_SMD" H 6100 7600 50  0001 C CNN
F 3 "~" H 6100 7600 50  0001 C CNN
	1    6100 7600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 7600 6350 7600
Connection ~ 6300 7600
Wire Wire Line
	6300 7450 6300 7600
Wire Wire Line
	6100 7450 6300 7450
Wire Wire Line
	5950 7600 5850 7600
Wire Wire Line
	6250 7600 6300 7600
$Comp
L Device:R R26
U 1 1 620D748E
P 6500 7600
F 0 "R26" V 6580 7600 50  0000 C CNN
F 1 "1K" V 6500 7600 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 6430 7600 50  0001 C CNN
F 3 "" H 6500 7600 50  0001 C CNN
	1    6500 7600
	0    -1   1    0   
$EndComp
Text Label 6650 7600 0    60   ~ 0
SGND
Text Label 5850 7600 2    60   ~ 0
S3V3
Text Label 1550 5700 0    60   ~ 0
SIR1
Text Label 3150 5600 0    60   ~ 0
SIR2
Text Label 3150 5700 0    60   ~ 0
SIR3
Text Label 3150 5800 0    60   ~ 0
SIR4
Text Label 3150 5900 0    60   ~ 0
SIRRecv1
Text Label 3150 6000 0    60   ~ 0
SIRRecv2
Text Label 3150 6100 0    60   ~ 0
SIRRecv3
Text Label 3150 6200 0    60   ~ 0
SIRRecv4
Text Label 4300 6800 2    60   ~ 0
SIRRecv1
Text Label 5000 6800 2    60   ~ 0
SIRRecv2
Text Label 5700 6800 2    60   ~ 0
SIRRecv3
Text Label 6400 6800 2    60   ~ 0
SIRRecv4
Text Label 4300 6900 2    60   ~ 0
SGND
Text Label 4300 7000 2    60   ~ 0
S3V3
Wire Wire Line
	4300 6900 5000 6900
Connection ~ 5000 6900
Wire Wire Line
	5000 6900 5700 6900
Connection ~ 5700 6900
Wire Wire Line
	5700 6900 6400 6900
Wire Wire Line
	4300 7000 5000 7000
Connection ~ 5000 7000
Wire Wire Line
	5000 7000 5700 7000
Connection ~ 5700 7000
Wire Wire Line
	5700 7000 6400 7000
Connection ~ 4900 5800
Wire Wire Line
	4900 6400 4800 6400
Wire Wire Line
	4900 5800 4900 6400
Connection ~ 4900 5200
Wire Wire Line
	4900 5800 4800 5800
Wire Wire Line
	4900 5200 4900 5800
Wire Wire Line
	4900 4600 4900 5200
Wire Wire Line
	4800 4600 4900 4600
Text Label 4300 4300 2    60   ~ 0
SIR1
Text Label 4300 6100 2    60   ~ 0
SIR4
Text Label 4300 5500 2    60   ~ 0
SIR3
Text Label 4300 4900 2    60   ~ 0
SIR2
Text Label 3800 6400 1    60   ~ 0
S3V3
Text Label 3800 5800 1    60   ~ 0
S3V3
Text Label 3800 5200 1    60   ~ 0
S3V3
Text Label 3800 4600 1    60   ~ 0
S3V3
Text Label 4900 4600 1    60   ~ 0
SGND
$Comp
L Device:R R18
U 1 1 60C9F618
P 4450 4300
F 0 "R18" H 4520 4346 50  0000 L CNN
F 1 "R" H 4520 4255 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 4380 4300 50  0001 C CNN
F 3 "~" H 4450 4300 50  0001 C CNN
	1    4450 4300
	0    -1   1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 60C9F60C
P 3950 4600
F 0 "R11" H 4020 4646 50  0000 L CNN
F 1 "R" H 4020 4555 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 3880 4600 50  0001 C CNN
F 3 "~" H 3950 4600 50  0001 C CNN
	1    3950 4600
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 60C9F606
P 4250 4600
F 0 "D2" V 4289 4483 50  0000 R CNN
F 1 "LED" V 4198 4483 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4250 4600 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 60C91B6F
P 4450 4900
F 0 "R19" H 4520 4946 50  0000 L CNN
F 1 "R" H 4520 4855 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 4380 4900 50  0001 C CNN
F 3 "~" H 4450 4900 50  0001 C CNN
	1    4450 4900
	0    -1   1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 60C91B63
P 3950 5200
F 0 "R12" H 4020 5246 50  0000 L CNN
F 1 "R" H 4020 5155 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 3880 5200 50  0001 C CNN
F 3 "~" H 3950 5200 50  0001 C CNN
	1    3950 5200
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 60C91B5D
P 4250 5200
F 0 "D3" V 4289 5083 50  0000 R CNN
F 1 "LED" V 4198 5083 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4250 5200 50  0001 C CNN
F 3 "~" H 4250 5200 50  0001 C CNN
	1    4250 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 60C844FE
P 4450 6100
F 0 "R21" H 4520 6146 50  0000 L CNN
F 1 "R" H 4520 6055 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 4380 6100 50  0001 C CNN
F 3 "~" H 4450 6100 50  0001 C CNN
	1    4450 6100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 60C844F2
P 3950 6400
F 0 "R14" H 4020 6446 50  0000 L CNN
F 1 "R" H 4020 6355 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 3880 6400 50  0001 C CNN
F 3 "~" H 3950 6400 50  0001 C CNN
	1    3950 6400
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 60C844EC
P 4250 6400
F 0 "D5" V 4289 6283 50  0000 R CNN
F 1 "LED" V 4198 6283 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4250 6400 50  0001 C CNN
F 3 "~" H 4250 6400 50  0001 C CNN
	1    4250 6400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R20
U 1 1 60C80F36
P 4450 5500
F 0 "R20" H 4520 5546 50  0000 L CNN
F 1 "R" H 4520 5455 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 4380 5500 50  0001 C CNN
F 3 "~" H 4450 5500 50  0001 C CNN
	1    4450 5500
	0    -1   1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 60C7A745
P 3950 5800
F 0 "R13" H 4020 5846 50  0000 L CNN
F 1 "R" H 4020 5755 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 3880 5800 50  0001 C CNN
F 3 "~" H 3950 5800 50  0001 C CNN
	1    3950 5800
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 60C79708
P 4250 5800
F 0 "D4" V 4289 5683 50  0000 R CNN
F 1 "LED" V 4198 5683 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4250 5800 50  0001 C CNN
F 3 "~" H 4250 5800 50  0001 C CNN
	1    4250 5800
	-1   0    0    1   
$EndComp
Text Label 3150 5000 0    60   ~ 0
S3V3
Text Label 3150 4900 0    60   ~ 0
SGND
Text Label 3150 5100 0    60   ~ 0
SGND
$Comp
L Motor:Motor_Servo M1
U 1 1 63776048
P 6200 5150
F 0 "M1" H 6150 5350 50  0000 L CNN
F 1 "Motor_Servo" H 6000 4950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6200 4960 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 6200 4960 50  0001 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
Text Label 5700 4300 0    60   ~ 0
S3V3
Wire Wire Line
	5800 5150 5900 5150
$Comp
L Device:R R24
U 1 1 63802AD6
P 5700 4500
F 0 "R24" H 5770 4546 50  0000 L CNN
F 1 "R" H 5770 4455 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 5630 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5700 4500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 63802CBF
P 5400 4700
F 0 "R22" H 5470 4746 50  0000 L CNN
F 1 "R" H 5470 4655 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 5330 4700 50  0001 C CNN
F 3 "~" H 5400 4700 50  0001 C CNN
	1    5400 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 4300 5700 4350
Wire Wire Line
	5700 4350 5800 4350
Wire Wire Line
	5800 4350 5800 5150
Connection ~ 5700 4350
Text Label 5700 5250 2    60   ~ 0
SGND
Wire Wire Line
	5700 5050 5700 5250
Wire Wire Line
	5700 5250 5900 5250
$Comp
L Motor:Motor_Servo M2
U 1 1 639A1504
P 6200 6350
F 0 "M2" H 6150 6550 50  0000 L CNN
F 1 "Motor_Servo" H 6000 6150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6200 6160 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 6200 6160 50  0001 C CNN
	1    6200 6350
	1    0    0    -1  
$EndComp
Text Label 5700 5500 0    60   ~ 0
S3V3
Wire Wire Line
	5800 6350 5900 6350
$Comp
L Device:R R25
U 1 1 639A1513
P 5700 5700
F 0 "R25" H 5770 5746 50  0000 L CNN
F 1 "R" H 5770 5655 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 5630 5700 50  0001 C CNN
F 3 "~" H 5700 5700 50  0001 C CNN
	1    5700 5700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 639A1519
P 5400 5900
F 0 "R23" H 5470 5946 50  0000 L CNN
F 1 "R" H 5470 5855 50  0000 L CNN
F 2 "akizukit:SMD-1608" V 5330 5900 50  0001 C CNN
F 3 "~" H 5400 5900 50  0001 C CNN
	1    5400 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 5500 5700 5550
Wire Wire Line
	5700 5550 5800 5550
Wire Wire Line
	5800 5550 5800 6350
Connection ~ 5700 5550
Text Label 5700 6450 2    60   ~ 0
SGND
Wire Wire Line
	5700 6250 5700 6450
Wire Wire Line
	5700 6450 5900 6450
Wire Wire Line
	5700 5850 5900 5850
Wire Wire Line
	5900 5850 5900 6250
Wire Wire Line
	5700 4650 5900 4650
Wire Wire Line
	5900 4650 5900 5050
$Sheet
S 7800 4650 1100 1100
U 63BE4CD7
F0 "motorBase" 50
F1 "motorBase.sch" 50
$EndSheet
Text Label 1050 800  3    60   ~ 0
VBUS
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 63D90000
P 1050 800
F 0 "#FLG0105" H 1050 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 973 50  0000 C CNN
F 2 "" H 1050 800 50  0001 C CNN
F 3 "~" H 1050 800 50  0001 C CNN
	1    1050 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 63DD68C7
P 4600 4500
F 0 "Q1" V 4835 4500 50  0000 C CNN
F 1 "Q_NPN_BEC" V 4926 4500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 4800 4600 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	0    -1   1    0   
$EndComp
Wire Wire Line
	4900 5200 4800 5200
$Comp
L Device:Q_NPN_BEC Q2
U 1 1 63DE99E5
P 4600 5100
F 0 "Q2" V 4835 5100 50  0000 C CNN
F 1 "Q_NPN_BEC" V 4926 5100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 4800 5200 50  0001 C CNN
F 3 "~" H 4600 5100 50  0001 C CNN
	1    4600 5100
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q3
U 1 1 63DE9D95
P 4600 5700
F 0 "Q3" V 4835 5700 50  0000 C CNN
F 1 "Q_NPN_BEC" V 4926 5700 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 4800 5800 50  0001 C CNN
F 3 "~" H 4600 5700 50  0001 C CNN
	1    4600 5700
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q4
U 1 1 63DEA0A3
P 4600 6300
F 0 "Q4" V 4835 6300 50  0000 C CNN
F 1 "Q_NPN_BEC" V 4926 6300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 4800 6400 50  0001 C CNN
F 3 "~" H 4600 6300 50  0001 C CNN
	1    4600 6300
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NPN_BEC Q5
U 1 1 63DEA4D1
P 5600 4850
F 0 "Q5" H 5791 4896 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5791 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 5800 4950 50  0001 C CNN
F 3 "~" H 5600 4850 50  0001 C CNN
	1    5600 4850
	1    0    0    -1  
$EndComp
Connection ~ 5700 4650
$Comp
L Device:Q_NPN_BEC Q6
U 1 1 63DEABEB
P 5600 6050
F 0 "Q6" H 5791 6096 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5791 6005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 5800 6150 50  0001 C CNN
F 3 "~" H 5600 6050 50  0001 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
Connection ~ 5700 5850
$Comp
L Device:Q_NPN_BEC Q7
U 1 1 63DEAE70
P 7700 3050
F 0 "Q7" H 7891 3096 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7891 3005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 7900 3150 50  0001 C CNN
F 3 "~" H 7700 3050 50  0001 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q8
U 1 1 63DEC241
P 7700 3500
F 0 "Q8" H 7891 3454 50  0000 L CNN
F 1 "Q_NPN_BEC" H 7891 3545 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SC-59_Handsoldering" H 7900 3600 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5BE8477A
P 3700 7350
F 0 "R8" V 3780 7350 50  0000 C CNN
F 1 "470" V 3700 7350 50  0000 C CNN
F 2 "akizukit:SMD-1608" V 3630 7350 50  0001 C CNN
F 3 "" H 3700 7350 50  0001 C CNN
	1    3700 7350
	0    -1   1    0   
$EndComp
Text Label 3850 7600 0    60   ~ 0
SGND
$Comp
L Connector_Generic:Conn_01x02 J25
U 1 1 63F04B19
P 2950 2150
F 0 "J25" H 2950 1900 50  0000 C CNN
F 1 "Conn_01x02" H 3100 1950 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 2950 2150 50  0001 C CNN
F 3 "~" H 2950 2150 50  0001 C CNN
	1    2950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2150 2750 2150
Text Label 6000 2300 0    60   ~ 0
GNDThin
Text Label 6250 3250 3    60   ~ 0
GNDThin
Wire Wire Line
	5850 3050 5850 3150
Wire Wire Line
	5850 3150 6250 3150
Wire Wire Line
	6250 3150 6250 3050
Wire Wire Line
	6250 3150 6250 3250
Connection ~ 6250 3150
Text Label 4300 3900 2    60   ~ 0
GNDThin
Text Label 4000 2600 1    60   ~ 0
GNDThin
$EndSCHEMATC
