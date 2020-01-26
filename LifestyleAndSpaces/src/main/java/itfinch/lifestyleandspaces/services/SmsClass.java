package itfinch.lifestyleandspaces.services;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.apache.log4j.Logger;

public class SmsClass {
	
	private static final Logger logger = Logger.getLogger(SmsClass.class);
	
	public static void smsSender(String mobileNumber, String msg)
	{
		logger.info("Sms sservice called");
		String mobile = mobileNumber; //mobile number
		//Your authentication key
		String authkey = "Auth key pest here";
		//Multiple mobiles numbers separated by comma
		String mobiles = mobile;
		//Sender ID,While using route4 sender id should be 6 characters long.
		String senderId = "MSGIND";
		//Your message to send, Add URL encoding here.
		String message = msg;
		//define route //We can set 1 to 4// 4=Tranjectional
		String route="4";

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
			String res;
			while ((res = reader.readLine()) != null)
			logger.info("Response Id for SMS : "+res);
			reader.close();
		}
		catch (IOException e)
		{
			logger.info(e.getMessage());
			System.out.println("Sms Class Error Fail to send SMS");
		}
	}
}
