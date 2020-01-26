package itfinch.lifestyleandspaces.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import itfinch.lifestyleandspaces.beans.Profile;

@Service
public interface SignUpDAO {
	
	
	void signUp(String name,String mobileNo,String userEmail,String userPass,String usrType);
	List<Profile> getProfileById(Integer userId);
	void updatePersonalDetailsById(Profile profile,Integer userId);
	void updateOfficeDetailsById(Profile profile,Integer userId);
	List<Profile> existUser(String userEmail, String mobile);
}
