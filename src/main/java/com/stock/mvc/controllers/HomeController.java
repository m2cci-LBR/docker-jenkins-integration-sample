package com.stock.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HomeController {
	
	
	@RequestMapping (value="/home/")
	public String home() {
		return "home/home";
	}
	
	
	
	@RequestMapping (value="/home/blank", method = RequestMethod.GET)
	public String blankHome() {
		return "blank/blank";
	}

}
