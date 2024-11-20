package com.example.time_20190418_20173555;

import android.graphics.Color;
import android.os.SystemClock;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CalendarView;
import android.widget.Chronometer;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.TimePicker;

import java.util.Calendar;

public class MainActivity extends AppCompatActivity {
    Chronometer chrono;
    Button btnStart, btnEnd;
    RadioButton rdocal, rdoTime;
    CalendarView calView;
    TimePicker tPicker;
    TextView textView;
    int selectYear, selectMonth, selectDay;//CalendarView에서 선택했을 때 임시저장변수

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("홍길동의 시간예약");
        btnStart = (Button) findViewById(R.id.btnStart);
        btnEnd = (Button) findViewById(R.id.btnEnd);
        chrono = (Chronometer) findViewById(R.id.chronometer1);
        rdocal = (RadioButton) findViewById(R.id.rdoCal);
        rdoTime = (RadioButton) findViewById(R.id.rdoTime);
        tPicker = (TimePicker) findViewById(R.id.timePicker1);
        calView = (CalendarView) findViewById(R.id.calenderView1);
        textView = (TextView) findViewById(R.id.textView1);
        //처음에 상태에 calendarView는 보이고 TimePicker은 숨김
        tPicker.setVisibility(View.INVISIBLE);
        calView.setVisibility(View.INVISIBLE);

        rdocal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tPicker.setVisibility(View.INVISIBLE);
                calView.setVisibility(View.VISIBLE);
            }
        });
        //라디오 버튼 캘린더 뷰 선택시 캘린더 뷰 보임
        rdoTime.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tPicker.setVisibility(View.VISIBLE);
                calView.setVisibility(View.INVISIBLE);
            }
        });
        //예약시작 버튼을 누르면 chronometer의 초가 증가하고 글자 빨강색으로 변경

        btnStart.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                chrono.setBase(SystemClock.elapsedRealtime()); //시간을 초기화 00으로 초기화
                chrono.start();
                chrono.setTextColor(Color.RED);//컬러클래스
            }
        });


        btnEnd.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //chronometer정지
                chrono.stop();
                chrono.setTextColor(Color.BLUE);//파란색 설정"예약에 걸린 시간"
                //TimePicker을 변경하지 않았을 대 0000년 00월 00일 뜨는 문제 해결
                if (selectYear < 1 || selectMonth < 1 || selectDay < 1) {
                    //오늘 날짜를 가져와야 함. 날짜 형식 년월일로 바꾸기 위해서 객체 생성
                    java.util.Calendar curDate = java.util.Calendar.getInstance();
                    curDate.setTimeInMillis(calView.getDate());//캘린더 년월일을 날짜형태로 변경
                    selectYear = curDate.get(Calendar.YEAR);//현재연도 가녀오기
                    selectMonth = curDate.get(Calendar.MONTH)+1;//현재월 가져오기
                    selectDay = curDate.get(Calendar.DAY_OF_MONTH);//현재일 가져오기


                    String str = Integer.toString(selectYear) + "년" +
                            Integer.toString(selectMonth) + "월" +
                            Integer.toString(selectDay) + "일" +
                            tPicker.getCurrentHour() + "시" +
                            tPicker.getCurrentMinute() + "분에 예약됨";

                    textView.setText(str);
                }
            }
        });


        //예약 종료 버튼 chronometer 정지. 글자 파란색으로 변경. 변경된 년월일 가져옴
        //캘린더 뷰에 날짜 년월일을 변경하면
        //변경된 년월일을 임시변수에 저장. select~~에 저장
        calView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() {
            @Override
            public void onSelectedDayChange(CalendarView view, int year, int month, int dayOfMonth) {
                selectYear = year; //선택된 년
                selectMonth = month; //선택된 월
                selectDay = dayOfMonth; //선택된 날
            }
        });
    }
}
