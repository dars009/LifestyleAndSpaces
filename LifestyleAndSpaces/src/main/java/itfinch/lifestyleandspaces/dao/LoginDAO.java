package itfinch.lifestyleandspaces.dao;

import java.util.List;

import org.springframework.stereotype.Service;
import itfinch.lifestyleandspaces.beans.Login;

@Service
public interface LoginDAO {
	
	List<Login> validateUser(String username, String password);
	Integer updatePassword(Integer userId, String newPassword);
	List<Login> getDetailsById(Integer userId);
}
