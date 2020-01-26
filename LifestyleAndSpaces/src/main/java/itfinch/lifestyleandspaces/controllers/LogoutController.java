package itfinch.lifestyleandspaces.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController {
	
	private static final Logger logger = Logger.getLogger(LogoutController.class);
	
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
	{
		logger.info("Logout Controller Called");
		request.getSession().invalidate();
		return new ModelAndView("index");
	}
	
}
