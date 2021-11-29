#include <SPI.h>

// 3,5,6,9,10,11
#define FRIN1 8
//#define FRIN1 10 // PWM
#define FRIN2 9 // PWM
#define FLIN1 6 // PWM
#define FLIN2 7
//#define BLIN1 3 // PWM
#define BLIN1 14
#define BLIN2 15
//#define BRIN1 5 // PWM
#define BRIN1 16
#define BRIN2 17
#define SDA 18
#define SCL 19
//#define ENC1A 2 // ×
//#define ENC1B 3 // ×
#define ENC2A 4
//#define ENC2B 5 // ×
#define CS 10 // ×
//#define CS 2
#define MOSI 11
#define MISO 12
#define SCK 13
#define POT1 ADC6
#define POT2 ADC7


int count = 0;
unsigned long startTime = 0;
unsigned long timer = 0;
bool timerFlag = false;
int cmdSpeedReceived = 0;
int cmdDirecReceived = 0;
int cmdRotateReceived = 0;
bool moving = false;
bool rotating = false;
int8_t speed = 0;
int8_t speedMotors[8] = {0};
int8_t motorPins[8] = {FLIN2,FLIN1,FRIN1,FRIN2,BRIN2,BRIN1,BLIN1,BLIN2};


#define FRONT 0
#define BACK 1

uint8_t recvD;
uint8_t recvS;
uint8_t recvR;

void setup() {
  Serial.begin(115200);
  Serial.println("run!!");

  pinMode(CS, OUTPUT);
  SPCR |= bit(SPE);
  pinMode(MISO, OUTPUT);

  pinMode(FRIN1, OUTPUT);
  pinMode(FRIN2, OUTPUT);
  pinMode(FLIN1, OUTPUT);
  pinMode(FLIN2, OUTPUT);
  pinMode(BRIN1, OUTPUT);
  pinMode(BRIN2, OUTPUT);
  pinMode(BLIN1, OUTPUT);
  pinMode(BLIN2, OUTPUT);

  //  SPI.begin();
  //  SPI.beginTransaction(SPISetting(8000000, MSBFIRST, SPI_MODE3));
  SPI.attachInterrupt();
  startTime = millis();
}

ISR(SPI_STC_vect) {
//  cmdDirecReceived = false;
//  cmdSpeedReceived = false;
  switch (char(SPDR)) {
    case 's': cmdSpeedReceived = 1; break; // s
    case 'd': cmdDirecReceived = 1; break; // d
    case 'r': cmdRotateReceived = 1; break; // d
    default : 
      if(cmdDirecReceived==1){recvD = uint8_t(SPDR);cmdDirecReceived=2;}
      if(cmdSpeedReceived==1){recvS = uint8_t(SPDR);cmdSpeedReceived=2;}
      if(cmdRotateReceived==1){recvR = uint8_t(SPDR);cmdRotateReceived=2;}
      break;
  }

//  Serial.print(recvD);
//  Serial.print("  ");
//  Serial.print(recvS);
//  Serial.print("  ");
  Serial.print(SPDR);
  Serial.print("  ");
  Serial.println(char(SPDR));
}

void loop() {
  float rad; // = ((recvD*360)/256-180)*3.141592/180.0;
  static int a,b;

//  Serial.println(recv);
  if (cmdSpeedReceived==2) {
    speed = recvS-10;
    speed = speed * sqrt(2);
    Serial.println(speed);

    cmdSpeedReceived = 0;
    startTime = millis();
    moving = true;
    rotating = false;
  }
  if (cmdDirecReceived==2) {
    rad = (float(recvD)*2)*3.1415 / 180.0 + 3.1415 / 4.0;
    cmdDirecReceived = 0;
    Serial.println(rad);
  }
  if (cmdRotateReceived==2) {
    rad = (float(recvR)*2)*3.1415 / 180.0 + 3.1415 / 4.0;
    Serial.println(rad);

    cmdRotateReceived = 0;
    startTime = millis();
    moving = false;
    rotating = true;
  }
  timer = millis();


  if(moving && ((timer - startTime) > 250)){
    Serial.print(a);
    Serial.print("  ");
    Serial.print(b);
    Serial.print("  ");
    Serial.println(rad);
    Serial.println(speed);
    Serial.println("stop");
    speed = 0; 
    moving = false; 
    actMotorFB(FRONT, 0, 0);
    actMotorFB(BACK , 0, 0);
  }
  
  if(rotating && ((timer - startTime) > 250)){
    Serial.println("stop rotate");
    speed = 0; 
    rotating = false;
    actMotorFB(FRONT, 0, 0);
    actMotorFB(BACK , 0, 0);
  }

//  rad += 0.1;

  a = int(speed * cos(rad)); // -10~10の速度に変換
  b = int(speed * sin(rad));
  if(abs(a) > 10) a = 0;
  if(abs(b) > 10) b = 0;


  if(rotating){
    while(count < 10){
      count++;
      if(recvR == 2){a = -7;b = 7;}
      else{a = 7;b = -7;}
      actMotorFB(FRONT, a, b);
      delay(1);
    }
    count = 0;
  
    while(count < 10){
      count++;
      if(recvR == 2){a = -7;b = 7;}
      else{a = 7;b = -7;}
      actMotorFB(BACK , a, b);
      delay(1);
    }
    count = 0;
  }
  


  if(moving){
    while(count < 10){
      count++;
//    actMotorFB(FRONT, 10, -10);
      actMotorFB(FRONT, a, b);
      delay(1);
    }
    count = 0;
  
    while(count < 10 && moving){
      count++;
//    actMotorFB(BACK, -10, 10);
      actMotorFB(BACK, b, a);
      delay(1);
    }
    count = 0;  
  }

  
}



