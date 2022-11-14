void setup()
 pinMode(11,OUTPUT);
Serial.begin(9600);
}

void loop() {
 int abcData = analogRead(0);
 Serial.println(abcData);

if(abcData>100)
{
 analogWrite(11,100);
 }
 else
 {
 analogWrite(11,0);
 }
}