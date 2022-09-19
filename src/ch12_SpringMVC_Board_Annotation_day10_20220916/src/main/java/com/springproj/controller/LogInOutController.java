package com.springproj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springproj.biz.domain.UserVO;
import com.springproj.biz.service.UserService;

@Controller
public class LogInOutController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("/login.me")
	public String loginForm() {
		//System.out.println("loginForm() 호출.");
		
		return "login";
	}
	
	@PostMapping("/login.me")
	public String loginProc(UserVO user, Model model) {
		//System.out.println("loginProc() 호출.");
		String retVal = null;
		
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		UserVO vo = userService.getService(user);
		
		if((vo != null) && vo.getPassword().equals(user.getPassword())) {
			retVal = "redirect:getBoardList.do";
		}else {
			retVal = "redirect:login.me";
		}		
		return retVal;			
	}
}
