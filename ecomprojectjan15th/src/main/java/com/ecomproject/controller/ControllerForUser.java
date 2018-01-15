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
	public ModelAndView sendregister(User user)
	{
		ModelAndView mv=new ModelAndView("RegisterPage");
		return mv;
	}
	@RequestMapping(value="Register", method=RequestMethod.POST)
	public ModelAndView getUser(User user)
	{
		
		userdao.adduser(user);
		ModelAndView mv1=new ModelAndView("Login","user",new User());
		return mv1;		
		
	}

	//@SuppressWarnings("unused")
	
	@RequestMapping(value="seealluser", method=RequestMethod.GET)
	public String getuserlist(Model model)
	{
	   List<User> ul =userdao.getUserlist();
		model.addAttribute("adminseealluser",this.userdao.getUserlist());
		return "adminseealluser";
	}
	
	
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam("uid") String emailid,Model model)
	{
		userdao.deleteuser(emailid);
		model.addAttribute("adminseealluser",this.userdao.getUserlist());
		return"adminseealluser";
	}
	
	@RequestMapping("/edit")
	public String getUser(@RequestParam("uid")String emailid,Model model)
	{
		User user=userdao.getuser(emailid);
		model.addAttribute("userdata", user);
		model.addAttribute("user1",new User());
		return"adminedituser";
	}
	@RequestMapping(value="updateuser",method=RequestMethod.POST)
	public String updateUser(User user,Model model)
	{
		userdao.edituser( user);
		model.addAttribute("adminseealluser",this.userdao.getUserlist());
		return "adminseealluser";
	}

	

	
}
