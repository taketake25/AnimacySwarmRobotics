EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2750 2950 0    50   Input ~ 0
DIN
Text HLabel 7350 3050 2    50   Input ~ 0
DOUT
Wire Wire Line
	2750 2950 2950 2950
Wire Wire Line
	2950 3250 2950 3150
Wire Wire Line
	2950 3150 4050 3150
Wire Wire Line
	4050 3150 4050 3050
Connection ~ 2950 3150
Wire Wire Line
	2950 3150 2950 3050
Wire Wire Line
	4050 3150 5150 3150
Wire Wire Line
	5150 3150 5150 3050
Connection ~ 4050 3150
Wire Wire Line
	5150 3150 6250 3150
Wire Wire Line
	6250 3150 6250 3050
Connection ~ 5150 3150
Wire Wire Line
	7350 3050 7150 3050
Wire Wire Line
	7150 2950 7150 2600
Wire Wire Line
	7150 2600 6050 2600
Wire Wire Line
	3850 2600 3850 2950
Wire Wire Line
	3850 3050 3950 3050
Wire Wire Line
	3950 3050 3950 2950
Wire Wire Line
	3950 2950 4050 2950
Wire Wire Line
	4950 2600 4950 2950
Connection ~ 4950 2600
Wire Wire Line
	4950 2600 3850 2600
Wire Wire Line
	4950 3050 5050 3050
Wire Wire Line
	5050 3050 5050 2950
Wire Wire Line
	5050 2950 5150 2950
Wire Wire Line
	6050 3050 6150 3050
Wire Wire Line
	6150 3050 6150 2950
Wire Wire Line
	6150 2950 6250 2950
Wire Wire Line
	6050 2950 6050 2600
Connection ~ 6050 2600
Wire Wire Line
	6050 2600 4950 2600
Text HLabel 2950 3250 0    50   Input ~ 0
GND
Text HLabel 3850 2600 0    50   Input ~ 0
3v3
$Comp
L ume-boshi:WS2812B U13
U 1 1 63758967
P 3400 2950
F 0 "U13" H 3400 3197 60  0000 C CNN
F 1 "WS2812B" H 3400 3091 60  0000 C CNN
F 2 "akizukit:WS2812B" H 3400 2600 60  0001 C CNN
F 3 "" H 3400 2600 60  0001 C CNN
	1    3400 2950
	-1   0    0    -1  
$EndComp
$Comp
L ume-boshi:WS2812B U14
U 1 1 63758E4E
P 4500 2950
F 0 "U14" H 4500 3197 60  0000 C CNN
F 1 "WS2812B" H 4500 3091 60  0000 C CNN
F 2 "akizukit:WS2812B" H 4500 2600 60  0001 C CNN
F 3 "" H 4500 2600 60  0001 C CNN
	1    4500 2950
	-1   0    0    -1  
$EndComp
$Comp
L ume-boshi:WS2812B U15
U 1 1 63759048
P 5600 2950
F 0 "U15" H 5600 3197 60  0000 C CNN
F 1 "WS2812B" H 5600 3091 60  0000 C CNN
F 2 "akizukit:WS2812B" H 5600 2600 60  0001 C CNN
F 3 "" H 5600 2600 60  0001 C CNN
	1    5600 2950
	-1   0    0    -1  
$EndComp
$Comp
L ume-boshi:WS2812B U16
U 1 1 637593B4
P 6700 2950
F 0 "U16" H 6700 3197 60  0000 C CNN
F 1 "WS2812B" H 6700 3091 60  0000 C CNN
F 2 "akizukit:WS2812B" H 6700 2600 60  0001 C CNN
F 3 "" H 6700 2600 60  0001 C CNN
	1    6700 2950
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
