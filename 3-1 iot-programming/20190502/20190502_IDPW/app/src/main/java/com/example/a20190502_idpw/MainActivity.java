package com.example.a20190502_idpw;

import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends Join {
    //메인화면 위젯변수 선언
    EditText edtId, edtPass;
    Button btnJoin, btnLogin;
    //입력한 EditText 아이디,비밀번호와 데베의 아이디 비밀번호가 일치시 1, 불일치시 0 저장
    int IDflag;//아이디 일치확인
    int PWflag;//비번 일치확인
    SQLiteDatabase sqlDB;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        edtId = (EditText)findViewById(R.id.edtID);
        edtPass = (EditText)findViewById(R.id.edtPw);
        btnJoin = (Button)findViewById(R.id.btnJoin);
        btnLogin = (Button)findViewById(R.id.btnLogin);
        //회원가입버튼을 누르면 회원가입화면으로 이동

        btnJoin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),Join.class);//join 화면으로 이동
                startActivity(intent);
            }
        });

        btnLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //select문으로 cursor에 2차원 배열로 저장 => 읽기 전용열기
                sqlDB = myHelper.getReadableDatabase();
                Cursor cursor;
                cursor = sqlDB.rawQuery("SELECT * FROM Joininfo;", null); // 개수 2차원 배열 형태로 저장됨

                String edt1 = null;
                String edt2 = null;
                String pass1 = null;
                String pass2 = null;

                //cursur에서 2차원에서 각각의 행비교를 해서 해당 아이디와 비번이 있는지 확인
                while (cursor.moveToNext()){
                    //DB데이터 확인 첫번째 행(레코드확인)
                    edt2 = cursor.getString(0);
                    pass2 = cursor.getString(1);
                    edt1=edtId.getText().toString();//로그인 화면에 EditText에 로그인하려고 입력한 ID값 임시저장
                    pass1=edtPass.getText().toString();//로그인 하려고 입력한 비번 임시저장
                    //로그인하려고 화면에 입력한 ID가 DB의 첫번째 레코드 ID와 일치하는지 비교
                    //비밀번호도 화면입력과 DB 비번이 일치하는지 확인해야 함

                    if(edt2.equals(edt1)){//아이디 일치
                        IDflag=1;//일치는 1
                        //비밀번호도 일치하는지 비교
                        if(pass2.equals(pass1)) {//아이디,비번 다 일치 =>정상회원=>허가메뉴이동
                            Toast.makeText(getApplicationContext(),"정상회원",Toast.LENGTH_SHORT).show();
                            break;
                        }
                        else {//아이디는 일치하지만 비번 오류 메시지 띄워줌 => 안내
                            Toast.makeText(getApplicationContext(),"회원이지만 비밀번호 오류",Toast.LENGTH_SHORT).show();
                            break;
                        }
                    }
                    else {//아이디 불일치
                        /*Toast.makeText(getApplicationContext(),"아이디가 없습니다.",Toast.LENGTH_SHORT).show(); */
                    }
                }//while
                if(IDflag==0 && PWflag==0){//while 문으로 모든 레코드를 비교했으나 모두 0이면 ID가 없음.
                    Toast.makeText(getApplicationContext(),"아이디가 없습니다.",Toast.LENGTH_SHORT).show();
                }
                cursor.close();//주석처리는 control+shift+/
                sqlDB.close();

            }//onClick
        });//로그인버튼 누름


    }//onCreate
}//class
