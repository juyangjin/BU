package com.example.a20190328_20173555;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Third extends Activity {
    Button thirdBtn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.third);
        thirdBtn=(Button)findViewById(R.id.ThirdBtn);
        //버튼 클릭이벤트는 누르면 종료
        thirdBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

    }
}
