package com.ecomproject.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table
public class Cart {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int cartid;
	@Column
	
	private int productid;
    @Column
	private int orderid;
	@Column
	private String productname;
	@Column
	private int productquantity;
	@Column
	private int productprice;
	@Column
	private String supplierid;
	@Column
	private String categoryid;
	@Column
	
	private String Username;
	@Column
	boolean ordered;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public boolean isOrdered() {
		return ordered;
	}
	public void setOrdered(boolean ordered) {
		this.ordered = ordered;
	}
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int i)
	{
		this.cartid = i;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int i) {
		this.productid = i;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getProductquantity() {
		return productquantity;
	}
	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	public String getSupplierid() {
		return supplierid;
	}
	public void setSupplierid(String supplierid) {
		this.supplierid = supplierid;
	}
	public String getCategory() {
		return categoryid;
	}
	public void setCategory(String categoryid) {
		this.categoryid = categoryid;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int addProductquantity(int i) {
		 this.productquantity = productquantity+i;
		 return productquantity;
	}
	

}
