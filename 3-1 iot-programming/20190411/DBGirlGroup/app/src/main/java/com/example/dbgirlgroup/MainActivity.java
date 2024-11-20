package com.example.dbgirlgroup;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    //위젯변수 선언
    EditText edtName,edtNumber,edtNameResult,edtNumberResult;
    Button btnInit,btnInsert,btnSelect,btnDelete,btnUpdate,btnReset;
    myDBHelper myHelper; //클래스 객체참조변수
    SQLiteDatabase sqlDB; //데이터베이스를 읽기 쓰기 전용으로 open하는 클래스, execSQL()

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //onCreat메소드 안
        setTitle("가수그룹관리20173555진주양");
        edtName=(EditText)findViewById(R.id.edtName);
        edtNumber=(EditText)findViewById(R.id.edtNumber);
        edtNameResult=(EditText)findViewById(R.id.edtNameResult);
        edtNumberResult=(EditText)findViewById(R.id.edtNumberResult);

        btnInit=(Button)findViewById(R.id.btnInit);
        btnInsert=(Button)findViewById(R.id.btnInsert);
        btnSelect=(Button)findViewById(R.id.btnSelect);
        btnDelete=(Button)findViewById(R.id.btnDelete);
        btnUpdate=(Button)findViewById(R.id.btnUpdate);
        btnReset=(Button)findViewById(R.id.btnReset);
        myHelper=new myDBHelper(this);//생성자로 객체 생성
        //[초기화]버튼을 누르면 동작
        btnInit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB=myHelper.getWritableDatabase();//DB쓰기전용으로 열기
                //테이블이 있으면 테이블 삭제하고 다시 생성하는게 테이블 초기화기능
                myHelper.onUpgrade(sqlDB,1,2);//1이전버전 테이블 2새로운버전 테이블
                //테이블 삭제 생성 끝났으니 DB닫기
                sqlDB.close();
            }
        });
        //[레코드 추가버튼]1건의 레코드 저장
        btnInsert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB=myHelper.getWritableDatabase();//레코드 쓰기나 DB를 쓰기전용으로 연다.
                sqlDB.execSQL("INSERT INTO groupTBL VALUES ('"+edtName.getText().toString()+"'," +edtNumber.getText().toString()+");");//레코드 추가하는 쿼리문
                sqlDB.close();//1건 정보를 입력했으며, 레코드를 추가했으면 DB닫기
                //사용자는 데이터베이스의 레코드가 추가되어서 눈으로 안보여서 토스트메세지로 '입력됨'표기
                Toast.makeText(getApplicationContext(),"입력됨",Toast.LENGTH_SHORT).show();
            }
        });
        //[조회]버튼 걸그룹이름만 모아서 연두색영역에 출력, 인원만 모아서 파랑색영역에 출력
        btnSelect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB=myHelper.getReadableDatabase();//조회니까 읽기 전용 DB열기
                //select 쿼리 모든 레코드 읽어올 예정 2차원 배열형태 불러온 데이터 저장 ->커서
                Cursor cursor; //클래스 추가 객체생성
                cursor=sqlDB.rawQuery("SELECT * FROM groupTBL;",null); //쿼리문 변수
                //이름만 모아서 저장할 변수, 인원만 모아서 저장할 변수
                String strNames="그룹이름\n\n--------\n\n";//초기화 데이터를 넣는다.
                String strNumber="그룹인원\n\n--------\n\n";
                //전체레코드에서 이름만,인원만 추출하기 위한 while문.
                while (cursor.moveToNext()) {//다음 레코드가 있을때 처리 이름, 인원추출
                    strNames+=cursor.getString(0)+"\n\n";//0번째 열 =>이름해당
                    strNumber+=cursor.getString(1)+"\n\n";//1번째 열=>인원해당
                }//모든 레코드 갯수 만큼 수행
                edtNameResult.setText(strNames);//연두색에 모든 이름을 셋팅
                edtNumberResult.setText(strNumber);//파란색에 모든 인원 세팅
                cursor.close();
                sqlDB.close();
            }
        });

        btnDelete.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB = myHelper.getWritableDatabase();
                if(edtName.getText().toString()!=""){
                    sqlDB.execSQL("DELETE FROM groupTBL WHERE gName = '"+ edtName.getText().toString() + "';");
                }
                sqlDB.close();

                Toast.makeText(getApplicationContext(), "삭제됨", Toast.LENGTH_SHORT).show();
                btnSelect.callOnClick();
            }
        });

        btnUpdate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sqlDB=myHelper.getWritableDatabase();
                if(edtName.getText().toString()!=""){
                    sqlDB.execSQL("UPDATE groupTBL SET gNumber=" + edtNumber.getText() + " WHERE gName ='"
                    + edtName.getText().toString() + "';");
                }
                sqlDB.close();

                Toast.makeText(getApplicationContext(),"수정됨",Toast.LENGTH_SHORT).show();
                btnSelect.callOnClick();
            }
        });
        btnReset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              edtName.setText("");
              edtNumber.setText("");
            }
        });

    }//onCreat 위치
    //onCreat 밖에 위치 MainActivity 안
    //클래스 상속받아 생성함 내부클래스로 배치.MainActivity안 onCreat 밖 DB생성 > 테이블생성 SQLite
    public class myDBHelper extends SQLiteOpenHelper{
        //생성자가 DB생성
        public myDBHelper(Context context){ //프로젝트 정보 프로젝트에서 DB를 생성하므로, 클래스 DB 플로젝트에서 관리됨
            super(context,"groupDB",null,1); //SQLiteOpenHelper
        }
        //필수 메소드 onCreat()=>테이블 생성 onUpgrade()=>테이블 삭제하고 다시생성 없애서 에러
        @Override
        public void onCreate(SQLiteDatabase db) { //테이블 생성 SQLiteDatabase.execSQL("CREAT")
            db.execSQL("CREATE TABLE groupTBL (gName CHAR(20) PRIMARY KEY, gNumber INTEGER);");//쿼리수행문
        }//테이블 생성 끝

        @Override
        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {//이전 테이블, 새로운 테이블
            //테이블이 있으면 삭제하고 다시 생성한다.
            db.execSQL("DROP TABLE IF EXISTS groupTBL"); //만약에 테이블이 있으면 삭제한다.쿼리
            onCreate(db);//테이블 다시 생성
        }
    }//myDBHelper
}//MainActivity
