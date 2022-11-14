void setup() {//1회만 수행 => loop수행 반복됨
 Serial.begin(9600);//우노와 pc 속도 맞춤
 pinMode(12,OUTPUT);//trig 송신용, pinMode는 핀을 초기화하는 함수 입력용/출력용
 pinMode(13,INPUT);//echo수신용, 함수는 주황색
}

void loop() {
  digitalWrite(12,HIGH);//trig핀에 주파수 발송 HIGH를 보냄 지연을 남김
  delay(10);//10초 지연
  digitalWrite(12,LOW);
  float duration= pulseIn(13,HIGH);//13번은 trig 주파수 HIGH 수신
  float distance = 34000*duration/1000000/2; //편도:2는 왕복거리 구함
  Serial.print("거리cm:");//물체는 얼마나 떨어져있나? 출력해보자.
  Serial.println(distance);
  delay(500);//0.5초 지연하고 loop합수 수행,반복하라
  if(distance<=50 && distance>=0)
  {//알람 울림 부저 경광등 점등
    digitalWrite(2,HIGH); //2번에 연결된 경광등 점등
  }
  else{
    digitalWrite(2,LOW); //2번에 연결된 경광등 소등
  }


}//loop
