package com.android.insecurebank;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class InsecureBankActivity extends Activity {
    /** Called when the activity is first created. */
	
	private Context maincontext;
	
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        Button startbutton =(Button) findViewById(R.id.start_button); //if you get error of R.id cannot be resolved then clean the project and then hit run to rebuild so as to regenerate R
 	   
    	startbutton.setOnClickListener(new View.OnClickListener() {
		
    		public void onClick(View v) {
    			// TODO Auto-generated method stub
    			goto_loginscreen();
    			
    		}});
    }


	protected void goto_loginscreen() {
		// TODO Auto-generated method stub
		Intent goto_loginscreen=new Intent(this,LoginScreen.class);
		
		startActivity(goto_loginscreen); //starts new activity
	}
    
    
	
    
}