#include <ESP8266WiFi.h> // ESP8266WiFi 라이브러리 사용
#include <PubSubClient.h> //mqtt 사용을 위한 라이브러리
#include "DHT.h" //온습도 센서 사용을 위한 dht.h
DHT dht(D4, DHT11);//온습도 센서 


#define LED_R1 D1 //붉은 led는 D1 (인체감지)
#define LED_G1 D2 //녹색 led는 D2 (버튼조작)
#define measurePin A0 //미세먼지 측정 핀 A0
#define dust D3 //미세먼지 센서 dust
#define LED_R2 D7 //녹색 led2는  D7(수분감지)

int soil = D6; //토양 수분

const char* ssid = "blue";//사용할 와이파이
const char* password = "gkxm2008";//사용할 와이파이의 비밀번호
const char* mqtt_server = "broker.mqtt-dashboard.com";//사용할 broker 주소

WiFiClient espClient; //와이파이 클라이언트
PubSubClient client(espClient);
unsigned long lastMsg = 0; 
#define MSG_BUFFER_SIZE (50) ///스마트폰에 메시지 출력을 위해 버퍼 사이즈 조정
char msg[MSG_BUFFER_SIZE]; //출력할 메시지를 담기위한 msg 선언 

void setup_wifi() {//와이파이 연결
delay(10); 
Serial.println();
Serial.print("Connecting to ");
Serial.println(ssid);

WiFi.mode(WIFI_STA);
WiFi.begin(ssid, password); //와이파이 접속을 시작

while (WiFi.status() != WL_CONNECTED) { //와이파이 연결 여부를 확인하고 연결될때까지 0.5초 마다 .을 찍음
delay(500);
Serial.print(".");
}

Serial.println("");
Serial.println("WiFi connected");
Serial.println("IP address: ");
Serial.println(WiFi.localIP()); // 와이파이가 연결되면 연결되었다는 문구와 함께 localip주소를 출력
}

void callback(char* topic, byte* payload, unsigned int length) {  //callback함수에 char로 topic과 payload 선언, int로 length 선언 
  Serial.print("Message arrived [");//메시지를 받음
 Serial.print(topic); 
 Serial.print("] ");
 for (int i = 0; i < length; i++) {//문자열에 대한 반복문
  Serial.print((char)payload[i]); 
 }
 Serial.println();

 String mytopic = topic; //topic값을 mytopic으로 저장
 
  if (mytopic == "light/led_G1") { //paload 값이 0이면 녹색 led1이 꺼지고, 1이면 켜진다.
   if ((char)payload[0] == '0') digitalWrite(LED_G1, LOW); 
   else if ((char)payload[0] == '1') digitalWrite(LED_G1, HIGH);
 }
}

void reconnect() {
  // 루프함수에서 reconnect 호출
  while (!client.connected()) { 
    Serial.print("Attempting MQTT connection..."); // 스마트폰 MQTT와 연결중이라는 메시지 출력
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
  Serial.begin(115200); //시작될 때 통신속도 설정
  dht.begin();
  pinMode(LED_R1, OUTPUT); //3개의 LED와 미세먼지에 대한 pin을 출력모드로 사용
  pinMode(LED_G1, OUTPUT); 
  pinMode(LED_R2, OUTPUT);
  pinMode(dust,OUTPUT);
  setup_wifi(); 
  client.setServer(mqtt_server, 1883); //MQTT 연결 
  client.setCallback(callback); //메시지 수신을 위한 callback 함수 실행
  }
void loop() {
  int pirValue = analogRead(D5); //인체감지에 대한 아날로그값을 pirValue에 저장
  int soilValue = analogRead(soil); //토양수분에 대한 아날로그값을 silValue에 저장

  if (!client.connected()) {//클라이언트와의 연결이 되어있지 않으면
    reconnect(); //recconnect 호출
  }
  if (pirValue > 500) { //인체감지 센서에서 500 이상 값이 측정되면 붉은 led1을 켠다.
    digitalWrite(LED_R1,HIGH);
  }
  else {
    digitalWrite(LED_R1,LOW);
  }
  client.loop();

  

    if (soilValue > 500) { //수분감지 센서에서 500 이상 값이 측정되면 붉은 led2를 켠다.
    digitalWrite(LED_R2,HIGH);
  }
  else {
    digitalWrite(LED_R2,LOW);
  }
  client.loop();

unsigned long now = millis(); //시간이 2000ms 지났을 때, 과거시간을 현재시간에 저장
if (now - lastMsg > 2000) { 
  lastMsg = now;
  
  float h = dht.readHumidity(); //변수 h에 습도값을 저장
  float t = dht.readTemperature(); //변수 t에 온도 값을 저장 
  
  float voMeasured = analogRead(measurePin); // 미세먼지 값을 읽습니다.
  delayMicroseconds(9680);
  // 0~3.3V를  0 - 1023 정수 값에 매핑해 전압을 맞춤 
  float calcVoltage = voMeasured * (3.3 / 1024.0);
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
