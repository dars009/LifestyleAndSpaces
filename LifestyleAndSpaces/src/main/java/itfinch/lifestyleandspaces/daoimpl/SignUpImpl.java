package itfinch.lifestyleandspaces.daoimpl;


import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import itfinch.lifestyleandspaces.beans.Login;
import itfinch.lifestyleandspaces.beans.Profile;
import itfinch.lifestyleandspaces.dao.SignUpDAO;
import itfinch.lifestyleandspaces.util.HibernateUtil;

@Repository
public class SignUpImpl  implements SignUpDAO {

	public void signUp(String name,String mobileNo,String userEmail,String userPass,String usrType) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Login login = new Login();
		login.setUsr_email(userEmail);
		login.setMob_no(mobileNo);
		login.setUsr_password(userPass);
		Profile p = new Profile();
		p.setFirstName(name);
		p.setContactOne(mobileNo);
		p.setUserEmail(userEmail);
		p.setUserType(usrType);
		login.setProfile(p);
		session.save(login);
		transaction.commit();
		session.close();
	}
	public List<Profile> getProfileById(Integer userId) {
		List<Profile> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hqlQuery="FROM Profile WHERE usr_id =:userId";
		Query query = session.createQuery(hqlQuery);
		query.setParameter("userId", userId);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	public void updatePersonalDetailsById(Profile profile,Integer userId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Object o = session.load(Profile.class,userId);
		Profile p = (Profile)o;
		p.setContactOne(profile.getContactOne());
		p.setUserAddress(profile.getUserAddress());
		p.setCity(profile.getCity());
		p.setState(profile.getState());
		p.setCountry(profile.getCountry());
		transaction.commit();
		session.close();
	}
	public void updateOfficeDetailsById(Profile profile,Integer userId) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Object o = session.load(Profile.class,userId);
		Profile p = (Profile)o;
		p.setUserAddress(profile.getUserAddress());
		p.setCompName(profile.getCompName());
		p.setCompWebName(profile.getCompWebName());
		transaction.commit();
		session.close();
	}
	public List<Profile> existUser(String userEmail, String mobile) {
		List<Profile> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hqlQuery = " FROM Profile "
						+ " WHERE usr_email =:userEmail "
						+ " OR contact_one =:mobile";
		Query query = session.createQuery(hqlQuery);
		query.setParameter("userEmail",userEmail);
		query.setParameter("mobile",mobile);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
}
