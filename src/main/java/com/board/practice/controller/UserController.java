package com.board.practice.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.practice.domain.UserVO;
import com.board.practice.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Inject
	private UserService service;
	
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String signin() throws Exception{
		return "signin";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signin(UserVO user) throws Exception{
		service.insertUser(user);
		return "main";
	}
}
