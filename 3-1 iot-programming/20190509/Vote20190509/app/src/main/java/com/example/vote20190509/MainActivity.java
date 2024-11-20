package com.example.vote20190509;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("명화선호도 투표 20173555 진주양");
        final int voteCount[]=new int[12];//각 명화별 투표수 저장할 용도 배열 선언
        //배열을 0으로 초기화 for문 사용
        for(int i=0;i<12;i++)voteCount[i]=0;//초기화
        //위젯도 배열로 처리 이미지 버튼 9개를 객체배열 선언
        ImageView image[] = new ImageView[12];//클래스 추가 위젯객체참조 변수선언
        //이미지의 ID도 배열로 선언 ID Integer타입임
        Integer imageId[] ={R.id.iv1, R.id.iv2, R.id.iv3,
                R.id.iv4, R.id.iv5, R.id.iv6,
                R.id.iv7, R.id.iv8, R.id.iv9,R.id.iv10,R.id.iv11,R.id.iv12};
        //이미지의 그림제목을 저장할 배열=>9개의 요소 저장
        final String imgName[]={"독서하는 소녀","꽃장식 모자 소녀","부채를 든 소녀",
                "이레느 깡 단 베라양","잠자는 소녀","테라스의 두 자매",
                "피아노 레슨","피아노 앞의 소녀들","해변에서","제주1","제주2","고흐"};

        //for문으로 설정 9번 ImageView는 버튼이 아닌데, 누르면 카운트를 voteCount[1]++. 눌렀을때 -> 클릭했을때 setOnClick
        for(int i=0;i<imageId.length;i++) { //length 요소의 갯수만큼
            final int index; //첨자, 요소를 표기하기 위한 변수
            index = i; //요소값 0~8까지 값
            image[index] = (ImageView) findViewById(imageId[index]);//위젯 대입
            //image[index]버튼의 동작 셋팅. 클릭 이벤트 셋팅
            image[index].setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    //해당 이미지가 클릭되면 voteCount[index]++, 투표수 증가. 사용자를 위해서 눌리면 투표 수 보여줌 (토스트메시지로)
                    voteCount[index]++;//voteCount[index]=voteCount[index]+1;
                    Toast.makeText(getApplicationContext(), imgName[index] + ":총" + voteCount[index] + "표", Toast.LENGTH_SHORT).show();//토스트메시지
                }
            });//image[index].setOnClickListener
            //투표종료버튼 처리=>두번째 TableLayout
            Button btnFinish = (Button)findViewById(R.id.btnResult);
            btnFinish.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    //페이지 이동하기
                    Intent intent = new Intent(getApplicationContext(),ResultActivity.class);
                    intent.putExtra("VoteCount",voteCount);//인텐트 변수를 추가해야 하는데 여기서는 배열을 추가
                    intent.putExtra("ImageName",imgName);//인텐트변수,배열명
                    startActivity(intent);
                }
            });

        } //for

    }
}