void actMotorFB(int ForB, int speedL, int speedR) {
  int R1, R2, L1, L2;
  int offsetIndex = 0;
  if (ForB == FRONT) {
    L1 = FLIN1; L2 = FLIN2;
    R1 = FRIN2; R2 = FRIN1;
    offsetIndex = 0;
  } else {
    R1 = BLIN2; R2 = BLIN1;
    L1 = BRIN1; L2 = BRIN2;
    offsetIndex = 4;
  }

  uint8_t outL1, outL2;
  uint8_t outR1, outR2;

  if (speedL >= 0) {
    speedMotors[0 + offsetIndex] = speedL;
    speedMotors[1 + offsetIndex] = 0;
  } else {
    speedMotors[0 + offsetIndex] = 0;
    speedMotors[1 + offsetIndex] = -speedL;
  }
  if (speedR >= 0) {
    speedMotors[2 + offsetIndex] = speedR;
    speedMotors[3 + offsetIndex] = 0;
  } else {
    speedMotors[2 + offsetIndex] = 0;
    speedMotors[3 + offsetIndex] = -speedR;
  }

  for(int i=0; i<4; i++){ // software PWM
//    int8_t temp = int(count/speedMotors[i + offsetIndex]);
    if(abs(count) < speedMotors[i + offsetIndex])digitalWrite(motorPins[i + offsetIndex], HIGH);
    else digitalWrite(motorPins[i + offsetIndex], LOW);
  }


//  Serial.print(abs(count));
//  Serial.print("\t");
//  Serial.print(speedL);
//  Serial.print("\t");
//  Serial.print(speedR);
//  Serial.print("\t");
//  Serial.print(speedMotors[0 + offsetIndex]);
//  Serial.print("\t");
//  Serial.print(speedMotors[1 + offsetIndex]);
//  Serial.print("\t");
//  Serial.print(speedMotors[2 + offsetIndex]);
//  Serial.print("\t");
//  Serial.println(speedMotors[3 + offsetIndex]);

}




//#define FRIN1 PB0
//#define FRIN2 PB1
//#define FLIN1 PD6
//#define FLIN2 PD7
//#define BLIN1 PC0
//#define BLIN2 PC1
//#define BRIN1 PC2
//#define BRIN2 PC3
//#define SDA PC4
//#define SCL PC5
//#define ENC1A PD2
//#define ENC1B PD3
//#define ENC2A PD4
//#define ENC2B PD5
//#define CS PB2
//#define MOSI PB3
//#define MISO PB4
//#define SCK PB5
//#define POT1 ADC6
//#define POT2 ADC7



/*
  digitalWrite(motorPins[0],HIGH);
  digitalWrite(motorPins[1],LOW);
  digitalWrite(motorPins[2],HIGH);
  digitalWrite(motorPins[3],LOW);
  digitalWrite(motorPins[4],HIGH);
  digitalWrite(motorPins[5],LOW);
  digitalWrite(motorPins[6],HIGH);
  digitalWrite(motorPins[7],LOW);
  delay(1000);
  for(int i=0;i<8;i++)digitalWrite(motorPins[i],LOW);
  delay(1000);
  digitalWrite(motorPins[0],LOW);
  digitalWrite(motorPins[1],HIGH);
  digitalWrite(motorPins[2],LOW);
  digitalWrite(motorPins[3],HIGH);
  digitalWrite(motorPins[4],LOW);
  digitalWrite(motorPins[5],HIGH);
  digitalWrite(motorPins[6],LOW);
  digitalWrite(motorPins[7],HIGH);
  delay(1000);
  for(int i=0;i<8;i++)digitalWrite(motorPins[i],LOW);
  delay(1000);*/

 


/*
  if (speedL >= 0) {
//    outL1= 255 - speedL;
//    outL2= 255;
    outL1= 2*speedL;
    outL2= 0;
  } else {
    outL1= 0;
    outL2= -2*speedL;
  }
  analogWrite(L1, outL1);
  analogWrite(L2, outL2);

  if (speedR >= 0) {
//    outR1= 255 - speedR;
//    outR2= 255;
    outR1= 2*speedR;
    outR2= 0;
  } else {
    outR1= 0;
    outR2= -2*speedR;
  }
    analogWrite(R1, outR1);
    analogWrite(R2, outR2);
*/

//  char buff[100];
//  memset(buff, 0, sizeof(buff));
//  sprintf(buff, "outL1:%d, outL2:%d, outR1:%d, outR2:%d", outL1, outL2, outR1, outR2);
//  Serial.print(buff);
