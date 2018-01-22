package com.ecomproject.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ecomproject.model.Cart;
import com.ecomproject.model.Category;
import com.ecomproject.model.Ordertable;
@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void addorder(Ordertable ordertable) {
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(ordertable);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}
	

	public List<Ordertable> getOrderList(){
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		List<Ordertable> catlist = session.createQuery("from Ordertable").list();
		trans.commit();
		session.flush();
		session.close();
		return catlist;
		
	}
	public void deleteorderid(int id)
	{
		Session session=sessionFactory.openSession();
		Transaction tran=session.beginTransaction();
		Ordertable ordertable=(Ordertable)session.get(Ordertable.class,id); 
		session.delete(ordertable);
		tran.commit();
		session.close();
		
	}
	public Ordertable getorderdetails(int id)
	{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			Ordertable ordertable=(Ordertable)session.get(Ordertable.class,id);
			trans.commit();
			session.flush();
			session.close();
			return ordertable;
		}	
	}


