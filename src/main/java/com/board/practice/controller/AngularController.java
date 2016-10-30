package com.board.practice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/angular")
public class AngularController {
	
	@RequestMapping(value="/sum")
	public String sum() throws Exception{
		System.out.println("hoho~~~~~");
		return "sum";
	}
}
