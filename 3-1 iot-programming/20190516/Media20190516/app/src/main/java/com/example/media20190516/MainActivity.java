package com.example.media20190516;

import android.media.MediaPlayer;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Switch;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        final MediaPlayer mPlayer;
        mPlayer = MediaPlayer.create(this,R.raw.song1);

        final Switch switch1 =(Switch)findViewById(R.id.switch1);
        switch1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(switch1.isChecked() ==true){
                    mPlayer.start();
                }
                else {
                    mPlayer.stop();
                }
            }
        });
    }
}
