package com.ecomproject.controller;


import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

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
	public String getProduct(@RequestParam("pid")int id,Model model,HttpSession session)
	{
		int i=0;int cartid=0;
		Product product=productdao.getProduct(id);
		model.addAttribute("productsee", product);
		try
		{
			String username=(String)session.getAttribute("Username");
			List<Cart> list=cartdao.getCartItems(username);
			for(Cart cart2:list)
			{
				if(cart2.getProductid()==id)
				{
					
					cartid=cart2.getCartid();
				}
			}
			Cart cart=cartdao.getCartItem(cartid);
			i=cart.getProductquantity();
		  
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised"+e);
		}
		
		model.addAttribute("i", i);
	
		
		return"displayproduct";
	}
	@RequestMapping(value="editcart", method=RequestMethod.GET)
	public String getProduct1(@RequestParam("pid")int cartid,Model model,HttpSession session)
	{
		int i=0;int cartid1=0;
		Cart cart=cartdao.getCartItem(cartid);
		int id=cart.getProductid();
		cartdao.deleteCartItem(cart);
		Product product=productdao.getProduct(id);
		model.addAttribute("productsee", product);
		try
		{
			String username=(String)session.getAttribute("Username");
			List<Cart> list=cartdao.getCartItems(username);
			for(Cart cart2:list)
			{
				if(cart2.getProductid()==id)
				{
					
					cartid1=cart2.getCartid();
				}
			}
			Cart cart2=cartdao.getCartItem(cartid1);
			i=cart2.getProductquantity();
		  
		}
		catch(Exception e)
		{
			System.out.println("Exception Arised"+e);
		}
		
		model.addAttribute("i", i);
		
		
		
		return"displayproduct";
	}
	@RequestMapping("/{pid}")		
	public String addscart( @PathVariable("pid")int id,@RequestParam("quantity") int quantity,HttpSession session,Model model,Cart cart)
	{	
		int cartid=1;
		int i=0;	
		String username=(String)session.getAttribute("Username");
		Product product1=productdao.getProduct(id);
		
		List<Cart> list=cartdao.getCartItems(username);
		for(Cart cart2:list)
		{
			if(cart2.getProductid()==product1.getId())
			{
				i=1;
				cartid=cart2.getCartid();
			}
		}
	if(i==0)
	{
		cart.setUsername(username); 
		cart.setProductquantity(quantity);
		Product product=productdao.getProduct(id);
	cart.setProductid(product.getId());
	cart.setProductname(product.getName());
	cart.setProductprice(product.getPrice());
	cart.setCategory(product.getCatId());
	cart.setSupplierid(product.getSupplierid());
	model.addAttribute("cart",new Cart());
	
	cartdao.addToCart(cart);
	}
	if(i==1)
	{
		Cart cartsame=cartdao.getCartItem(cartid);
		int s=quantity+cartsame.getProductquantity();
		cartsame.setProductquantity(s);
		cartdao.updateCartItem(cartsame);
		model.addAttribute("cartsame",new Cart());
		
		
	}
	
	model.addAttribute("prolist",this.productdao.getProductList());


	return "displayallproduct";		
		
	}
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public String getsupplierlist(Model model,HttpSession session)
	{
		String username=(String)session.getAttribute("Username");
	   
		model.addAttribute("cartlist",this.cartdao.getCartItems(username));
List<Cart> list=cartdao.getCartItems(username);
		
		int total=0;
		for(Cart cart:list)
		{
			total=total+(cart.getProductquantity()*cart.getProductprice());
		}
		model.addAttribute("total", total);

		return "cartpage";
	}
	@RequestMapping(value="deletecart")
	public String deleteCartItem(@RequestParam("caid")int id,HttpSession session,Model model)
	{
		String username=(String)session.getAttribute("Username");
		Cart cart=cartdao.getCartItem(id);
		cartdao.deleteCartItem(cart);
		
		model.addAttribute("cartlist",this.cartdao.getCartItems(username));
List<Cart> list=cartdao.getCartItems(username);
		
		int total=0;
		for(Cart cart2:list)
		{
			total=total+(cart2.getProductquantity()*cart2.getProductprice());
		}
		model.addAttribute("total", total);
		return "cartpage";
	}

	
		
	
}
