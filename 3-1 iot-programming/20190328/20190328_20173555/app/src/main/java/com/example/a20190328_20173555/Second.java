package com.example.a20190328_20173555;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

//Activity클래스 상속, 화면 열자마자 구동되는 onCreate()가짐
public class Second extends Activity { //클래스 추가
    Button secondBtn1; //버튼 클릭 이벤트 추가하기 위한 위젯변수선언
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //화면은  Activity.java가 화면 그자체, 디자인 셋팅 해야함
        setContentView(R.layout.second);//디자인 xml을 화면에 셋팅
        secondBtn1=(Button)findViewById(R.id.SecondBtn1);//아이디를 찾아서 대입
        //버튼을 누르면 현재화면이 종료되게 처리(메인 나타남)
        secondBtn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();//현재화면 닫기(종료)
            }
        });

    }
}
