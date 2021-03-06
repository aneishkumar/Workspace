package com.ecomproject.controller;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String sendregister(User user)
	{
		
		return "RegisterPage";
	}
	@RequestMapping(value="Register", method=RequestMethod.POST)
	public String getUser( User user,Model model)
	{
		
		userdao.adduser(user);
		model.addAttribute("user",new User());
		return "Login";		
		
	}

	
	
	@RequestMapping(value="seealluser", method=RequestMethod.GET)
	public String getuserlist(Model model)
	{
	  
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
