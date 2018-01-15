package com.ecomproject.controller;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomproject.DAO.*;

import com.ecomproject.model.*;

@Controller
public class ControllerForFoodDisplay
{
	@Autowired
	ProductDAO productdao;
	
	@RequestMapping(value="breakfastfood")
	public String getMorningFood( Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	   	
		return"morningfooddisplay";

	}
	@RequestMapping(value="lunchfood")
	public String getLunchFood( Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    	
		return"lunchfooddisplay";

	}
	@RequestMapping(value="dinnerfood")
	public String getDinnerFood( Product product, Model model)
	{
		
		model.addAttribute("prolist",this.productdao.getProductList());
	    	
		return"dinnerfooddisplay";

	}
	@RequestMapping("/seepro")
	public String getProduct(@RequestParam("pid")int id,Model model)
	{
		Product product=productdao.getProduct(id);
		model.addAttribute("productsee", product);
		
		return"displayproduct";
	}
	
	

}
