unsigned int frqArray[7] = { 262, 294, 330, 349, 329, 440, 494};
//도레미파솔라시도
int signatures[20]=
{4,4,4,4,4,4,4,4,4,2,4,4,4,4,4,4,4,4,4,2};
//박자
int scale[20]=
{0,2,4,0,2,4,5,5,5,4,3,3,3,2,2,2,1,1,1,0};

void setup() {
  pinMode(12,OUTPUT); //12번 핀 출력용
  //Serial.begin(9600);//우노와 pc속도 맞춤
}

void loop() {
  for(int i=0;i<20;i++) { 
    unsigned long duration
      = 1000 / signatures[i];

    tone(12,frqArray[scale[i]],duration);
    delay(duration *1.5);
    noTone(12);
  }//for
}//loop
