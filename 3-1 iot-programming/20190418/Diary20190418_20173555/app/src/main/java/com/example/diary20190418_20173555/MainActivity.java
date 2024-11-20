package com.example.diary20190418_20173555;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Toast;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.Date;

public class MainActivity extends AppCompatActivity {

    DatePicker dp;
    EditText edtDiary;
    Button btnWrite;
    String fileName; //연_월_일.text로 날짱에서 추출해와서 파일명 저장할 변수
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("진주양의 간단일기장");

        dp = (DatePicker) findViewById(R.id.datePicker1);
        edtDiary = (EditText)findViewById(R.id.edtDiary);
        btnWrite =(Button) findViewById(R.id.btnWrite);
        Calendar cal = Calendar.getInstance(); //현재 날짜 시간 정보 객체 생성 (추상클래스)
        int cYear = cal.get(Calendar.YEAR);//현재년도 가져오기 현재 날짜 변수, 현재년도,현재월, 현재일
        int cMonth = cal.get(Calendar.MONTH);//현재월 저장됨
        int cDay = cal.get(Calendar.DAY_OF_MONTH);//현재일 저장됨
        //만일 데이터피커를 변경하지 않으면 cYear,cMonth,cDay 그대로 사용함
        //데이터 피커를 변경했을 때 선택했을 때 년월일 추출,데이터 피커를 초기화하는 메소드 작성 dp.init()메소드
        dp.init(cYear, cMonth, cDay, new DatePicker.OnDateChangedListener() {
            @Override
            public void onDateChanged(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                //변경했을 때 년도는 변경하지 않았을 때 cYear=year, cMonth=monthOfYear, monthOfyear=day
                fileName = Integer.toString(year) + "_" + Integer.toString(monthOfYear + 1) + "_" + Integer.toString(dayOfMonth) + ".txt";
                String str = readDiary(fileName); //리턴받는 정보는 일기내용.readDiary()=>onCreate()밖에 위치 화일명으로된 일기기 있는 알아보기.
                edtDiary.setText(str);//가져온 일기는 str 연두색 영역 설정
                btnWrite.setEnabled(true);//버튼 활성화 => 동작가능
            }
        });
        //위에는 이미 있는 읽기 설정, 새로 쓰는 읽기를 저장
        btnWrite.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //새로운 읽기 저장 파일을 출력해야 함.
                try {
                    FileOutputStream outFs =openFileOutput(fileName, Context.MODE_PRIVATE);//쓰기전용으로 연다.
                   String str = edtDiary.getText().toString(); //쓰기
                    //화일에 써야 write()
                    outFs.write(str.getBytes()); //byte타입으로 화일에 쓰기
                    outFs.close();
                    //사용자는 화일을 썼는지 모름, 안내멘트 토스트 메시지로 화일명이 저장된 표기
                    Toast.makeText(getApplicationContext(), fileName+"이 저장됨", Toast.LENGTH_SHORT).show();
                }
                catch (Exception e){
                    //처리할게 없음
                }
            }
        });


    }//onCreate
    String readDiary(String fName) { //fileName =>fName
        String diaryStr = null;//일기 내용 초기화
        FileInputStream inFs;//class import 읽기전용으로 열어야하는 객체 화일명으로 열다가 오류
        try {
            inFs=openFileInput(fName);//화일명을 열기, 화일은 byte 타입, 화일에서 읽어올 byte타입 배열 선언
            byte[] txt = new byte[500]; //8줄 정도 기입했다고 500byte정도만 할당
            inFs.read(txt);//화일을 읽음. txt에 저장해야함. read메소드 화일을 읽어서 txt에 저장하는 기능
            inFs.close();
            diaryStr=new String(txt).trim();
            //일기를 쓸때는 앞뒤에 공백 들어갈 수 있음. 공백제거 메소드 trim();
            //diaryStr=(new String(txt)).trim();//byte타입->string형 변환, 공백제거
            //일기가 있다면 버튼은 [수정하기]버튼으로 안내멘트 텍스트를 바꿔줌
            btnWrite.setText("수정하기");
        }
        catch (Exception e){//해당날짜 일기가 없을 때 입출력 예외 처리
            btnWrite.setText("새로저장"); //일기가 없어서 새로 저장하기 멘트
            //연두색 영역 8줄에는 힌트로 "일기가 없으니 새로 작성하세요."
            edtDiary.setHint("일기가 없으니 새로 작성하세요"); //커서가 가면 글자가 지워지는 힌트
        }
        return diaryStr;
    }

}//MainActivity
