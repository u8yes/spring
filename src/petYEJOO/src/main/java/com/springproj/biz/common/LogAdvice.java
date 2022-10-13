package com.springproj.biz.common;

public class LogAdvice {

	public void printLog(String func) {
		System.out.println("[공통로그]"+func+"비즈니스 로직 수행 전 동작.");
		// 핵심 기능이 수행되기 전에 잘 수행되고 있는지 확인하기 위해서 공통으로 사용할 수 있게끔 구현할 메세지.
	}
	
}
