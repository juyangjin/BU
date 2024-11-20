package com.example.vote20190509;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;

import org.w3c.dom.Text;

public class ResultActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.result);//result.xml 셋팅
        setTitle("투표결과");
        //MainActivity의 인텐트를 받을 인텐트 생성
        Intent intent = getIntent();
        int[] voteResult=intent.getIntArrayExtra("VoteCount"); //VoteCount 인텐변수받기
        String[] imageName=intent.getStringArrayExtra("ImageName");
        //TextView 12개 RatingBar 12개
        TextView tv[]=new TextView[imageName.length];//클래스추가
        RatingBar rbar[] = new RatingBar[imageName.length];//배열의 요소갯수만큼 잡힘
        //R.id.tv1~R.id.tv12까지를 integer배열로 생성 R.id.rbar1~R.id.rbar12
         Integer tvID[]={R.id.tv1,R.id.tv2,R.id.tv3,R.id.tv4,R.id.tv5,R.id.tv6,R.id.tv7,R.id.tv8,R.id.tv9,R.id.tv10,R.id.tv11,R.id.tv12};
         Integer rbarId[]={R.id.rbar1,R.id.rbar2,R.id.rbar3,R.id.rbar3,R.id.rbar4,
                 R.id.rbar5,R.id.rbar6,R.id.rbar7,R.id.rbar8,R.id.rbar9,R.id.rbar10,R.id.rbar11,R.id.rbar12};
         //위젯변수 대입을 for문으로 작성 findViewByld(R.id.tv1~ R.id.rbar1~
        for(int i=0;i<voteResult.length;i++){
            tv[i]=(TextView)findViewById(tvID[i]);//위젯변수대입
            rbar[i]=(RatingBar)findViewById(rbarId[i]);
        }//for
        //intent로 넘겨 받은 값을 각각의 위젯에 셋팅. tv[i],setText(imagerName[i],setRating값
        for(int i=0;i<voteResult.length;i++){
            tv[i].setText(imageName[i]);//그림이름 셋팅
            rbar[i].setRating((float)voteResult[i]);//voteResult int형 원래 0.5 씩 증가
        }

        Button btnReturn =(Button)findViewById(R.id.btnReturn);
        btnReturn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        TextView tvTop = (TextView) findViewById(R.id.tvTop);
        ImageView ivTop = (ImageView) findViewById(R.id.ivTop);
        Integer imageFileId[] = {R.drawable.pic1, R.drawable.pic2,
                R.drawable.pic3, R.drawable.pic4, R.drawable.pic5, R.drawable.pic6,
                R.drawable.pic7, R.drawable.pic8, R.drawable.pic9,R.drawable.pic10,
                R.drawable.pic11,R.drawable.pic12};

        int maxEntry = 0;
        for (int i = 1; i < voteResult.length; i++) {
            if (voteResult[maxEntry] < voteResult[i])
                maxEntry = i;
        }
        tvTop.setText(imageName[maxEntry]);
        ivTop.setImageResource(imageFileId[maxEntry]);


    }
}
