#include <M5Stack.h>
#include <SPI.h>
#include <WiFi.h>
#include <WiFiClient.h>
// #include <WebServer.h>
#include <ESPmDNS.h>

static const int spiClk = 1000000; // 1 MHz

//uninitalised pointers to SPI objects
SPIClass *vspi = NULL;
// SPIClass *hspi = NULL;

// ---------------------------------------------------

const char *ssid = "Buffalo-G-4100";
const char *password = "fj6gr4nhndxrv";
// WebServer server(80);
WiFiServer server(80);

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
  pinMode(15, OUTPUT); //HSPI SS

  // Serverの設定
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  M5.Lcd.println(WiFi.localIP());

  if (MDNS.begin("esp32led"))
  {
    Serial.println("MDNS responder started");
  }
  server.begin();
  Serial.println("HTTP server started");

  MDNS.addService("http", "tcp", 80);
}

// the loop function runs over and over again until power down or reset
void loop()
{
  M5.update();
  if (M5.BtnA.pressedFor(1000, 200))
  {
    // M5.Lcd.drawJpgFile(SD, "/aruco0.jpg");
    M5.Lcd.fillScreen(WHITE);
    M5.Lcd.fillRect(40, 0, 240, 240, BLACK);
    M5.Lcd.fillRect(160, 40, 80, 120, WHITE);
    M5.Lcd.fillRect(80, 40, 40, 40, WHITE);
    M5.Lcd.fillRect(120, 80, 40, 40, WHITE);
    M5.Lcd.fillRect(160, 160, 40, 40, WHITE);
    M5.Lcd.fillRect(160, 80, 40, 40, BLACK);
  }
  else if (M5.BtnA.wasReleasefor(2000))
  {
    // M5.Lcd.drawJpgFile(SD, "/aruco3.jpg");
    M5.Lcd.fillScreen(WHITE);
    M5.Lcd.fillRect(40, 0, 240, 240, BLACK);
    M5.Lcd.fillRect(80, 80, 160, 120, WHITE);
    M5.Lcd.fillRect(120, 120, 80, 40, BLACK);
    M5.Lcd.fillRect(120, 160, 40, 40, BLACK);
    M5.Lcd.fillRect(200, 160, 40, 40, BLACK);
  }
  else if (M5.BtnB.wasReleased() || M5.BtnB.pressedFor(1000, 200))
  {
    // M5.Lcd.drawJpgFile(SD, "/aruco1.jpg");
    M5.Lcd.fillScreen(WHITE);
    M5.Lcd.fillRect(40, 0, 240, 240, BLACK);
    M5.Lcd.fillRect(160, 40, 80, 80, WHITE);
    M5.Lcd.fillRect(160, 120, 40, 40, WHITE);
    M5.Lcd.fillRect(200, 160, 40, 40, WHITE);
    M5.Lcd.fillRect(80, 160, 80, 40, WHITE);
  }
  else if (M5.BtnC.wasReleased() || M5.BtnC.pressedFor(1000, 200))
  {
    // M5.Lcd.drawJpgFile(SD, "/aruco2.jpg");
    M5.Lcd.fillScreen(WHITE);
    M5.Lcd.fillRect(40, 0, 240, 240, BLACK);
    M5.Lcd.fillRect(80, 40, 40, 80, WHITE);
    M5.Lcd.fillRect(120, 120, 40, 80, WHITE);
    M5.Lcd.fillRect(160, 160, 40, 40, WHITE);
    M5.Lcd.fillRect(200, 40, 40, 80, WHITE);
  }

  // byte data = byte(random(100));
  // vspiCommand(data);
  // delay(100);

  // APIサーバになって欲しい
  WiFiClient client = server.available();
  if (!client)
  {
    return;
  }
  Serial.println("");
  if (client)
  {
    Serial.println("new client");
    /* check client is connected */
    while (client.connected())
    {
      /* client send request? */
      if (client.available())
      {
        /* request end with '\r' -> this is HTTP protocol format */
        String req = client.readStringUntil('\r');
        /* First line of HTTP request is "GET / HTTP/1.1"  
                here "GET /" is a request to get the first page at root "/"
                "HTTP/1.1" is HTTP version 1.1
              */
        /* now we parse the request to see which page the client want */
        int addr_start = req.indexOf(' ');
        int addr_end = req.indexOf(' ', addr_start + 1);
        if (addr_start == -1 || addr_end == -1)
        {
          Serial.print("Invalid request: ");
          Serial.println(req);
          return;
        }
        req = req.substring(addr_start + 1, addr_end);
        Serial.print("Request: ");
        Serial.println(req);
        client.flush();

        String s;
        IPAddress ip = WiFi.localIP();
        String ipStr = String(ip[0]) + '.' + String(ip[1]) + '.' + String(ip[2]) + '.' + String(ip[3]);
        /* if request is "/" then client request the first page at root "/" -> we process this by return "Hello world"*/
        if (req == "/")
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>Hello from ESP32 at ";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
        }
        else if (req.equals("/UP/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>UP";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('d'));
          vspiCommand(byte(0));
          vspiCommand(byte('s'));
          vspiCommand(byte(20));
        }
        else if (req.equals("/DOWN/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>DOWN";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('d'));
          vspiCommand(byte(90));
          vspiCommand(byte('s'));
          vspiCommand(byte(20));
        }
        else if (req.equals("/LEFT/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>LEFT";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('d'));
          vspiCommand(byte(45));
          vspiCommand(byte('s'));
          vspiCommand(byte(20));
        }
        else if (req.equals("/RIGHT/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>RIGHT";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('d'));
          vspiCommand(byte(135));
          vspiCommand(byte('s'));
          vspiCommand(byte(20));
        }
        else if (req.equals("/CLK/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>Clockwise";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('r'));
          vspiCommand(byte(1));
        }
        else if (req.equals("/UNCLK/"))
        {
          s = "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\n<!DOCTYPE HTML>\r\n<html>UntiClockwise";
          s += ipStr;
          s += "</html>\r\n\r\n";
          Serial.println("Sending 200");
          vspiCommand(byte('r'));
          vspiCommand(byte(2));
        }
        else
        {
          /* if we can not find the page that client request then we return 404 File not found */
          s = "HTTP/1.1 404 Not Found\r\n\r\n";
          Serial.println("Sending 404");
        }
        /* send response back to client and then close connect since HTTP do not keep connection*/
        client.print(s);
        Serial.println(s);
        client.stop();
      }
    }
  }
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

