package itfinch.lifestyleandspaces.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import itfinch.lifestyleandspaces.beans.PropertiesDetails;

@Service
public interface PropertiesDetailsDAO {

	void save(PropertiesDetails propertiesDetails,String imagePath);
	List<PropertiesDetails> getPropertyDetails(String propertyFor,String locality,String city,
													  String houseType,String minprice,String maxprice);
	List<PropertiesDetails> getPropertyDetailsByUserId(Integer userId);
	List<PropertiesDetails> getPropertyDetailsByPropId(Integer propId);
	List<PropertiesDetails> searchPropForSignUpUser(Integer userId,String propertyFor,String locality,String city,String propertyType);
	List<PropertiesDetails> searchByApartmentType(String apartmentType,Integer minPriceRange,Integer maxPriceRange,
														 Integer minProArea,Integer maxProArea, Integer baths,String furnishedStatus);
	List<PropertiesDetails> getAllProperties();
														
}
