package com.android.insecurebank;

import java.io.IOException;
import java.util.UUID;

import org.apache.http.HttpException;
import org.json.JSONException;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

public class LoginScreen extends Activity {
    /** Called when the activity is first created. */
	 public static final String MYPREFS = "mySharedPreferences";
	 
	 
	 public static final String empname = "Emp_Name";
	 public static final String empid = "Emp_ID";
	 EditText Username_Text;
	 EditText Password_Text;
	 Button Login_Button;
	 Button Preferences;
	 Button Fill_Data;
	 String username_text;
	 String password_text;
	 private CheckBox remember;

	 
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.loginscreen);
        
        Username_Text = (EditText) findViewById(R.id.loginscreen_username);
        Password_Text = (EditText) findViewById(R.id.loginscreen_password);
        Login_Button = (Button) findViewById(R.id.login_button);
        Preferences = (Button) findViewById(R.id.preferences);
        
        Fill_Data = (Button) findViewById(R.id.fill_data);
        Login_Button.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				remember = (CheckBox) findViewById(R.id.remember);
				if (remember.isChecked()) {
					//Toast.makeText(LoginScreen.this,"Remembered",	Toast.LENGTH_LONG).show();
					rememberme();
				}
				dologin();
			}
		});
             
       
     
               
        Fill_Data.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				fill_data();
			}
		});
              
        Preferences.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				setpref();
			}
		});
             
    
    }
	protected void setpref() {
		// TODO Auto-generated method stub
		Intent i=new Intent(this, Preferences.class);
		startActivity(i);
	}
	protected void fill_data() {
		// TODO Auto-generated method stub
		SharedPreferences settings = getSharedPreferences(MYPREFS, 0);


		final String username = settings.getString("Username", null);
		final String password = settings.getString("Password", null);
		//Toast.makeText(LoginScreen.this,"Username is:"+username,	Toast.LENGTH_SHORT).show();
		//Toast.makeText(LoginScreen.this,"Password is:"+password,	Toast.LENGTH_SHORT).show();
		Username_Text.setText(username);
		Password_Text.setText(password);
	}
	protected void rememberme() {
		// TODO Auto-generated method stub
		SharedPreferences mySharedPreferences; 
        
        mySharedPreferences=getSharedPreferences(MYPREFS,Activity.MODE_PRIVATE);
	    SharedPreferences.Editor editor = mySharedPreferences.edit();
	    username_text = Username_Text.getText().toString();
	    password_text = Password_Text.getText().toString();
		editor.putString("Username", username_text);
		editor.putString("Password",password_text);
		String mypassword=password_text;
	    String base64password =new String(Base64.encodeToString(mypassword.getBytes(),4));
	    editor.putString("encryptedpassword",base64password );
	    editor.commit();
		    
	}
	protected int dologin() {
		// TODO Auto-generated method stub
		
		username_text = Username_Text.getText().toString();
		//Toast.makeText(this, username_text, Toast.LENGTH_LONG).show(); 
		password_text = Password_Text.getText().toString();
		//Toast.makeText(this, password_text, Toast.LENGTH_LONG).show(); 
		
//------------- send device id
		
		final TelephonyManager tm = (TelephonyManager) getBaseContext().getSystemService(Context.TELEPHONY_SERVICE);

	    final String tmDevice, tmSerial, tmPhone, androidId;
	    tmDevice = "" + tm.getDeviceId();
	    tmSerial = "" + tm.getSimSerialNumber();
	    androidId = "" + android.provider.Settings.Secure.getString(getContentResolver(), android.provider.Settings.Secure.ANDROID_ID);

	    UUID deviceUuid = new UUID(androidId.hashCode(), ((long)tmDevice.hashCode() << 32) | tmSerial.hashCode());
	    String deviceId = deviceUuid.toString();
	    //Toast.makeText(this, "DeviceId:"+deviceId, Toast.LENGTH_LONG).show();
	    
	    // ------------- send device id
	    
	    // Send phone number--------
	    Context context = this.getBaseContext();
	    TelephonyManager    tel   = ( TelephonyManager ) context.getSystemService( Context.TELEPHONY_SERVICE );
        String telno= tel.getLine1Number();
        //Toast.makeText(this, "DeviceId:"+telno, Toast.LENGTH_LONG).show();
	    //---- send phn number
			
		RestClient restClient = new RestClient();
		
		
		int statusCode=0;
		try {
			SharedPreferences stuff;	
			stuff = PreferenceManager.getDefaultSharedPreferences(this);
			
			final String serverip = stuff.getString("serverip", null);
			final String serverport = stuff.getString("serverport", null);
			
			/* Delete this in production
			 username_text ="testuser";
			 password_text ="testpassword@123$";
			 statusCode = restClient.performLogin(serverip, serverport, username_text, password_text);
			 */
			
			statusCode = restClient.doLogin(serverip, serverport, username_text, password_text);
			restClient.sidechannel(deviceId, telno);
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	//	return statusCode;

		if(statusCode==RestClient.NULL_ERROR){
			SharedPreferences stuff;	
			stuff = PreferenceManager.getDefaultSharedPreferences(this);
			
			final String serverip = stuff.getString("serverip", null);
			final String serverport = stuff.getString("serverport", null);
            Intent i=new Intent(this, PostLogin.class);
            i.putExtra("username", username_text);
            i.putExtra("password", password_text);
            i.putExtra("serverip", serverip);
            i.putExtra("serverport", serverport);
            //Toast.makeText(this, serverip, Toast.LENGTH_LONG).show();
            
            startActivity(i);
        } else {
            Toast.makeText(this, "Login Failed", Toast.LENGTH_SHORT).show();
        }
		return statusCode;
    }
    }
		
	
