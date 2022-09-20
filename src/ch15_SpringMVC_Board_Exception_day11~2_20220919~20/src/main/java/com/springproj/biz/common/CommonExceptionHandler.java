package com.springproj.biz.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

//@ControllerAdvice("com.springproj.controller")	// 예외처리 관련 Advice
public class CommonExceptionHandler {
	
	@ExceptionHandler(ArithmeticException.class)	// controller 패키지에서 ArithmeticException에러가 났을 때 붙여준다.(.class)
	public ModelAndView handleArithmeticException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception", e);	// exception키값으로 보관을 하겠다.
		mav.setViewName("/common/arithmeticError");
		
		return mav;
	}
	
	@ExceptionHandler(NullPointerException.class)	// controller 패키지에서 ArithmeticException에러가 났을 때 붙여준다.(.class)
	public ModelAndView handleNullPointerException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception", e);	// exception키값으로 보관을 하겠다.
		mav.setViewName("/common/NullPointerError");
		
		return mav;
	}
	
	@ExceptionHandler(Exception.class)	// controller 패키지에서 ArithmeticException에러가 났을 때 붙여준다.(.class)
	public ModelAndView handleException(Exception e) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("exception", e);	// exception키값으로 보관을 하겠다.
		mav.setViewName("/common/error");
		
		return mav;
	}
}
