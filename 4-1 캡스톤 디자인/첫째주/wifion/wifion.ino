#include <ESP8266WiFi.h> // ESP8266WiFi 라이브러리 사용
#define PIN_LED D0 // LED 핀번호 D0

const char* ssid = "blue";
const char* password = "gkxm2008";

WiFiServer server(80); // server 이름으로 WiFiServer 객체 선언, HTTP 프로토콜 포트번호로 80번

void setup() {
pinMode(PIN_LED, OUTPUT); // PIN_LED를 OUTPUT으로 설정
digitalWrite(PIN_LED, LOW); // LED off
Serial.begin(115200); // 시리얼모니터 초기화. 통신속도 115200 Baud
WiFi.mode(WIFI_STA); // mode 메서드로 ESP8266 모듈을 WIFI_STA 모드로 설정
WiFi.begin(ssid, password); // begin 메서드로 Wi-Fi 연결 시작

while (WiFi.status() != WL_CONNECTED) { // Wi-Fi가 접속될 때까지 반복
delay(500);
Serial.print(".");
}

Serial.println("");
Serial.print("Connecting to ");
Serial.println(ssid); // 접속된 Wi-Fi 아이디와 IP 주소를 시리얼 모니터에 출력
Serial.print("IP address: ");
Serial.println(WiFi.localIP());
server.begin(); // server.begin() 로 서버를 시작
Serial.println("Server started");
}

void loop() {
WiFiClient client = server.available(); // 클라이언트(웹브라우저를 통해 접속한 유저) 접속 여부 확인
if (!client) return; // 접속되어 있지 않으면 return 으로 종료

Serial.println("New client");
client.setTimeout(5000); // 클라이언트에게 HTTP를 전송을 시도하며 5000ms 초과 시 타임아웃
String request = client.readStringUntil('\r'); // 전송받은 데이터를 \r 까지 (HTTP/1.1 까지)
Serial.println("request: "); // 클라이언트가 서버에 요청한 정보. 
Serial.println(request); // URL을 알기 위해 사용

if(request.indexOf("/ledoff") != -1) { // 요청한 정보에 /ledoff 가 포함되어 있다면
digitalWrite(PIN_LED, LOW); // (LED OFF 버튼을 눌렀다면) LED OFF
}
else if(request.indexOf("/ledon") != -1) { // 요청한 정보에 /ledon 가 포함되어 있다면
digitalWrite(PIN_LED, HIGH); // (LED ON 버튼을 눌렀다면) LED ON
}
else {
Serial.println("invalid request"); // 그 외는(메인페이지 접속 등) 현재 LED 상태를 유지
digitalWrite(PIN_LED, digitalRead(PIN_LED));
}
while(client.available()) { // 그 이외에 request 정보는 필요 없으므로
client.read(); // 수신된 request 데이터를 전부 읽음(버퍼 비움 효과)
}

client.print("HTTP/1.1 200 OK");
client.print("Content-Type: text/html\r\n\r\n");
client.print("<!DOCTYPE HTML>");
client.print("<html>");
client.print("<head>"); 
client.print("<meta&nbsp;charset=\"UTF-8\">");
client.print("<title>LED Control Webpage</title>");
client.print("</head>");
client.print("<body>");
client.print("<h2>LED Control Webpage</h2>");
client.print("<a href='/ledon'>LED ON</a>");
client.print("<br>");
client.print("<a href='/ledoff'>LED OFF</a>");
client.print("<br>");
client.print("LED Status : ");
client.print((digitalRead(PIN_LED)) ? "ON" : "OFF");
client.print("</body>");
client.print("</html>");
Serial.println("Client disconnected !! "); }
