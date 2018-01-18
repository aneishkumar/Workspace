package com.ecomproject.DAO;

import java.util.List;


import com.ecomproject.model.*;


public interface ProductDAO {
	public void addproduct(Product product);
	public List<Product> getProductList();
	public void deleteproduct(int id);
	public Product getProduct(int id);
	public void editProduct(Product product);
	
}
