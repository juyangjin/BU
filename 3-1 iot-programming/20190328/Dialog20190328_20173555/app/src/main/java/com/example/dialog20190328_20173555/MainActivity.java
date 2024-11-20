package com.example.dialog20190328_20173555;

import android.app.AlertDialog;
import android.content.DialogInterface;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    Button button1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button1=(Button)findViewById(R.id.button1);
        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //버전 Array 선언
                final String[] versionArray = new String[]{"파이","오레오","누가"};
                final boolean[] checkArray= new boolean[]{false, false, false};
                //대화상자 생성 클래스 객체 생성
                 AlertDialog.Builder dlg = new AlertDialog.Builder( MainActivity.this);
                 dlg.setTitle("힘내요: 여기는 제목란입니다.");
                //메시지 부분에 setItems가 들어가야 하니, 주석처리
                 //dlg.setMessage("여기는 내용란입니다.");
                dlg.setMultiChoiceItems(versionArray, checkArray, new DialogInterface.OnMultiChoiceClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                        button1.setText(versionArray[which]);
                    }
                });

                /*dlg.setSingleChoiceItems(versionArray, 0, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                       button1.setText(versionArray[which]);
                    }
                });*/


               /* dlg.setItems(versionArray,new DialogInterface.OnClickListener())

                        //하나의 항목을 눌렀을 대 동작 versionArray[which] 요소위치를 가지고 있음
                button1.setText();//버튼에 글자를 설정, 내가 선택한 항목 글자로*/


                 dlg.setIcon(R.mipmap.ic_launcher);
                 //세팅 완료 후 보여주기
                //확인버튼 ok버튼
                dlg.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                         Toast.makeText(getApplicationContext(),"버튼 누름",Toast.LENGTH_LONG).show();
                    }
                });
                //dlg.setPositiveButton("확인", new DialogInterface.OnClickListener()) //확인 글자, 확인 누를 때 동작

                Toast.makeText(getApplicationContext(),"누름완료",Toast.LENGTH_LONG).show();
                dlg.show();
            }
        });
    }
}
