package itfinch.lifestyleandspaces.controllers;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import itfinch.lifestyleandspaces.beans.Profile;
import itfinch.lifestyleandspaces.daoimpl.SignUpImpl;
import itfinch.lifestyleandspaces.services.Mailclass;
import itfinch.lifestyleandspaces.services.SmsClass;

@Controller
public class SignUpController {
	
	private static final Logger logger = Logger.getLogger(SignUpController.class);
	
	@Autowired(required=true)
	SignUpImpl signUpImpl;
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView signUp(HttpServletRequest request,HttpServletResponse response) throws IOException 
	{
		logger.info("signUp controller called.");
		String proppageid = request.getParameter("guestuser");
		String name      = request.getParameter("name");
		String mobileNo  = request.getParameter("contactOne");
		String userEmail = request.getParameter("usrEmail");
		String userPass  = request.getParameter("usrPassword");
		String usrType   = request.getParameter("usrType");//Owner & Builder
		String mobile = null;
		String email = null;
		List<Profile> list= signUpImpl.existUser(userEmail, mobileNo);
		for (Profile profile : list) 
		{
			 mobile = profile.getContactOne();
			 email = profile.getUserEmail();
		}
		if(userEmail.equals(email)){
			return new ModelAndView("index","emailmessage","Email is already exist");
		}
		else if(mobileNo.equals(mobile)) {
			return new ModelAndView("index","mobilemessage","Mobile Number is already exist");
		}else {
		String encryptpass = null;
		MessageDigest md;
		try {
				md = MessageDigest.getInstance("SHA-256");
				md.update(userPass.getBytes());
				byte byteData[] = md.digest();
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < byteData.length; i++) 
				{
					sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				}
			    encryptpass = sb.toString(); 
		    }
		catch (NoSuchAlgorithmException e1) {
			logger.info(e1.getMessage());
		}
		 signUpImpl.signUp(name, mobileNo, userEmail, encryptpass,usrType);//signup
	    
		 //message sending after user signup successfully
	     String smsMessage = " Hi "+ name +""
	     				   + " Thanks for registering with"
	     				   + " www.propselect.com";
	     SmsClass.smsSender(mobileNo, smsMessage);
	     
	     //mail sending afetr user signup successfully
	     String messagepart = " Dear " +  name + ", <br><br>"
				   			+ " Greeting's from www.propselect.com <br>"
				   			+ " Thanku you for registering with <br>"
				   			+ " www.propselect.com"
				   			+ " Our representative will get back to you shortly.";
	     String subject = "propselect.com - Received contact details";
	     Mailclass.sendemail(userEmail, messagepart, subject);
		}
		
		//check condition for sign up from both pages index & property upload
		if(!proppageid.equals("upload"))
		{
			return new ModelAndView("index","message","Registration Successful");
		}
		else
		{
			return new ModelAndView("uploadProperty","message","Registration Successful");
		}
	}
	
	@RequestMapping(value="/profile",method=RequestMethod.GET) 
	public ModelAndView getProfileById(HttpServletRequest request,HttpServletResponse response) 
	{
		logger.info("get profile details by id controller called.");
		Integer userId = Integer.parseInt(request.getParameter("id"));
		List<Profile> list = signUpImpl.getProfileById(userId);
		return new ModelAndView("uacc_profile","List",list);
	}
	
	@RequestMapping(value="/editpersonal",method=RequestMethod.POST)
	public ModelAndView updatePersonalDetailsById(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("Profile") Profile profile) 
	{
		logger.info("update profile controller called");
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		signUpImpl.updatePersonalDetailsById(profile,userId);
		List<Profile> list = signUpImpl.getProfileById(userId);
		return new ModelAndView("uacc_profile","List",list);
	}
	
	@RequestMapping(value="/editoffice",method=RequestMethod.POST)
	public ModelAndView updateOfficeDetailsById(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("Profile") Profile profile) 
	{
		logger.info("update profile controller called");
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		signUpImpl.updateOfficeDetailsById(profile,userId);
		List<Profile> list = signUpImpl.getProfileById(userId);
		return new ModelAndView("uacc_profile","List",list);
	}
	
}
