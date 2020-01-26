package itfinch.lifestyleandspaces.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import itfinch.lifestyleandspaces.beans.PropImg;
import itfinch.lifestyleandspaces.beans.PropertiesDetails;
import itfinch.lifestyleandspaces.dao.PropertiesDetailsDAO;
import itfinch.lifestyleandspaces.util.HibernateUtil;

@Repository
public class PropertiesDetailsImpl implements PropertiesDetailsDAO{
	
	public void save(PropertiesDetails propertiesDetails,String imagePath) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		PropImg  image = new PropImg();
		image.setImg_name(imagePath);
		image.setPropertiesDetails(propertiesDetails);
		session.save(image);
		transaction.commit();
		session.close();
	}
	public List<PropertiesDetails> getPropertyDetails(String propertyFor,String locality,String city,
			  										  String houseType,String minprice,String maxprice) 
	{
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hqlQuery = " FROM PropertiesDetails "
				   		+ " WHERE (property_for ='"+propertyFor+"')"
				   		+ " AND (locality like '"+locality+"'"
				   		+ " OR prop_city like '"+city+"'"
				   		+ " OR bedroom like '"+houseType+"'"
				   		+ " OR monthly_rent "
				   		+ " BETWEEN '"+minprice+"' AND '"+maxprice+"')";
		Query query = session.createQuery(hqlQuery);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public List<PropertiesDetails> getPropertyDetailsByUserId(Integer userId) {
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("FROM PropertiesDetails WHERE usr_id =:userId");
		query.setParameter("userId", userId);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public List<PropertiesDetails> getPropertyDetailsByPropId(Integer propId) {
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("FROM PropertiesDetails WHERE prop_id =:propId");
		query.setParameter("propId", propId);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public List<PropertiesDetails> searchPropForSignUpUser(Integer userId,String propertyFor, String locality, String city,
			String propertyType) {
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hqlQuery = " FROM PropertiesDetails "
		   				+ " WHERE (property_for like '"+propertyFor+"'"
		   				+ " OR locality like '"+locality+"'"
		   				+ " OR prop_city like '"+city+"'"
		   				+ " OR property_type like '"+propertyType+"') AND (usr_id =:userId)";
		Query query = session.createQuery(hqlQuery);
		query.setParameter("userId", userId);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public List<PropertiesDetails> searchByApartmentType(String apartmentType,Integer minPriceRange,Integer maxPriceRange,
			 											 Integer minProArea,Integer maxProArea, Integer baths,String furnishedStatus){
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hqlQuery = " FROM PropertiesDetails "
		   				+ " WHERE bedroom ='"+apartmentType+"'"
		   				+ " AND monthly_rent BETWEEN "+minPriceRange+" AND "+maxPriceRange+""
		   				+ " AND carpet_area BETWEEN "+minProArea+" AND "+maxProArea+""
		   				+ " AND bathrooms = "+baths+""
		   				+ " AND furnished_status = '"+furnishedStatus+"'";
		Query query = session.createQuery(hqlQuery);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public List<PropertiesDetails> getAllProperties(){
		List<PropertiesDetails> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("FROM PropertiesDetails");
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
}
