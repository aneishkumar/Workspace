package com.ecomproject.DAO;

import java.util.List;

import com.ecomproject.model.Ordertable;


public interface OrderDAO {
	public void addorder(Ordertable order);
	public List<Ordertable> getOrderList();
	public void deleteorderid(int id);
	public Ordertable getorderdetails(int orderid);

}
