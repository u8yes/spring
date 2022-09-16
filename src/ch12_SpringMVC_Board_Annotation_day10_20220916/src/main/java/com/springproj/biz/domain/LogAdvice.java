package com.springproj.biz.domain;


public class LogAdvice {
	
	public void printLog(String func) {
		System.out.println("[공통로그]" + func + "비즈니스 로직 수행 전 동작.");
	}
}
