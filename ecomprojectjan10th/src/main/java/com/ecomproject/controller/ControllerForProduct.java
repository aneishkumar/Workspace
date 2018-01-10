package com.ecomproject.controller;
import java.io.File;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ecomproject.DAO.*;

import com.ecomproject.model.*;

@Controller
public class ControllerForProduct {
	@Autowired
	ProductDAO productdao;
	@Autowired
	CategoryDAO categorydao;
	@Autowired
	SupplierDAO supplierdao;
	@RequestMapping(value="product")
	public String getProductpage(@ModelAttribute("product") Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
		List<Supplier> suplist=supplierdao.getSupplierList();
		System.out.println("supplier list in controller------------------>"+suplist);	
		model.addAttribute("suplist",suplist);
		return"ProductPage";

	}
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public String addProductpage( @ModelAttribute("product")Product product,Model model)
	{
		
		productdao.addproduct(product);
		model.addAttribute("product",new Product());
		model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		
		
		return"adminuser";		
	}
	@RequestMapping(value="seeallproduct", method=RequestMethod.GET)
	public String getsupplierlist(Model model)
	{
	   List<Product> ul =productdao.getProductList();
		model.addAttribute("adminseeallproduct",this.productdao.getProductList());
		return "adminseeallproduct";
	}
	@RequestMapping("/deletepro")
	public String deleteProduct(@RequestParam("pid")int id,Model model)
	{
		productdao.deleteproduct(id);
		model.addAttribute("product",new Product());
	    model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());
	    model.addAttribute("suplist", this.supplierdao.getSupplierList());
	    model.addAttribute("adminseeallproduct",this.productdao.getProductList());
		return "adminseeallproduct";
		}
	
}
