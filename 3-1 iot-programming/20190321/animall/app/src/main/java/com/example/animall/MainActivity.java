package com.example.animall;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    TextView text2;//클래스 추가
    CheckBox chkAgree;
    RadioGroup rGroup1;
    RadioButton rdoDog, rdocat, rdoRabbit,rdohorse;
    Button btnOk;
    ImageView imgPet;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //위젯변수대입
        text2 = (TextView) findViewById(R.id.Text2);
        chkAgree = (CheckBox) findViewById(R.id.ChkAgree);
        rGroup1 = (RadioGroup) findViewById(R.id.Rgroup1);
        rdoDog = (RadioButton) findViewById(R.id.Rdodog);
        rdocat = (RadioButton) findViewById(R.id.Rdocat);
        rdoRabbit = (RadioButton) findViewById(R.id.RdoRabbit);
        rdohorse = (RadioButton)findViewById(R.id.Rdohorse);
        btnOk = (Button) findViewById(R.id.BtnOk);
        imgPet = (ImageView) findViewById(R.id.ImgPet);
        //체크박스 >> 체크하면/해제 나타남/사라짐(좋아하는 애완,라디오그룹,선택함,이미지뷰)

        chkAgree.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {

                if (chkAgree.isChecked() == true) {
                    text2.setVisibility(View.VISIBLE);
                    rGroup1.setVisibility(View.VISIBLE);
                    btnOk.setVisibility(View.VISIBLE);
                    imgPet.setVisibility(View.VISIBLE);
                } else {
                    text2.setVisibility(View.INVISIBLE);
                    rGroup1.setVisibility(View.INVISIBLE);
                    btnOk.setVisibility(View.INVISIBLE);
                    imgPet.setVisibility(View.INVISIBLE);
                }

            }
        });

        //강아지 라디오 버튼 선택 =>[선택함]버튼을 누르면 동장=>이미지뷰 강아지 사진
        btnOk.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //강아지인지 id찾아야 함
                //라디오그룹에서 체크된 라디오버튼id찾기
                switch (rGroup1.getCheckedRadioButtonId()) {
                    case R.id.Rdodog:
                        imgPet.setImageResource(R.drawable.dog);
                        break;//하나 동작했으면 switch문 멈추기
                    case R.id.Rdocat:
                        imgPet.setImageResource(R.drawable.cat);
                        break;
                    case R.id.RdoRabbit:
                        imgPet.setImageResource(R.drawable.rabbit);
                        break;
                    case R.id.Rdohorse:
                        imgPet.setImageResource(R.drawable.horse);
                        break;
                    //선택을 안했으면 id없음 안내멘트, 선택부터 하세요 띄우기
                    default:
                        Toast.makeText(getApplicationContext(), "동물선택부터 하세요", Toast.LENGTH_SHORT).show();

                }//switch
            }
        });
    }
}
