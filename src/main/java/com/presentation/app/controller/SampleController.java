package com.presentation.app.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {
	@RequestMapping("/test")
	public ModelAndView helloWorld(){
		ModelAndView m = new ModelAndView("hello");
		m.addObject("msg", "Hello world");
		return m;
	}
}
