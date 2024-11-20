package com.example.intent0404_20173555;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Second extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.second);//second.xml 셋팅
        setTitle("두번째 화면");
        //MainActivity가서 a,b intent 실음 객체생성하고 intent.putExtra("인텐트수행".a값).
        //데이터 가져오려면 intent 객체 생성
        Intent inIntent=getIntent();//객체생성함
        final int hapvalue=inIntent.getIntExtra("Num1",0)+inIntent.getIntExtra("Num2",0);
        //합을 구했고 메인으로 돌아가기 버튼을 누르면 hapValue를 outintent생성해서 변수실어서 이동
        Button btnRerurn=(Button)findViewById(R.id.btnReturn);
        btnRerurn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //outintent생성 메인으로 전달할 인텐트
                Intent outIntent = new Intent(getApplicationContext(),MainActivity.class);//메인화면으로 이동
                outIntent.putExtra("Hap",hapvalue);//hapValue를 Hap에 대입해서 전달
                //startActivity는 없음
                setResult(RESULT_OK,outIntent);
                finish();
            }
        });
    }
}
