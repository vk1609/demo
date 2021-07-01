package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/main/v1")
public class MainController {
	
	@RequestMapping(value="/welcome")
	public String welcome() {
		return "welcome";
	}

}
