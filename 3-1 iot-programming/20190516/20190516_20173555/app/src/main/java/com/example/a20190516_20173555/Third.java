package com.example.a20190516_20173555;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class Third extends MainActivity{
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.third);
        Button thirdBtn =(Button)findViewById(R.id.thirdBtn);
        thirdBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }
}
