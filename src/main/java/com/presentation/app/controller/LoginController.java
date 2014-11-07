package com.presentation.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.presentation.app.model.LoginModel;



@Controller
public class LoginController {

	@RequestMapping(value="/login.html")
	public ModelAndView viewLoginPage(){
		ModelAndView model = new ModelAndView("Login");
		return model;
	}
	
	@RequestMapping(value="/welcome.html", method=RequestMethod.POST)
	public ModelAndView viewWelcomePage(@ModelAttribute("login") LoginModel login){
		if(login.getUsername().equals("admin")){
			ModelAndView model = new ModelAndView("Menu");
			return model;			
		}
		
		else{
			ModelAndView model = new ModelAndView("Login");
			return model;			
		}
	}
	
}
