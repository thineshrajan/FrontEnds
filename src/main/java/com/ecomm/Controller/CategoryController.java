package com.ecomm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecomm.DAO.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDao;
	@RequestMapping(value="/all/ADD", method=RequestMethod.POST)
		public String categoryAdded(@ModelAttribute("AddCategory") Category category)
		{
				categoryDao.addCategory(category);
				return "redirect:/all/ViewCategory";
		}

		@RequestMapping(value="/all/AddCategory", method=RequestMethod.GET)
		public ModelAndView getcategoryForm(@ModelAttribute("AddCategory") Category category)
		{
				System.out.println("Add");	
				ModelAndView model=new ModelAndView("AddCategory");
				return model;
		}
		@RequestMapping(value="/all/ViewCategory", method=RequestMethod.GET)
		public ModelAndView getViewcategoryForm(@ModelAttribute("Viewcategory") Category category)
		{
				System.out.println("view");	
				ModelAndView model = new ModelAndView();
		        model.addObject("categorylist", categoryDao.findAllCategories());
		        model.setViewName("ViewCategory");
		        return model;
		}
		@RequestMapping(value="/all/DELETE", method = RequestMethod.GET)
		public String deletecategory(@RequestParam int id)
		{
		    categoryDao.deleteCategory(id);
		    return "redirect:/all/ViewCategory";
		}
		@RequestMapping(value="/all/EDIT",method = RequestMethod.GET)
		public ModelAndView getUpdatecategoryForm(@RequestParam int id,Model m)
		{
			Category category=categoryDao.findCategoryById(id);
		    m.addAttribute("categry",category);
			ModelAndView model = new ModelAndView("EditCategory","Category",new Category());
			return model;
		}
		@RequestMapping(value="/all/EDIT", method=RequestMethod.POST)
		public String categoryEdited(@ModelAttribute("categry") Category category)
		{
				categoryDao.updateCategory(category);
		        return "redirect:/all/ViewCategory";
				
		}
}
