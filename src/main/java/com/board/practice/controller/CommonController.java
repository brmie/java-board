package com.board.practice.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main(){
		return "main";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String admin(Locale locale){
		return "main";
	}
	
	@RequestMapping(value="/main", method=RequestMethod.POST)
	public String mainpost(){
		return "main";
	}
}
