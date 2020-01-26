package itfinch.lifestyleandspaces.controllers;


import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import itfinch.lifestyleandspaces.beans.Login;
import itfinch.lifestyleandspaces.beans.Profile;
import itfinch.lifestyleandspaces.daoimpl.LoginImpl;
import itfinch.lifestyleandspaces.daoimpl.SignUpImpl;

@Controller
public class LoginController {
	
	private static final Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired(required=true)
	LoginImpl loginImpl;

	// LoginImpl loginImpl = new LoginImpl();

	
	@Autowired(required=true)
	SignUpImpl signUp;
	
	/*
	 * GET - POST Mapping
	 * avoid form re-submission &
	 * to avoid GET Method Response Error While hiting thw url directly.
	 * 
	 * */
	/*@RequestMapping(value="/validate", method=RequestMethod.GET)
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response)
	{
		return new ModelAndView("index","Message","Login Falied.!");
		
	}*/
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String checkLogin(HttpServletRequest request, HttpServletResponse response) 
	{
		logger.info("login controller called.");
		String loginuser = request.getParameter("loginuser");
		String usrNameOrMobNo = request.getParameter("usrNameOrMobNo");
		String password = request.getParameter("password");
		String encryptpass = null;
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(password.getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) 
			{
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			encryptpass = sb.toString(); 
		} catch (NoSuchAlgorithmException e1) {
			logger.info(e1.getMessage());
		}
		HttpSession session = request.getSession();
		logger.info("old session : "+session.getId());
		logger.info("session last access time : "+session.getLastAccessedTime());
		logger.info("max inactive time interval : "+session.getMaxInactiveInterval());
		if(!session.isNew())
		{
			session.invalidate();
			session = request.getSession();
			session.setMaxInactiveInterval(0);
			logger.info("new session:"+session.getId());
		}
		
		int dbUsrId = 0;
		String dbEmail = null;
		String dbMobile = null;
		String dbPass = null;
		List<Login> list = loginImpl.validateUser(usrNameOrMobNo,encryptpass);
		for (Login login : list) {
			 dbUsrId = login.getProfile().getUserId();
			 logger.info("user id from database : "+dbUsrId);
			 dbEmail  = login.getUsr_email();
			 logger.info("useremail from database : "+dbEmail);
			 dbMobile = login.getMob_no();
			 logger.info("mobile no from database : "+dbMobile);
			 dbPass   = login.getUsr_password();
			 logger.info("password from database : "+dbPass);
		}
		
		if(usrNameOrMobNo.equals(dbEmail) || (usrNameOrMobNo.equals(dbMobile) && encryptpass.equals(dbPass)))
		{
			String dbUserFirstName = null;
			List<Profile> userProfileList = signUp.getProfileById(dbUsrId);
			for (Profile profile : userProfileList) {
				dbUserFirstName = profile.getFirstName();
			}
			    request.getSession().setAttribute("userId", dbUsrId);
				request.getSession().setAttribute("userName", dbUserFirstName);
				request.getSession().setAttribute("userEmail", dbEmail);
			if(loginuser.equals("null")) {
				return "uacc_summary.jsp";
			    }
				return "uploadProperty.jsp"; 
		}else
		{
			logger.error("Login Failed : "+usrNameOrMobNo);
			return "false"; 
		}
	}
	@RequestMapping(value="/reset", method=RequestMethod.POST)
	public ModelAndView resetPassword(HttpServletRequest request, HttpServletResponse response)
	{
		String message = null;
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		String oldPassword = request.getParameter("oldpass");
		String newPassword = request.getParameter("newpass");
		String confirmPassword = request.getParameter("confirmpass");
		String encryptpass = null;
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(oldPassword.getBytes());
			byte byteData[] = md.digest();//convert the byte to hex format method 1
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < byteData.length; i++) 
			{
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			encryptpass = sb.toString(); 
		} catch (NoSuchAlgorithmException e1) {
			logger.info(e1.getMessage());
		}
		List<Login> list =  loginImpl.getDetailsById(userId);
		String dbPass = null;
		for (Login login : list) {
			dbPass = login.getUsr_password();
		}
		
		if(encryptpass.equals(dbPass)){
			if(newPassword.equals(confirmPassword))	{
				String encryptconfirmPassword = null;
				MessageDigest md1;
				try {
					md1 = MessageDigest.getInstance("SHA-256");
					md1.update(confirmPassword.getBytes());
					byte byteData[] = md1.digest();//convert the byte to hex format method 1
					StringBuffer sb = new StringBuffer();
					for (int i = 0; i < byteData.length; i++) 
					{
						sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
					}
					encryptconfirmPassword = sb.toString(); 
				} catch (NoSuchAlgorithmException e1) {
					logger.info(e1.getMessage());
				}
				int row = loginImpl.updatePassword(userId,encryptconfirmPassword);
				if(row > 0)	{
					message = "Your Password Has  Been Changed";
					return new ModelAndView("uacc_profile","successMessage",message);
				}
			}
			else {
				message = "Your New Password & Confirm Password Does Not Matched";
				return new ModelAndView("uacc_profile","errorMessage",message);
			}
		}
		else {
			return new ModelAndView("uacc_profile","errorMessage","Invalid old password");
		}
		return new ModelAndView("uacc_profile");
	}
	public ModelAndView forgotPassword(HttpServletRequest request,HttpServletResponse response)
	{
		logger.info("Forgot Password Controller Called.!");
		//code here
		return new ModelAndView("index");
	}
	
}
