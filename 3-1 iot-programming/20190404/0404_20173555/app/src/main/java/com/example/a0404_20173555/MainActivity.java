package com.example.a0404_20173555;

import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

public class MainActivity extends AppCompatActivity {
    //위젯변수 선언

    TextView tvName, tvEmail;//클래스추가
    Button button1;
    EditText dlgEdtName, dlgEdtEmail;
    TextView toastText;
    View dialogView, toastView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("20173555진주양의 사용자 정보 입력");

        tvName = (TextView)findViewById(R.id.tvName);
        tvEmail = (TextView)findViewById(R.id.tvEmail);
        button1 = (Button)findViewById(R.id.button1);
        //버튼을 누르면 dialog1.xml이 확장되어서 inflate되어서 대화상자로 뜸

        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialogView=(View) View.inflate(MainActivity.this,R.layout.dialog,null); //dialog1.xml을 inflate()확장해야 한다.
                AlertDialog.Builder dlg = new AlertDialog.Builder(MainActivity.this);//대화상자 만들기

                dlg.setTitle("사용자 정보 입력");
                dlg.setIcon(R.drawable.emo_im_cool);
                dlg.setView(dialogView);
                dlg.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //대화상자에 확인을 누르면 동작
                        dlgEdtName=(EditText)dialogView.findViewById(R.id.dlgEdt1);
                        dlgEdtEmail=(EditText)dialogView.findViewById(R.id.dlgEdt2);
                        tvName.setText(dlgEdtName.getText().toString());
                        //대화상자의 입력란에서 가져와서 MainActivity 텍스트뷰에 설정
                        tvEmail.setText(dlgEdtEmail.getText().toString());
                    }
                });
                //tvName,tvEmail에 대화상자 입력글이 setText() dlgEdtName dlgEdtEmail
                dlg.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //취소를 누르면 빨간 토스트 "취소했습니다."
                        toastView=(View)View.inflate(MainActivity.this,R.layout.toast1,null);//toastView에 toast1.xml을 inflate
                        toastText=(TextView)toastView.findViewById(R.id.toastText1);//취소했습니다. toastText
                        toastText.setText("취소했습니다.");//TextView1->취소했습니다. 글자로 셋팅
                        Toast toast =new Toast(MainActivity.this);
                        //토스트는 토스트 객체를 생성해서 접근
                        toast.setView(toastView);
                        toast.show();
                    }
                });
                dlg.show();//대화상자 보이기
            }

        });
    }

}

