package itfinch.lifestyleandspaces.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import itfinch.lifestyleandspaces.beans.PropertiesDetails;
import itfinch.lifestyleandspaces.daoimpl.PropertiesDetailsImpl;
import itfinch.lifestyleandspaces.services.Mailclass;
import itfinch.lifestyleandspaces.services.SmsClass;

@Controller
public class PropertiesDetailsController {

	@Autowired(required=true)
	PropertiesDetailsImpl properties;

	private static final Logger logger = Logger.getLogger(PropertiesDetailsController.class);
	
	@RequestMapping(value="property",method=RequestMethod.GET)
	public ModelAndView saveProperty(HttpServletRequest request,HttpServletResponse response) {
		return new ModelAndView("uploadProperty","successMessage","Your Property Has Been Uploaded Successfully");
	}
	@RequestMapping(value="/min",method=RequestMethod.POST)
	public String save(@ModelAttribute("PropertiesDetails") PropertiesDetails propertiesDetails,
					   @RequestParam CommonsMultipartFile[] img_name,
					   HttpServletRequest request,HttpServletResponse response) 
	{
		try {
			logger.info("Property Details Save Controller Called");
			String savePath = "D:"+ File.separator + "IMGMULTI" + File.separator;
			File fileSaveDir = new File(savePath);
			if(!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
			String imagePath  = "";
			String fileName = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
				 int imageCount = 1;
						for (CommonsMultipartFile aFile : img_name) 
						{
							logger.info("Original File Name : "+aFile.getOriginalFilename());
							if (!aFile.getOriginalFilename().equals("")) 
							{
								String extension = FilenameUtils.getExtension(aFile.getOriginalFilename());
								imagePath = savePath + fileName + imageCount +'.'+extension ;
							}
							logger.info("File Name : "+fileName);
							byte[] bytes  = aFile.getBytes();
							File files    = new File(imagePath);
							logger.info("Image Path : "+files); 
							FileOutputStream fos = new FileOutputStream(files); 
							fos.write(bytes); 
							properties.save(propertiesDetails,imagePath);
							imageCount++;
							fos.close();
						}
						//Text Message & OTP Send From Here
						String username = propertiesDetails.getUsr_name();
						String to = propertiesDetails.getUsr_email();
						String usermobile = propertiesDetails.getContact_no();
						String smsmsg ="Greeting's from www.propselect.com We have received your details and will get back to you shortly.";
						SmsClass.smsSender(usermobile, smsmsg);
						//Mail Send From Here
						String messagepart = " Dear " +  username + ", <br><br>"
										   + " Greeting's from www.propselect.com <br>"
										   + " We have received your details. <br>"
										   + " Our representative will get back to you shortly.";
						String subject = "propselect.com - Received contact details.";
						Mailclass.sendemail(to, messagepart, subject);
			} catch (Exception e) {
				logger.error(e);
			}
		return "redirect:/property.htm";
	}
	@RequestMapping(value="/properties",method=RequestMethod.POST)
	public ModelAndView getPropertyDetails(HttpServletRequest request,HttpServletResponse response) {
		logger.info("Property Details Controller Called");
		String propertyFor = request.getParameter("propertyFor");
		String locality = request.getParameter("locality");
		String city = request.getParameter("city");
		String houseType = request.getParameter("houseType");
		String minprice = request.getParameter("minprice");
		String maxprice = request.getParameter("maxprice");
		List<PropertiesDetails> list;
		list = properties.getPropertyDetails(propertyFor,locality,city,houseType,minprice,maxprice);//details store into list
		return new ModelAndView("property_list","List",list);
	}
	@RequestMapping(value="/min",method=RequestMethod.GET)
	public ModelAndView getPropertyDetailsByUserId(HttpServletRequest request, HttpServletResponse response) {
		logger.info("Property Details By User Id Controller Called");
		String message = null;
		List<PropertiesDetails> list = null;
		Integer userId = Integer.parseInt(request.getParameter("id"));
		list = properties.getPropertyDetailsByUserId(userId);
		if(list.isEmpty()) 
		{
			message = "No Properties Found";
			return new ModelAndView("uacc_property", "Message",message);
		}
		return new ModelAndView("uacc_property", "List",list);
	}
	@RequestMapping(value="/full",method=RequestMethod.GET)
	public ModelAndView getPropertyDetailsByPropId(HttpServletRequest request,HttpServletResponse response) {
		logger.info("Property Details By Property Id Controller Called");
		List<PropertiesDetails> list = null;
		Integer propId = Integer.parseInt(request.getParameter("propid"));
		list = properties.getPropertyDetailsByPropId(propId);
		return new ModelAndView("properties_details","List",list);
	}
	@RequestMapping(value="/propsearch",method=RequestMethod.POST)
	public ModelAndView serachPropForSignUpUser(HttpServletRequest request,HttpServletResponse response) {
		logger.info("Search property For Sign Up User Controller Called");
		String message = null;
		List<PropertiesDetails> list = null;
		Integer userId = Integer.parseInt(request.getParameter("userId"));
		String propertyFor  = request.getParameter("propertyFor");
		String locality     = request.getParameter("locality");
		String city         = request.getParameter("city");
		String propertyType = request.getParameter("propertyType");
		list = properties.searchPropForSignUpUser(userId,propertyFor, locality, city, propertyType);
		if(list.isEmpty()) 
		{
			message = "No Properties Found";
			return new ModelAndView("uacc_property","Message",message);
		}
		return new ModelAndView("uacc_property","List",list);
	}
	@RequestMapping(value="propertysearch",method=RequestMethod.POST)
	public ModelAndView searchByApartmentType(HttpServletRequest request,HttpServletResponse response) {
		logger.info("Search By Apartment Type Controller Called");
		String message = null;
		List<PropertiesDetails> list = null;
		String apartmentType = request.getParameter("apartmentType");
		Integer minPriceRange = Integer.parseInt(request.getParameter("minPriceRange"));
		Integer maxPriceRange = Integer.parseInt(request.getParameter("maxPriceRange"));
		Integer minProArea = Integer.parseInt(request.getParameter("minProArea"));
		Integer maxPropArea = Integer.parseInt(request.getParameter("maxPropArea"));
		Integer baths = Integer.parseInt(request.getParameter("baths"));
		String furnishedStatus = request.getParameter("furnishedStatus");
		list = properties.searchByApartmentType(apartmentType,minPriceRange,maxPriceRange,minProArea,maxPropArea,baths,furnishedStatus);
		if(list.isEmpty()) 
		{
			message = "No Properties Found";
			return new ModelAndView("property_list","Message",message);
		}
		return new ModelAndView("property_list","List",list);
	}
}
