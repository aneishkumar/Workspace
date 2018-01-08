package com.ecomproject.controller;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.ecomproject.model.*;
import com.ecomproject.DAO.*;
@Controller
public class ControllerForUser {
	@Autowired
	UserDAO userdao;

	@RequestMapping(value="register", method=RequestMethod.GET)
	public ModelAndView sendregister(@ModelAttribute("user")User user)
	{
		ModelAndView mv=new ModelAndView("RegisterPage");
		return mv;
	}
	@RequestMapping(value="Register", method=RequestMethod.POST)
	public ModelAndView getUser(User user)
	{
		
		userdao.adduser(user);
		ModelAndView mv=new ModelAndView("Login","user",new User());
		return mv;		
		
	}
	

	
}
