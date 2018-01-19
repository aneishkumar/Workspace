package com.ecomproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class Category {
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private String catid;
	@Column
	private String catname;
	@Column
	private String catdescription;
	public String getCatid() {
		return catid;
	}
	public void setCatid(String catid) {
		this.catid = catid;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	public String getCatdescription() {
		return catdescription;
	}
	public void setCatdescription(String catdescription) {
		this.catdescription = catdescription;
	}
	

	
}
