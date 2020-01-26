package itfinch.lifestyleandspaces.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import itfinch.lifestyleandspaces.beans.UserEnquiry;
import itfinch.lifestyleandspaces.dao.EnquiryDAO;
import itfinch.lifestyleandspaces.util.HibernateUtil;

@Repository
public class EnquiryImpl  implements EnquiryDAO {

	public void save(UserEnquiry enquiry){
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.save(enquiry);
		transaction.commit();
		session.close();
	}
}
