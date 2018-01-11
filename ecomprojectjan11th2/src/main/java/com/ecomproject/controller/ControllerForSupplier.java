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

import com.ecomproject.DAO.SupplierDAO;
import com.ecomproject.model.*;
@Controller
public class ControllerForSupplier {
	@Autowired
	
	SupplierDAO supplierdao;
		
	@RequestMapping(value="supplier", method=RequestMethod.GET)
		public ModelAndView addsupplier(Supplier supplier)

	{	
	ModelAndView mv = new ModelAndView("adminaddsupplier");		
	return mv;		
	}

		
	@RequestMapping(value="addsupplier",method=RequestMethod.POST)		
	public ModelAndView addsupplier1(Supplier supplier)
	{			
	supplierdao.addsupplier(supplier);		
	ModelAndView mv=new ModelAndView("adminuser","supplier",new Supplier());
	return mv;	
	}
	@RequestMapping(value="seeallsupplier", method=RequestMethod.GET)
	public String getsupplierlist(Model model)
	{
	   List<Supplier> ul =supplierdao.getSupplierList();
		model.addAttribute("adminseeallsupplier",this.supplierdao.getSupplierList());
		return "adminseeallsupplier";
	}
	@RequestMapping("/supdelete")
	public String deletesupplierlist(@RequestParam("sid") String id,Model model)
	{
		supplierdao.deletesupplier(id);
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("adminseeallsupplier",this.supplierdao.getSupplierList());
		return"adminseeallsupplier";
	}
	@RequestMapping("/supedit")
	public String getSupplier(@RequestParam("sid")String id,Model model)
	{
		Supplier supplier=supplierdao.getSupplier(id);
		model.addAttribute("supplierdata", supplier);
		model.addAttribute("supplier1",new Supplier());
		return"admineditsupplier";
	}
	
	@RequestMapping(value="updatesupplier",method=RequestMethod.POST)
	public String updatesupplier(Supplier supplier,Model model)
	{
		supplierdao.editSupplier(supplier);
		model.addAttribute("adminseeallsupplier",this.supplierdao.getSupplierList());
		return "adminseeallsupplier";
	}


}
