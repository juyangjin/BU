package com.example.intent0404_20173555;

import android.content.Intent;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Button btnNewActivity = (Button) findViewById(R.id.btnNewActivity);
        //버튼 클릭이벤트 클릭시 인텐트 화면이동 변수에 값 대입해서 다음화면으로 넘김
        btnNewActivity.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                EditText edtNum1 = (EditText) findViewById(R.id.edtNum1);
                EditText edtNum2 = (EditText) findViewById(R.id.edtNum2);
                //두수 변수 인텐트 생성
                Intent intent = new Intent(getApplicationContext(), Second.class);
                intent.putExtra("Num1", Integer.parseInt(edtNum1.getText().toString()));//정수형으로 변환해서 넘김
                intent.putExtra("Num2", Integer.parseInt(edtNum2.getText().toString()));
                startActivityForResult(intent, 0);//결과를 리턴받겠다. //startActivity[ForResult] 이동했는데, 결과를 리턴 받는 메소드로 변경
            }
        });

    }//onCrate()
    //RESULT_OK(두번째 화면에서 보내옴 dat sum

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        if (resultCode == RESULT_OK) { //결과가 두번째 화면에서 옴
            int hap = data.getIntExtra("Hap", 0);
            Toast.makeText(getApplicationContext(), "합계:" + hap, Toast.LENGTH_SHORT).show();
        }
    }
}
//MainActivity //onCreate밖에 두번째 화면에서 결과가 셋팅이 되자마자 수행되는 메소드가 있음 onActivityResult()메인수행

