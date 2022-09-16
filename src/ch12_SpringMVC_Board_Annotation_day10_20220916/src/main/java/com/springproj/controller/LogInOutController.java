package com.springproj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springproj.biz.domain.UserVO;

@Controller
public class LogInOutController {
	
	@GetMapping("/login.me")
	public String loginForm() {
		//System.out.println("loginForm() 호출.");
		
		return "login";
	}
	
	@PostMapping("/login.me")
	public String loginProc(UserVO user) {
		//System.out.println("loginProc() 호출.");
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		
		
		
		return null;
	}
}
