#include <ESP8266WiFi.h> // ESP8266WiFi 라이브러리 사용
#include <PubSubClient.h> //mqtt 사용을 위한 라이브러리
#include "DHT.h" //온습도 센서 사용을 위한 dht.h
DHT dht(D4, DHT11);//온습도 센서 


#define LED_R1 D1 //붉은 led는 D1 (인체감지)
#define LED_G1 D2 //녹색 led는 D2 (버튼조작)
#define measurePin A0 //미세먼지 측정 센서는 A0
#define ledPower D3 //LED 드라이버 핀 3개를 NodeMCU D3에 연결
#define LED_R2 D7 //녹색 led2는  D7(수분감지)

int soil = D6; //토양 수분

const char* ssid = "blue";//사용할 와이파이
const char* password = "gkxm2008";//사용할 와이파이의 비밀번호
const char* mqtt_server = "broker.mqtt-dashboard.com";//사용할 broker 주소

WiFiClient espClient; 
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE (50)
char msg[MSG_BUFFER_SIZE];

void setup_wifi() {//와이파이 연결
delay(10); // We start by connecting to a WiFi network
Serial.println();
Serial.print("Connecting to ");
Serial.println(ssid);

WiFi.mode(WIFI_STA);
WiFi.begin(ssid, password);

while (WiFi.status() != WL_CONNECTED) {
delay(500);
Serial.print(".");
}
Serial.println("");
Serial.println("WiFi connected");
Serial.println("IP address: ");
Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {  
 Serial.print("Message arrived [");//메시지를 받음
 Serial.print(topic);
 Serial.print("] ");
 for (int i = 0; i < length; i++) {
  Serial.print((char)payload[i]);
 }
 Serial.println();

 String mytopic = topic; //topic을 string으로 선언
 
  if (mytopic == "light/led_G1") { //paload 값이 0이면 녹색 led1이 꺼지고, 1이면 켜진다.
   if ((char)payload[0] == '0') digitalWrite(LED_G1, LOW);
   else if ((char)payload[0] == '1') digitalWrite(LED_G1, HIGH);
 }
}

void reconnect() {
  // 루프함수에서 reconnect 호출
  while (!client.connected()) { 
    Serial.print("Attempting MQTT connection...");
    String clientId = "ESP8266Client-"; // 임의의 클라이언트 ID 생성
    clientId += String(random(0xffff), HEX);

    if (client.connect(clientId.c_str())) { // 연결시도
      Serial.println("connected");
      client.subscribe("light/led_G1"); // LED_G1 조작
     } else {
        Serial.print("failed, rc=");
        Serial.print(client.state());
        Serial.println(" try again in 5 seconds");
        delay(5000); 
      }

   }
}

void setup() {
  Serial.begin(115200);
  dht.begin();
  pinMode(LED_R1, OUTPUT);
  pinMode(LED_G1, OUTPUT);
  pinMode(LED_R2, OUTPUT);
  pinMode(ledPower,OUTPUT);
  pinMode(D0,OUTPUT); 
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  }
void loop() {
  int pirValue = analogRead(D5); //인체감지
  int soilValue = analogRead(soil); //

  if (!client.connected()) {
    reconnect();
  }
  if (pirValue > 500) { //인체감지 센서에서 500 이상 값이 측정되면 붉은 led를 켠다.
    digitalWrite(LED_R1,HIGH);
  }
  else {
    digitalWrite(LED_R1,LOW);
  }
  client.loop();

  

    if (soilValue > 500) { //수분감지 센서에서 500 이상 값이 측정되면 붉은 led를 켠다.
    digitalWrite(LED_R2,HIGH);
  }
  else {
    digitalWrite(LED_R2,LOW);
  }
  client.loop();

  

  
unsigned long now = millis();
if (now - lastMsg > 2000) {
  lastMsg = now;
  
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  
  digitalWrite(ledPower,LOW); // power on the LED
  delayMicroseconds(280);
  float voMeasured = analogRead(measurePin); // read the dust value
  delayMicroseconds(40);
  digitalWrite(ledPower,HIGH); // turn the LED off
  delayMicroseconds(9680);
  // 0~3.3V mapped to 0 - 1023 integer values recover voltage
  float calcVoltage = voMeasured * (3.3 / 1024.0);
  // refer to http://www.howmuchsnow.com/arduino/airquality/
  float dustDensity = 0.17 * calcVoltage - 0.1;

  snprintf (msg, MSG_BUFFER_SIZE, "%.2f", h);  //스마트폰 출력 습도
  Serial.print("Publish message(습도): ");
  Serial.print(msg);
  Serial.println("%");
  client.publish("sensor/humi", msg);
  
  snprintf (msg, MSG_BUFFER_SIZE, "%.2f", t); //스마트폰 출력 온도
  Serial.print("Publish message(온도): ");
  Serial.print(msg);
  Serial.println("C");
  client.publish("sensor/temp", msg);
  
  snprintf (msg, MSG_BUFFER_SIZE, "%.2f", dustDensity); //스마트폰 출력 미세먼지
  Serial.print("Publish message(미세먼지): ");
  Serial.print(msg);
  Serial.println("ug/m³");
  client.publish("sensor/dust", msg);
  
  snprintf (msg, MSG_BUFFER_SIZE, "%d", pirValue); // 스마트폰 출력 움직임
  Serial.print("Publish message(움직임): ");
  Serial.println(msg);
  client.publish("sensor/pir", msg);

  snprintf (msg, MSG_BUFFER_SIZE, "%d", soilValue); // 스마트폰 출력 수분량
  Serial.print("Publish message(수분): ");
  Serial.println(msg);
  client.publish("sensor/soil", msg);

  }
 
}
