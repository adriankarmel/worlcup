package com.akarmel.worldcup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class HomeController {
		
	@GetMapping("/menu")
	public String showPage() {
		return "menu";
	}
}