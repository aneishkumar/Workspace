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

import com.ecomproject.DAO.CategoryDAO;

import com.ecomproject.model.*;
@Controller
public class ControllerForCategory {
	@Autowired
	CategoryDAO categorydao;	
@RequestMapping(value="category", method=RequestMethod.GET)
public ModelAndView getCategoryPage(@ModelAttribute("category")Category category)
	
{
		
		
ModelAndView mv = new ModelAndView("adminaddcategory");
		
return mv;
	
}
	
@RequestMapping(value="addcategory",method=RequestMethod.POST)

	public ModelAndView addCategory(Category category)

	{   
	    
	categorydao.addCategory(category);

	ModelAndView mv=new ModelAndView("adminuser","category",new Category());
	return mv;	
	}
	

@RequestMapping("/catdelete")
public String deletecategorylist(@RequestParam("cid") String id,Model model)
{
	categorydao.deletecategory(id);
	model.addAttribute("category", new Category());
	model.addAttribute("adminseeallcategory",this.categorydao.getCategoryList());
	return"adminseeallcategory";
}
@RequestMapping(value="seeallcategory", method=RequestMethod.GET)
public String getsupplierlist(Model model)
{
   List<Category> ul =categorydao.getCategoryList();
	model.addAttribute("adminseeallcategory",this.categorydao.getCategoryList());
	return "adminseeallcategory";
}
@RequestMapping("/catedit")
public String getCategory(@RequestParam("cid")String id,Model model)
{
	Category category=categorydao.getCategory(id);
	model.addAttribute("categorydata", category);
	model.addAttribute("category1",new Category());
	return"admineditcategory";
}
@RequestMapping(value="updatecategory",method=RequestMethod.POST)
public String updateuser(Category category,Model model)
{
	categorydao.editCategory(category);
	model.addAttribute("adminseeallcategory",this.categorydao.getCategoryList());
	return "adminseeallcategory";
}

}
