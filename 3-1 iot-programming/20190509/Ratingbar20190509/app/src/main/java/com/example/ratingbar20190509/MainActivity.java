package com.example.ratingbar20190509;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RatingBar;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        final RatingBar rating1,rating2,rating3;
        Button btn1,btn2;
        rating1 =(RatingBar)findViewById(R.id.ratingBar1);
        rating2 =(RatingBar)findViewById(R.id.ratingBar2);
        rating3 =(RatingBar)findViewById(R.id.ratingBar3);
        btn1 =(Button)findViewById(R.id.btn1);
        btn2 =(Button)findViewById(R.id.btn2);

        //버튼을 누르면 ratind1,getRating()+rating1.getStepSize():가지고 있는 별갯수+스탭사이즈
        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                rating1.setRating(rating1.getRating()+rating1.getStepSize());
                rating2.setRating(rating2.getRating()+rating2.getStepSize());
                rating3.setRating(rating3.getRating()+rating3.getStepSize());
            }
        });
        //감소하기 버튼
        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                rating1.setRating(rating1.getRating()-rating1.getStepSize());
                rating2.setRating(rating2.getRating()-rating2.getStepSize());
                rating3.setRating(rating3.getRating()-rating3.getStepSize());
            }
        });
    }
}
