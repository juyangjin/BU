package com.example.a20190502_2;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    CheckBox check1, check2, check3;
    Button btn,btnRotate;
    EditText edt1;
    ImageView Img;
    float angle = 0;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        check1=(CheckBox)findViewById(R.id.checkBox1);
        check2=(CheckBox)findViewById(R.id.checkbox2);
        check3=(CheckBox)findViewById(R.id.checkbox3);
        btn=(Button)findViewById(R.id.button1);
        edt1=(EditText)findViewById(R.id.edt1);
        btnRotate =(Button)findViewById(R.id.btnRotate);
        Img = (ImageView)findViewById(R.id.Img);

        check1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked)
                    btn.setEnabled(true);
                else
                    btn.setEnabled(false);
            }
        });

        check2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked)
                    btn.setClickable(true);
                else
                    btn.setClickable(false);
            }
        });

        check3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked)
                    btn.setRotation(45);
                else
                    btn.setRotation(0);
            }
        });

        edt1.setOnKeyListener(new View.OnKeyListener() {
            @Override
            public boolean onKey(View arg0, int arg1, KeyEvent arg2) {
                if(arg2.getAction()==KeyEvent.ACTION_UP)
                {
                    Toast.makeText(getApplicationContext(),edt1.getText().toString(),Toast.LENGTH_SHORT).show();
                }
                return false;
            }
        });

        btnRotate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                angle += 10;
                Img.setRotation(angle);
            }
        });

            }
}
