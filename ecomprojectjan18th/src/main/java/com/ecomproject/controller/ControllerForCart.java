package com.ecomproject.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecomproject.DAO.*;
import com.ecomproject.model.*;

@Controller
public class ControllerForCart 
{
	@Autowired
	ProductDAO productdao;
	@Autowired
	CartDAO cartdao;
	@RequestMapping(value="seepro", method=RequestMethod.GET)
	public String getProduct(@RequestParam("pid")int id,Model model,Cart cart,HttpSession session)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("productsee", product);
	
		
		return"displayproduct";
	}
	@RequestMapping("/{pid}")		
	public String addscart( @PathVariable("pid")int id,@RequestParam("quantity") int quantity,HttpSession session,Model model,Cart cart)
	{		
		String username=(String)session.getAttribute("Username");
		cart.setProductquantity(quantity);
	
	cart.setUsername(username); 
	Product product=productdao.getProduct(id);
	cart.setProductid(product.getId());
	cart.setProductname(product.getName());
	cart.setProductprice(product.getPrice());
	cart.setCategory(product.getCatId());
	cart.setSupplierid(product.getSupplierid());
	
	cartdao.addToCart(cart);
	model.addAttribute("cart",new Cart());
	model.addAttribute("prolist",this.productdao.getProductList());


	return "displayallproduct";		
		
	}
	
		
	
}
