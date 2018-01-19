package com.ecomproject.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String getProductpage( Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    model.addAttribute("catlist",this.categorydao.getCategoryList());	
		model.addAttribute("suplist",this.supplierdao.getSupplierList());
		return"ProductPage";

	}
	@RequestMapping(value="saveProduct",method=RequestMethod.POST)
	public String addProductpage(Product product,Model model, HttpServletRequest request,RedirectAttributes attributes)
	{
		
		productdao.addproduct(product);
		String path="C:\\Users\\aneis\\Documents\\GitHub\\Workspace\\ecomprojectjan11th2\\src\\main\\webapp\\WEB-INF\\resources\\";
		path=path+String.valueOf(product.getId())+".jpg";
		File f=new File(path);
		
		MultipartFile filedet=product.getPimage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
 	             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		model.addAttribute("product",new Product());
		model.addAttribute("prolist",this.productdao.getProductList());
		model.addAttribute("catlist",this.categorydao.getCategoryList());
		model.addAttribute("suplist", this.supplierdao.getSupplierList());
		
		
		return"adminuser";		
	}
	@RequestMapping(value="seeallproduct", method=RequestMethod.GET)
	public String getsupplierlist(Model model)
	{
	   
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
	@RequestMapping("/editpro")
	public String getProduct(@RequestParam("pid")int id,Model model)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("productdata", product);
		model.addAttribute("product1",new Product());
		return"admineditproduct";
	}
	@RequestMapping(value="updateproduct",method=RequestMethod.POST)
	public String updateuser(Product product,Model model)
	{
		productdao.editProduct(product);
		model.addAttribute("adminseeallproduct",this.productdao.getProductList());
		return "adminseeallproduct";
	}
	
}
