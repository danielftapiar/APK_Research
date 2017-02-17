package com.android.insecurebank;

import java.io.IOException;

import org.apache.http.HttpException;
import org.json.JSONException;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class RawHistory extends Activity {
    /** Called when the activity is first created. */
	
	String statementdirectory=Environment.getExternalStorageDirectory().toString()+"/statements/";
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.history);
        WebView wView = (WebView) findViewById(R.id.history_webview);
         
        //webView.addJavascriptInterface(new JavaScriptInterface(this), "Android");
       //--------------
        
       
//setContentView(wView);

wView.getSettings().setJavaScriptEnabled(true);

WebChromeClient cClient = new WebChromeClient();
wView.setWebChromeClient(cClient);

String filename=statementdirectory+"/rawhistory.html";
wView.loadUrl("file://" + filename);

        
 
		 
    }
    }
		
	
