package com.example.a20190328_20173555;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
  Button mainBtn1;
  Button mainBtn2;
  Button mainBtn3;
  //버튼선언 버튼을 누르면 두번째 화면으로 이동
    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mainBtn1=(Button)findViewById(R.id.button1);
        mainBtn2=(Button)findViewById(R.id.MainBtn2);
        mainBtn3=(Button)findViewById(R.id.MainBtn3);

        //버튼을 누르면 second.java 가 열림
        //화면에서 화면으로 이동 Intent클래스 사용
        mainBtn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //화면이동 동작 Intent클래스 사용 Intent객체 생성
                Intent intent = new Intent(getApplicationContext(),Second.class);//클래스
                startActivity(intent);
            }
        });

        mainBtn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent2 = new Intent(getApplicationContext(),Third.class);
                startActivity(intent2);
            }
        });

        mainBtn3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent3 = new Intent(getApplicationContext(),Four.class);
                startActivity(intent3);
            }
        });
    }
}
