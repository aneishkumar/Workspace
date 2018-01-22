package com.ecomproject.DAO;
import java.util.List;


import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.ecomproject.model.*;
@Repository
public class UserDAOImpl implements UserDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public void adduser(User user) {
		
		
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(user);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}



		//Read
		@SuppressWarnings("unchecked")
		public List<User> getUserlist()
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			List<User> showuser=session.createQuery("from User").list();
			trans.commit();
			session.close();
			return showuser;
			
		}
	
		public void deleteuser(String username)
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			User user=(User)session.get(User.class, username); //to know user name of particular user (typecasting)
			session.delete(user);
			trans.commit();
			session.close();
			
		}
		
		public User getuser(String username)
		{
				Session session=sessionFactory.openSession();
				Transaction trans=session.beginTransaction();
				User user=(User)session.get(User.class,username);
				trans.commit();
				session.flush();
				session.close();
				return user;
			}
			
		public void edituser(User user)
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction(); 
			session.update(user);
			trans.commit();
			session.flush();
			session.close();
			}


	
}
