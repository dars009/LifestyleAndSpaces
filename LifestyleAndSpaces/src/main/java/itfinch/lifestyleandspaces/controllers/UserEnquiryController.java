package itfinch.lifestyleandspaces.controllers;

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

import itfinch.lifestyleandspaces.beans.PropertiesDetails;
import itfinch.lifestyleandspaces.beans.UserEnquiry;
import itfinch.lifestyleandspaces.daoimpl.EnquiryImpl;
import itfinch.lifestyleandspaces.daoimpl.PropertiesDetailsImpl;


@Controller
public class UserEnquiryController {
	
	private static final Logger logger = Logger.getLogger(UserEnquiryController.class);
	
	@Autowired(required=true)
	EnquiryImpl enq;
	
	@Autowired(required=true)
	PropertiesDetailsImpl properties;
	
	@RequestMapping(value="/enq",method=RequestMethod.GET)
	public ModelAndView save(HttpServletRequest request,HttpServletResponse response) 
	{
		List<PropertiesDetails> list = properties.getAllProperties();
		return new ModelAndView("property_list","List",list);
	}	
	
	@RequestMapping(value="/enquiry",method=RequestMethod.POST)
	public String saveEnq(@ModelAttribute("UserEnquiry") UserEnquiry enquiry,HttpServletRequest request,HttpServletResponse response) 
	{
		logger.info("Enquiry Controller Called");
		int propId = Integer.parseInt(request.getParameter("propid"));
		enquiry.setEnqPropId(propId);
		enq.save(enquiry);
		return "redirect:/enq.htm";
	}
}
