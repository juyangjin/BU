void setup() { //setup 함수 1회만 수행//
  //핀 pin 입력/풀력인 핀모드 설정
pinMode(12,OUTPUT); //12핀 모드 출력용 설정

}

void loop() { // 함수는 무한 반복
digitalWrite(12,HIGH); //12핀에 on 불 on/off
delay(500);//ms 1/1000
digitalWrite(12,LOW); //off
delay(500);//
}
