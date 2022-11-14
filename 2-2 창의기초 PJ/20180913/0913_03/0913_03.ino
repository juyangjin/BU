void setup() {
  pinMode(12,OUTPUT); //부저
  //pinMode(9,OUTPUT);
  Serial.begin(9600); 
}

void loop() {
  int cdsV=analogRead(A0); //A0핀의 데이터를 읽음 변수
  //빛릐 값을 낮은 Hz값으로 변환 map();
  //매핑 CDS의 입력값범위 0~1023,부저 출력값 범위 262Hz~484HZ 정도(Hz) -> 옥타브4
  int toneV=map(cdsV,0,1023,262,484);
  //조도값, 초기값, 최대값 -> 바꿀 Hz 초기값, 최대값
  tone(12,toneV);
  delay(500);//0.5초 단위(ms)
}
