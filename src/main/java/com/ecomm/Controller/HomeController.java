package com.ecomm.Controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecomm.DAO.CartItemDAO;
import com.ecomm.DAO.ProductDAO;
import com.ecomm.model.CartItem;
@Controller
public class HomeController {
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private CartItemDAO cartItemDao;
	@RequestMapping(value="/")
	public String getHomePage(HttpSession session,@AuthenticationPrincipal Principal principal)
	{
		session.setAttribute("categories",productDao.getAllCategories());
		if(principal!=null)
		{
		String email=principal.getName();
		List<CartItem> cartItems=cartItemDao.getCart(email);
		session.setAttribute("cartSize",cartItems.size());
		} 
				return "Home";
	}
	
	@RequestMapping(value="/Header")
	public String getHeader()
	{
		return "Header";
	}
	@RequestMapping(value="/Footer")
	public String getFooter()
	{
		return "Footer";
	}
	@RequestMapping(value="/AboutUs")
	public String getAboutUs()
	{
		return "AboutUs";
	}
	
	
	@RequestMapping(value="/ContactUs")
	public String getContactUs()
	{
		return "ContactUs";
	}
	@RequestMapping(value="/Login")
	public String getLogin()
	{
		return "Login";
	}
	@RequestMapping(value="/loginerror")
	public String loginFailed(Model model){
		model.addAttribute("error","Invalid credentials..");
		return "Login";
	}
	@RequestMapping(value="/logout")
	public String logout(Model model){
		model.addAttribute("msg","Loggedout successfully...");
		return "Login";
	}
}
