package com.ecomm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecomm.DAO.SupplierDAO;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController
{
	@Autowired
	SupplierDAO supplierDao;
	@RequestMapping(value="/all/add", method=RequestMethod.POST)
		public String supplierAdded(@ModelAttribute("AddSupplier") Supplier supplier)
		{
				supplierDao.addSupplier(supplier);
				return "redirect:/all/ViewSupplier";
		}

		@RequestMapping(value="/all/AddSupplier", method=RequestMethod.GET)
		public ModelAndView getSupplierForm(@ModelAttribute("AddSupplier") Supplier supplier)
		{
				System.out.println("Add");	
				ModelAndView model=new ModelAndView("AddSupplier");
				return model;
		}
		@RequestMapping(value="/all/ViewSupplier", method=RequestMethod.GET)
		public ModelAndView getViewSupplierForm(@ModelAttribute("ViewSupplier") Supplier supplier)
		{
				System.out.println("view");	
				ModelAndView model = new ModelAndView();
		        model.addObject("supplierlist", supplierDao.findAllSuppliers());
		        model.setViewName("ViewSupplier");
		        return model;
		}
		@RequestMapping(value="/all/delete", method = RequestMethod.GET)
		public String deleteSupplier(Model m, @RequestParam int id)
		{
		    supplierDao.deleteSupplier(id);
		    return "redirect:/all/ViewSupplier";
		}
		@RequestMapping(value="/all/Edit",method = RequestMethod.GET)
		public ModelAndView getUpdateSupplierForm(@RequestParam int id,Model m)
		{
			Supplier supplier=supplierDao.findSupplierById(id);
		    m.addAttribute("supplier",supplier);
			ModelAndView model = new ModelAndView("EditSupplier","Supplier",new Supplier());
			return model;
		}
		@RequestMapping(value="/all/Edit", method=RequestMethod.POST)
		public String supplierEdited(@ModelAttribute("suplier") Supplier supplier)
		{
				supplierDao.updateSupplier(supplier);
		        return "redirect:/all/ViewSupplier";
				
		}
}
