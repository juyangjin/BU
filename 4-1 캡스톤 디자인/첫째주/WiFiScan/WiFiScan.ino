#include <ESP8266WiFi.h> 
const char* ssid = "blue";
const char* password = "gkxm2008"; 
void setup() { 
Serial.begin(115200);
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
Serial.print("IP address: "); 
Serial.println(WiFi.localIP());
}
void loop() {
}
