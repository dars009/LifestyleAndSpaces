package com.test;
import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.Random;


public class SendSms{


	public void generateOtp(String mobile) {

		// random password generator code .................................

		final Random RANDOM = new SecureRandom();
		/** Length of password. @see #generateRandomPassword() */
		final int PASSWORD_LENGTH = 6;
		// Pick from some letters that won't be easily mistaken for each
		// other. So, for example, omit o O and 0, 1 l and L.
		String letters = "1234567890";

		String pw = "";
		for (int i=0; i<PASSWORD_LENGTH; i++)
		{
			int index = (int)(RANDOM.nextDouble()*letters.length());
			pw += letters.substring(index, index+1);
		}
		System.out.println("Generate Password for OTP is :" + pw);

		// random password generator code ...........................................


		//Your authentication key
		String authkey = "197456AnmbztZJ1m5a7d7234";
		//Multiple mobiles numbers separated by comma
		String mobiles = mobile;
		//Sender ID,While using route4 sender id should be 6 characters long.
		String senderId = "MSGIND";
		//Your message to send, Add URL encoding here.
		String message = pw+" : is your one time password (OTP). Thank you, www.propselect.com";
		//define route //We can set 1 to 4// 4=Tranjectional
		String route="default";

		//Prepare Url
		URLConnection myURLConnection=null;
		URL myURL=null;
		BufferedReader reader=null;

		//encoding message
		String encoded_message=URLEncoder.encode(message);

		//Send SMS API
		String mainUrl="http://api.msg91.com/api/sendhttp.php?";

		//Prepare parameter string
		StringBuilder sbPostData= new StringBuilder(mainUrl);
		sbPostData.append("authkey="+authkey);
		sbPostData.append("&mobiles="+mobiles);
		sbPostData.append("&message="+encoded_message);
		sbPostData.append("&route="+route);
		sbPostData.append("&sender="+senderId);

		//final string
		mainUrl = sbPostData.toString();
		try
		{
			//prepare connection
			myURL = new URL(mainUrl);
			myURLConnection = myURL.openConnection();
			myURLConnection.connect();
			reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
			//reading response
			String response;
			while ((response = reader.readLine()) != null)
				//print response
				System.out.println("Response Id for OTP :"+response);
			//finally close connection
			reader.close();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
	}


	public static void main(String[] args)
	{
		SendSms smssender = new SendSms();
		smssender.generateOtp("9588654418");
	}
}