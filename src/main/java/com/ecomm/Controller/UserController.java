package com.ecomm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecomm.DAO.UserDAO;
import com.ecomm.model.User;
@Controller
public class UserController {
	
	@Autowired
	UserDAO userdao;
	@RequestMapping(value="/Register",method=RequestMethod.GET)
	public ModelAndView viewRegister(@ModelAttribute("Register")User user)
	{
		ModelAndView model=new ModelAndView("Register");
		return model;
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("Register")User user)
	{		
		userdao.addUser(user);
		ModelAndView model=new ModelAndView("Login","User",new User());
		return model;
		
	}

}
