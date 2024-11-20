package com.example.a0314_11;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText edit1,edit2;//클래스추가
    Button btnAdd, btnSub, btnMul, btnDiv, btnDel;//클래스추가
    TextView textResult;//클래스추가
    //숫자를 가져옴 edit1, edit2에서 가져와서 edit1.getText().toString() 가져와서 문자열//
    String num1,num2;//+sum필요
    Integer result;//sum int 형변환 문자열을 정수형으로 변환하는 메소드 사용 int클래스
    Double result2;//소숫점사용을 위한 Double클래스

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("진주양의 간단계산기");//화면상단에 타이틀 기록
        edit1=(EditText)findViewById(R.id.Edit1);
        edit2=(EditText)findViewById(R.id.Edit2);
        btnAdd=(Button) findViewById(R.id.BtnAdd);//정렬 +alt+소문자L
        btnSub=(Button) findViewById(R.id.BtnSub);//메모리할당
        btnMul=(Button) findViewById(R.id.BtnMul);
        btnDiv=(Button) findViewById(R.id.BtnDiv);
        btnDel=(Button) findViewById(R.id.BtnDel);

        textResult=(TextView) findViewById(R.id.TextResult);//전체선택 +a,

        btnAdd.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                num1=edit1.getText().toString();//숫자를 문자로 변환하는 메소드
                num2=edit2.getText().toString();
               result=Integer.parseInt(num1)+Integer.parseInt(num2);//정수형 변수에 저장

                textResult.setText("계산결과:"+result.toString());//글자를 셋팅 정수형을 문자열로 변경하여 셋팅
            }
        });//btnAdd 클릭이벤트

        btnSub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1=edit1.getText().toString();
                num2=edit2.getText().toString();
                result=Integer.parseInt(num1)-Integer.parseInt(num2);

                textResult.setText("계산결과:"+result.toString());
            }
        });

        btnMul.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    num1=edit1.getText().toString();
                    num2=edit2.getText().toString();
                    result=Integer.parseInt(num1)*Integer.parseInt(num2);

                    textResult.setText("계산결과:"+result.toString());
                }
        });

        btnDiv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                num1=edit1.getText().toString();
                num2=edit2.getText().toString();
                result2=Double.parseDouble(num1)/Double.parseDouble(num2);

                textResult.setText("계산결과:"+result2.toString());

            }
        });

        btnDel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                edit1.setText("");
                edit2.setText("");

                textResult.setText("계산결과:");

            }
        });
    }//onCreate
}//MainActivity