/*
void hspiCommand()
{
  byte stuff = 0b11001100;

  hspi->beginTransaction(SPISettings(spiClk, MSBFIRST, SPI_MODE0));
  digitalWrite(15, LOW);
  hspi->transfer(stuff);
  digitalWrite(15, HIGH);
  hspi->endTransaction();
}*/

/*
void handleRoot()
{
  //  LED の制御
  M5.Lcd.printf("Accessed for root url\n");

  if (server.method() == HTTP_POST)
  {
    String val = server.arg("led");
    if (val == "1")
    {
      //  LED オン
      Serial.println("ON");
      M5.Lcd.printf("ON\n");
    }
    else if (val == "0")
    {
      //  LED オフ
      Serial.println("OFF");
      M5.Lcd.printf("OFF\n");
    }
  }
  String mes = "\
<html lang=\"ja\">\n\
<meta charset=\"utf-8\">\n\
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n\
<head>\n\
 <title>webLedTest</title>\n\
</head>\n\
<body style=\"font-family: sans-serif; background-color: #ffeeaa ;\" >\n\
 <h1>webLedTest</h1>\n\
 <p><form action='' method='post'>\n\
      <button name='led' value='1'>オン</button>\n\
    </form>\n\
    <form action='' method='post'>\n\
      <button name='led' value='0'>オフ</button>\n\
    </form>\n\
  </p>\n\
</body>\n\
</html>\n";

  server.send(200, "text/html", mes);
}*/

/*
void handleNotFound()
{
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET) ? "GET" : "POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i = 0; i < server.args(); i++)
  {
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}*/

/*
  server.on("/", handleRoot); // ルートURLへのアクセス
  server.on("/inline", []()
            { server.send(200, "text/plain", "hello from esp8266!"); });
  server.onNotFound(handleNotFound);
  server.handleClient();
*/
