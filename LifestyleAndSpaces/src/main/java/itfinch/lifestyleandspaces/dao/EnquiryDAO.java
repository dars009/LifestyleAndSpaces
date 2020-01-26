package itfinch.lifestyleandspaces.dao;


import org.springframework.stereotype.Service;
import itfinch.lifestyleandspaces.beans.UserEnquiry;

@Service
public interface EnquiryDAO {
	
	void save(UserEnquiry enquiry);
}
