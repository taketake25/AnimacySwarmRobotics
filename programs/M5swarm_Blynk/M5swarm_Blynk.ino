#include <M5Stack.h>
#include <SPI.h>

#define BLYNK_PRINT Serial
#define BLYNK_USE_DIRECT_CONNECT
#include <BlynkSimpleEsp32_BT.h>

static const int spiClk = 1000000; // 1 MHz
SPIClass *vspi = NULL;

char auth[] = "i5PiuQ-9teGVm_6S3JJf1ldqlzmdq6aI";


unsigned long startTime = 0;
unsigned long timer = 0;
int rDirec = 0; 
float rad = 0;
int speed = 0;

BLYNK_WRITE(V1) {
  int x = param[0].asInt();
  int y = param[1].asInt();

  rad = atan2(x*2-1023,y*2-1023) - 3.14/2.0; // 多分正しいんでしょうねぇ
  speed = int(10*sqrt((y*2-1023)*(y*2-1023)+(x*2-1023)*(x*2-1023))/1023); // 速度が負になることは無い
}

BLYNK_WRITE(V0) {
  int direction = param[0].asInt();
  if(direction > 100)rDirec = 1;
  else if(direction < -100)rDirec = 2;
  else rDirec = 0;
}



// ---------------------------------------------------
void setup()
{
  Serial.begin(115200);

  // M5.power.begin();
  M5.begin();
  M5.Power.begin();

  // M5.Lcd.drawJpgFile(SD, "/aruco0.jpg");
  M5.Lcd.clear(BLACK);
  M5.Lcd.setTextColor(YELLOW);
  M5.Lcd.setTextSize(2);
  M5.Lcd.println("run!");

  // SPIの設定
  vspi = new SPIClass(VSPI);
  vspi->begin();
  pinMode(5, OUTPUT);  //VSPI SS

  Blynk.setDeviceName("Blynky!");
  Blynk.begin(auth);
}

// the loop function runs over and over again until power down or reset
void loop()
{
  Blynk.run();

//  M5.Lcd.fillScreen(BLACK);
//  M5.Lcd.drawLine(160, 120, 160 + int(cos(rad)*speed*10), 120 + int(sin(rad)*speed*10), WHITE);


  if(rDirec != 0){
    vspiCommand(byte('r'));
    vspiCommand(byte(rDirec));
  }
  else if(speed > 3){
    uint8_t sendRad = uint8_t((int(rad*90/3.1415)+180)%180);
    if(byte(sendRad) == byte('d'))sendRad++;
    if(byte(sendRad) == byte('s'))sendRad++;
    if(byte(sendRad) == byte('r'))sendRad++;
    vspiCommand(byte('d'));
    vspiCommand(byte(sendRad));
    vspiCommand(byte('s'));
    vspiCommand(byte(10+speed));
    Serial.print(rad);
    Serial.print("\t");
    Serial.print(int(rad*90/3.1415));
    Serial.print("\t");
    Serial.print(sendRad);
    Serial.print("\t");
    Serial.println(speed);
  }

  delay(250);
}

void vspiCommand(byte data)
{
  // byte data = 0b01111111; // junk data to illustrate usage]
  //use it as you would the regular arduino SPI API
  vspi->beginTransaction(SPISettings(spiClk, MSBFIRST, SPI_MODE0));
  digitalWrite(5, LOW); //pull SS slow to prep other end for transfer
  vspi->transfer(data);
  digitalWrite(5, HIGH); //pull ss high to signify end of data transfer
  vspi->endTransaction();
  delay(1);
}
