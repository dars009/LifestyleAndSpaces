package itfinch.lifestyleandspaces.services;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

public class Mailclass {

	private static final Logger logger = Logger.getLogger(Mailclass.class);
	
	public static void sendemail(String toemailid,String messagepart,String sub) throws IOException
	{
		logger.info("send mail service class called");
		String to = toemailid ;  // receiver email id 
		String mess = messagepart + "<br><br> Please make sure to check your junk/spam folder for a mail from inquiry@propselect.com for the same.<br><br>"
							+ " Thank you for choosing us. Should you have any query/concern/suggestion please contact us on +91 0000000 or mail us at support@xyz.com<br><br>"
							+ " <b>Thank You,</b> <br>"
							+ " <b>Ace Consultant </b> </p><br><br><hr>"
							+ " <small>Please do not reply to this email; this address is not monitored. Please contact us on +91 0000000 "
							+ " or <a href=support@xyz.com.com>support@xyz.com</a></small> ";
	              
		String subject = sub;	// setting sender mail id and password
		String login = "temp@gmail.com";
		String password = "temp12";
		logger.info(mess);
	try {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Authenticator auth = new SMTPAuthenticator(login, password);
		Session session = Session.getInstance(props,auth);
		MimeMessage msg = new MimeMessage(session);
		msg.setSubject(subject);
		msg.setContent(mess, "text/html"); // by sunny
		msg.setFrom(new InternetAddress(login));
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(login));  /* changes made by darshit bcc */
		Transport.send(msg);
	}
	catch(Exception e){ 	
		logger.info("invalid email id");
	}
	}
	
	private static class SMTPAuthenticator extends Authenticator {
		private PasswordAuthentication authentication;
		public SMTPAuthenticator(String login, String password) {
			authentication = new PasswordAuthentication(login, password);
		}
		protected PasswordAuthentication getPasswordAuthentication() {
			return authentication;
		}
	}
}
