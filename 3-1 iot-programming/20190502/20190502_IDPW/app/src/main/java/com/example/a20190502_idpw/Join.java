package com.example.a20190502_idpw;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.os.PersistableBundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Join extends Activity {
    //code-override onCreate 클래스 내부에 커서 위치
    //위젯변수
    EditText jId,jPw;
    Button btnRegist;
    myDBHelper myHelper; //객체 선언
    SQLiteDatabase sqlDB;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //Join.xml을 화면에 셋팅
        setContentView(R.layout.join);
        //위젯변수 대입, 객체 생성
        jId = (EditText)findViewById(R.id.jId);
        jPw = (EditText)findViewById(R.id.jPw);
        btnRegist = (Button)findViewById(R.id.j_regist);
        //생성자로 객체 생성
        myHelper = new myDBHelper(this);//생성자
        //btnRegist버튼은 EditText ID PW를 입력하고 INSERT쿼리 수행 레코드 1건 추가
        btnRegist.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB = myHelper.getWritableDatabase();//데이터베이스 쓰기 전용 열기
                sqlDB.execSQL("INSERT INTO Joininfo VALUES('"+
                                jId.getText().toString()+"','"+
                                jPw.getText().toString()+"');");//레코드추가 회원가입끝 DB닫기
                sqlDB.close();//사용자에게 정상회원가입 메시지 => [가입됨]토스트메시지
                Toast.makeText(getApplicationContext(),"가입됨",
                Toast.LENGTH_SHORT).show();
        //회원가입을 하려면 로그임 화면 이동
                Intent intent = new Intent(getApplicationContext(),MainActivity.class);
                startActivity(intent);//회원가입을 했으니까 join.java를 AndroidManifest.xml에 추가
            }
        });

    }//onCreate()
    //밖 onCreate() 회원가입 하려면 DB 생성해야하고 테이블 생성 -> 객체생성 SQLiteOpenHelper


    public class  myDBHelper extends SQLiteOpenHelper{
        //생성자가 DB생성
        public myDBHelper(Context context) {//생성자가 DB생성, DB명은 LoginDB
            super(context, "LoginDB", null, 1);
        }
        public void onCreate(SQLiteDatabase db) { //테이블 생성하는 메소드
            db.execSQL("CREATE TABLE Joininfo(uld TEXT,upassword TEXT);");//쿼리문으로 테이블 생성
        }
        //onUpgrade        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            db.execSQL("DROP TABLE IF EXISTS Joininfo");
            onCreate(db);
        }
    }//필수메소드가 onCreate, onUpgrade 작성은 code-override




}//MainActivity
