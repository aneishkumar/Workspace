package com.ecomproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecomproject.DAO.OrderDAO;
import com.ecomproject.DAO.UserDAO;

import com.ecomproject.model.Ordertable;
import com.ecomproject.model.User;

@Controller
public class ControllerForOrder {
	@Autowired
	OrderDAO orderdao;

	
	@RequestMapping(value="checkout" , method=RequestMethod.GET)
	public String sendregister(Ordertable ordertable)
	{
		
		return "checkout";
	}
	@RequestMapping(value="proceed", method=RequestMethod.POST)
	public String getUser( Ordertable order,Model model)
	{
		
		orderdao.addorder(order);
		model.addAttribute("order",new Ordertable());
		return "paymenttesting";		
		

}
	
}
