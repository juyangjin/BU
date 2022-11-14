unsigned int frqArray[7] = { 262, 294, 330, 349, 329, 440, 494};
//도레미파솔라시도
void setup() {
  pinMode(12,OUTPUT); //12번 핀 출력용
  //Serial.begin(9600);//우노와 pc속도 맞춤
}

void loop() {
  for(int i=0;i<7;i++) { //tone(12,484);//핀의 주파수를 쓰기, 소리가 남
    tone(12,frqArray[i]);//7개 음이 출력
    delay(500);
  }//for
}//loop
