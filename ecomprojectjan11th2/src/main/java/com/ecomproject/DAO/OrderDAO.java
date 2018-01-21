package com.ecomproject.DAO;

import java.util.List;

import com.ecomproject.model.Ordertable;


public interface OrderDAO {
	public void addorder(Ordertable order);
	public List<Ordertable> getOrderList();
	public void deleteorderid(String id);
	public Ordertable getorderdetails(String id);

}
