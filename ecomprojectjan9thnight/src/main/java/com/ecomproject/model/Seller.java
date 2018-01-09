package com.ecomproject.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Seller {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String sellerid;
	private String sellername;
	private String selleraddress;
	private String selleremail;
	private String sellerpassword;
	public String getSellerid() {
		return sellerid;
	}
	public void setSellerid(String sellerid) {
		this.sellerid = sellerid;
	}
	public String getSellername() {
		return sellername;
	}
	public void setSellername(String sellername) {
		this.sellername = sellername;
	}
	public String getSelleraddress() {
		return selleraddress;
	}
	public void setSelleraddress(String selleraddress) {
		this.selleraddress = selleraddress;
	}
	public String getSelleremail() {
		return selleremail;
	}
	public void setSelleremail(String selleremail) {
		this.selleremail = selleremail;
	}
	public String getSellerpassword() {
		return sellerpassword;
	}
	public void setSellerpassword(String sellerpassword) {
		this.sellerpassword = sellerpassword;
	}
	

}
