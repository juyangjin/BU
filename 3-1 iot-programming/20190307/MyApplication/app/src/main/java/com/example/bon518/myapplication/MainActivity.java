package com.example.bon518.myapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button btn1;//위젯변수선언

    @Override //처음 구동되는 메소드
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //화면을 열자마자 구동되는 onCreate
        btn1=(Button)findViewById(R.id.btn);//모든R.java;
        //버튼 동작을 줌 버튼 클릭했을때 문자 뜸
         btn1.setOnClickListener(new View.OnClickListener() {
             @Override
             public void onClick(View v) {
                 //실질적인 동작을 기술부분 글자 띄움
                 Toast.makeText(getApplicationContext(),"4명완료는 다음에 봅니다.",Toast.LENGTH_LONG).show();
             }
         });
    }
}
