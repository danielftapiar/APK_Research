package com.android.insecurebank;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.http.HttpException;
import org.json.JSONException;

import android.accounts.AuthenticatorException;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Transfer extends Application{
	int statusCode;
    /** Called when the activity is first created. */
    private static final String TAG = "Transfer.java";	

    public int transferFunds(String fromAccount, String toAccount, String amount, String serveripis, String serverportis)  {
RestClient restClient = new RestClient();

String serverip =serveripis;
String serverport=serverportis;
try {
	statusCode = restClient.dotransfer(serverip, serverport, fromAccount, toAccount,amount);
	return statusCode;
} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (HttpException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
return statusCode;


}
 
    

}
		
	
