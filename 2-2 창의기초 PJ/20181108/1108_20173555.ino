#include<Servo.h>//헤더파일추가
Servo myservo;
int pos=0; //각도를 제어할 변수 pos

void setup() { //핀 설정
  myservo.attach(9);//9번핀을 서보모터용으로 설정
}

void loop() {
  myservo.write(90);//90도를 서보모터에 출력에 따라 45도 이동해라
  delay(300);//0.3초 지연
  myservo.write(0);//써라
  delay(300);
}
