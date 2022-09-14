package com.springproj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloController implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("/hello.do 요청 처리 메서드()");
		
		ModelAndView mav = new ModelAndView();	// 자료형을 사용하려면 먼저 생성자 호출해야 한다.
		
		mav.addObject("greeting", "Hello Spring");	// greeting이라는 키값으로 Hello Spring value값을 저장.
		mav.setViewName("hello");  		// /WEB-INF/views/hello.jsp	////////// Dispatcher Servlet에 보낼 이름
		
		return mav;
	}
}
