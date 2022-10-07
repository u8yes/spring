package com.springproj.biz.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

//@ControllerAdvice("com.springproj.controller")
public class CommonExceptionHandler {
	
	@ExceptionHandler(ArithmeticException.class)  //<annotation-driven/>가 context파일에 있어야함.
	public ModelAndView handleArithmeticException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception",e);
		mav.setViewName("/common/arithmeticError");
		
		return mav;
	}
	
	@ExceptionHandler(NullPointerException.class)  //<annotation-driven/>가 context파일에 있어야함.
	public ModelAndView handleNullPointerException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception",e);
		mav.setViewName("/common/nullPointerError");
		
		return mav;
	}
	
	@ExceptionHandler(Exception.class)  //<annotation-driven/>가 context파일에 있어야함.
	public ModelAndView handleException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception",e);
		mav.setViewName("/common/error");
		
		return mav;
	}
}
