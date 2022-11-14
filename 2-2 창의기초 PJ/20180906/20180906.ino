void setup() {
Serial.begin(9600);
pinMode(12,OUTPUT);
}

void loop() {
int abc = analogRead(A0);
Serial.println(abc);
delay(500);

if(abc>600)
{
 digitalWrite(12,HIGH);
}
else
{
 digitalWrite(12,LOW);
 }
}