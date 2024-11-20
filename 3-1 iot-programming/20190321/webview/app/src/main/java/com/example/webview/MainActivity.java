package com.example.webview;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    EditText editUri;//클래스추가(위젯별로)
    Button btnGo,btnBack,btnClear;
    WebView web;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        editUri=(EditText)findViewById(R.id.EdiUri);
        btnGo=(Button)findViewById(R.id.BtnGo);
        btnBack=(Button)findViewById(R.id.BtnBack);
        btnClear=(Button)findViewById(R.id.BtnClear);
        web=(WebView)findViewById(R.id.WebView1);
        web.setWebViewClient(new CookWebViewClient());//WebView에 URL이 로딩되게 설정
        //web로딩은 됨, 확대축소 제어가 필요. websettings 클래스
        WebSettings webset = web.getSettings();//클래스 추가, 객체생성 메소드
        webset.setBuiltInZoomControls(true);//확대축소제어 설정
        //webview에 구글을 띄워보자.
        web.loadUrl("http://www.google.com");//로딩됨
        btnGo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                web.loadUrl(editUri.getText().toString());
            }
        });

        btnBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                web.goBack();
            }
        });

        btnClear.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                editUri.setText("http://");
            }
        });

    }//onCreate()
}//MainActivity
 class CookWebViewClient extends WebViewClient //클래스 추가
 {
     //url을 로딩하는 역할 > 메소드 추가, shouldOverrideUrlLording()

     @Override
     public boolean shouldOverrideUrlLoading(WebView view, String url) {
         return super.shouldOverrideUrlLoading(view, url);
     }
 }

//web(WebViev)<= WebViewClient클래스는 url주소를 로딩해오는 역할을 수행
//WebViewClient를 MainActivity에 추가함 사용 객체생성 클래스 추가 =>
