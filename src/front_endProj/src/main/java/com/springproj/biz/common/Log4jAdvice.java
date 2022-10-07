package com.springproj.biz.common;

public class Log4jAdvice {
	
	public void printLogging(String func) {
		System.out.println("[공통로그]" + func +"비즈니스 로직 수행 전 동작.");
	}
}
