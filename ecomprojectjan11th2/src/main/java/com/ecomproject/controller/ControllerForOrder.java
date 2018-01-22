package com.ecomproject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomproject.DAO.CartDAO;
import com.ecomproject.DAO.OrderDAO;
import com.ecomproject.DAO.ProductDAO;
import com.ecomproject.DAO.UserDAO;
import com.ecomproject.model.Cart;
import com.ecomproject.model.Ordertable;
import com.ecomproject.model.Product;
import com.ecomproject.model.User;

@Controller
public class ControllerForOrder {
	@Autowired
	OrderDAO orderdao;
	@Autowired
	CartDAO cartdao;
	@Autowired
	ProductDAO productdao;

	
	@RequestMapping(value="checkout" , method=RequestMethod.GET)
	public String sendregister(Ordertable ordertable)
	{
		
		return "checkout";
	}
	@RequestMapping(value="proceed", method=RequestMethod.POST)
	public String getUser( Ordertable ordertable,Model model,HttpSession session)
	{
		String username=(String)session.getAttribute("Username");
		ordertable.setUsername(username);
		ordertable.setStatus("no");
		orderdao.addorder(ordertable);
		model.addAttribute("ordertable",new Ordertable());
		List<Ordertable> list=orderdao.getOrderList(); 
		for(Ordertable ordertable1:list)
			
		{
			if(ordertable1.getUsername()==username)
			{
				if(ordertable1.getStatus()=="no")
				{
					int i=ordertable1.getOrderid();
					model.addAttribute("orderid",i);
				}
			}
			
			
		}
		
		
		return "paymenttesting";		
		

}
	@RequestMapping(value="paymentsuccess", method=RequestMethod.GET)
	public String getProduct1(@RequestParam("pid")int orderid,Model model,HttpSession session)
	{
		
		
		String username=(String)session.getAttribute("Username");
		   
		model.addAttribute("cartlist",this.cartdao.getCartItems(username));
List<Cart> list=cartdao.getCartItems(username);
		
		int total=0;
		for(Cart cart:list)
		{
			total=total+(cart.getProductquantity()*cart.getProductprice());
		}
		Ordertable ordertable=orderdao.getorderdetails(orderid);
		ordertable.setStatus("yes");
		ordertable.setTotalamount(total);
		orderdao.addorder(ordertable);
		for(Cart cart:list)
		{
			Product product=productdao.getProduct(cart.getProductid());
			if(product.getId()==cart.getProductid())
			{
				int s=product.getQuantity()-cart.getProductquantity();
				product.setQuantity(s);
				productdao.editProduct(product);
			}
			cart.setOrderid(orderid);
			cart.setOrdered(true);
			cartdao.updateCartItem(cart);
		}
		
		
		
		
		
		
			
		
		return"startingpage";
	}
	
}
