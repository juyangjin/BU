package com.example.a20190516_20173555;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("리스트뷰 테스트");
        final String[] mid = {"히어로즈", "24시", "로스트", "로스트룸",
                "스몰빌", "탐정몽크", "빅뱅이론", "프렌즈",
                "덱스터", "글리", "가쉽걸", "테이큰", "슈퍼내추럴", "브이"};//리스트에 나열될 글자 항목 아이템
        //추가한 위젯 대입
        ListView list = (ListView) findViewById(R.id.listView1);//클래스 추가
        //데이터를 연결할 어댑터 객체
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, mid);
        //일렬로 확장되는 리스트 형태, mid가 나열되게 설정
        //리스트에 어댑터 셋팅
        list.setAdapter(adapter);//리스트에 어댑터 설정됨
        //리스트의 항목(클릭이벤트)을 누르면 해당 결과를 볼 수 있게 설정
        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int i, long id) {
                Toast.makeText(getApplicationContext(), mid[i], Toast.LENGTH_LONG).show();

                if (i == 0) {
                    Intent intent = new Intent(getApplicationContext(), Second.class);
                    startActivity(intent);
                } else if (i == 1) {
                    Intent intent = new Intent(getApplicationContext(), Third.class);
                    startActivity(intent);
                }
            }
        });

    }
}
