package com.android.insecurebank;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpException;
import org.json.JSONException;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class PostLogin extends Activity {
    /** Called when the activity is first created. */
	private static final String TAG = "PostLogin.java";
	String statementdirectory;
	private TextView output;
    private DataHelper dh;
	
    EditText from;
	WebView mStatementDisplay;
	EditText to;
	Button transfer_button;
	
	EditText amount;
	int fromtext;
	int totext;
	int amounttext;
	
	
	
	//String amounttext;
	Transfer transfer;
	Button rawhistory;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
    	Bundle extras = getIntent().getExtras();
    	String serveripis = extras.getString("serverip");
    	String serverportis = extras.getString("serverport");
    		
    	//Toast.makeText(this,"serverip: "+serveripis, Toast.LENGTH_SHORT).show();

    	
    	
    	 statementdirectory=Environment.getExternalStorageDirectory().toString()+"/statements/";
    	 
         Log.i(TAG, statementdirectory);
    	
        super.onCreate(savedInstanceState);
        setContentView(R.layout.postlogin);
        
  
    
    
        
        rawhistory= (Button) findViewById(R.id.rawhistory);
        from = (EditText) findViewById(R.id.from_text);
        to = (EditText) findViewById(R.id.to_text);
        amount = (EditText) findViewById(R.id.amount_txt);
        transfer_button = (Button) findViewById(R.id.transfer_button);
        transfer_button.setOnClickListener(new View.OnClickListener() {
        	
        	
        
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
			
				try {
					dotransfer();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			}
		});
       
        	rawhistory.setOnClickListener(new View.OnClickListener() {
        	
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
						
			showstatement();
			}
		});
        
        
    }

	  void showstatement() {
		// TODO Auto-generated method stub
			 Intent i=new Intent(this, RawHistory.class);
         
         startActivity(i);
		

	}


	void dotransfer() throws IOException {
		// TODO Auto-generated method stub
		/*fromtext = from.getText().toString();
		  totext = to.getText().toString();
		  fromtext=123456789;
		  totext=987654321; */
		 //amounttxt = (EditText) findViewById(R.id.amount_txt);
		 String from2= from.getText().toString();
		 String to2= to.getText().toString();
		 String amount2= amount.getText().toString();
		 fromtext=Integer.parseInt(from2);
		 totext=Integer.parseInt(to2);
		 amounttext = Integer.parseInt(amount2);
		
		 
        if (amounttext > 0) {
             {
            	
            	 	int responseCode =0;
            	 	
            	 	transfer=new Transfer(); 
            	 	Bundle extras = getIntent().getExtras();
            		String serveripis = extras.getString("serverip");
            		String serverportis = extras.getString("serverport");
            		
            	 	transfer.transferFunds(from2, to2, amount2,serveripis,serverportis);
            	 	
					//transfer.transferFunds(123456789, 987654321, amount);
				
				} 

            Log.i(TAG, "Transferred $" + amount2 + " from account " +from2+" to account " +to2);
            
            
            String FILE_NAME=statementdirectory+"/rawhistory.html";
   
            BufferedWriter bw = null;
            try {
               bw = new BufferedWriter(new FileWriter(FILE_NAME, true));
               bw.write("Transferred INR "+amount2+" from account: "+from2+"to account: "+to2+"\n");
               //bw.append("Transferred INR "+amount2+" from account: "+from2+"to account: "+to2+"\n");
               bw.newLine();
               bw.flush();
      	 
            } catch (IOException ioe) {
      	 ioe.printStackTrace();
            } finally {                       // always close the file
      	 if (bw != null) try {
      	    bw.close();
      	 } catch (IOException ioe2) {
      	    // just ignore it
      	 }
            } // end try/catch/finally
        
          
            
            //----------------------------------------sqlite db--------
            
            this.output = (TextView) this.findViewById(R.id.out_text);
            this.dh = new DataHelper(this);
	        this.dh.deleteAll();
	        this.dh.insert("From Account: "+from2);
	        this.dh.insert("To Account: "+to2);
	        this.dh.insert("Amount Transferred: "+amount2);       
	        List<String> names = this.dh.selectAll();
	        StringBuilder sb = new StringBuilder();
	        sb.append("Current Transaction:\n");
	        for (String name : names) {
	           sb.append(name + "\n");
	        }
	         
	        Log.d("EXAMPLE", "names size - " + names.size());
	         
	        this.output.setText(sb.toString());
	      //-----------------------            
          //  Toast.makeText(this, "Successful transaction", Toast.LENGTH_SHORT).show();
            
        } else {
            Toast.makeText(this,"Please enter valid amount", Toast.LENGTH_SHORT).show();
        }


	}
    }
		
	
