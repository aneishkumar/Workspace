package com.ecomproject.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Cart {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int cartid;
	private String productid;
	private String productname;
	private int productquantity;
	private int productprice;
	private String supplierid;
	private String category;
	private String Username;
	public int getCartid() {
		return cartid;
	}
	public void setCartid(int i) {
		this.cartid = i;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
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
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	
	

}
