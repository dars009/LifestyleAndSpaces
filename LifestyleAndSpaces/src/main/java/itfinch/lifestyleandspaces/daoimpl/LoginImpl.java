package itfinch.lifestyleandspaces.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import itfinch.lifestyleandspaces.beans.Login;
import itfinch.lifestyleandspaces.dao.LoginDAO;
import itfinch.lifestyleandspaces.util.HibernateUtil;

@Repository
public class LoginImpl implements LoginDAO {

	public List<Login> validateUser(String username, String password) {
		List<Login> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql =" FROM Login "
				   +" WHERE (usr_email = ? or mob_no = ?) "
				   +" AND usr_password = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, username);
		query.setParameter(2, password);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	
	
	
	public Integer updatePassword(Integer userId, String newPassword) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql =" UPDATE Login "
				   +" SET usr_password = ? WHERE id = ?";
		Query query = session.createQuery(hql);
		query.setParameter(0, newPassword);
		query.setParameter(1, userId);
		int row = query.executeUpdate();
		transaction.commit();
		session.close();
		return row;
	}

	public List<Login> getDetailsById(Integer userId) {
		List<Login> list = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql =" FROM Login WHERE id =:userId ";
		Query query = session.createQuery(hql);
		query.setParameter("userId", userId);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
}
