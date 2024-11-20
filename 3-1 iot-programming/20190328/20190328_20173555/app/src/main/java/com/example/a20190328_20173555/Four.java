package com.example.a20190328_20173555;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Four extends  Activity {
        Button fourBtn;
        @Override
        protected void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            setContentView(R.layout.four);
            fourBtn=(Button)findViewById(R.id.FourBtn1);
            //버튼 클릭이벤트는 누르면 종료
            fourBtn.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    finish();
                }
            });

        }
    }


