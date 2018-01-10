package com.ecomproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecomproject.model.*;
import com.ecomproject.DAO.*;
@Controller
public class MainController {
	@RequestMapping("/starting")
	public String showstarting()
	{
		  return "startingpage";
		  
	}
	@RequestMapping("/home")
	public String showhome()
	{
		  return "home";
		  
	}
	@RequestMapping("/adminuser")
	public String showadmin4()
	{
		  return "adminuser";
		  
	}
	@RequestMapping("/admin")
	public String showadmin()
	{
		  return "admin1";
		  
	}
	@RequestMapping("/Login")
	public String showlogin1()
	{
		  return "Login";
		  
	}
	@RequestMapping("/Registerseller")
	public String showregister4()
	{
		  return "RegisterSeller";
		  
	}
	
	
	
	
	

		  

	@RequestMapping("/contactus")
	public String showcontact()
	{
		  return "contactus";
		  
	}
	@RequestMapping("/login2")
	public String showlogin()
	{
		  return "login";
		  
	}
	@RequestMapping("/feedback")
	public String showfeedback()
	{
		  return "Feedback";
		  
	}
	@RequestMapping("/aboutus")
	public ModelAndView showAbout()
	{
		String s="Project";
		 ModelAndView mv=new ModelAndView("aboutus","test",s);
		 
		return mv; 
	}


}
