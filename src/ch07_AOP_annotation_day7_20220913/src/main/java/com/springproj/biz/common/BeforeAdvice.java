package com.springproj.biz.common;

import org.aspectj.lang.JoinPoint;

public class BeforeAdvice {
	
	public void beforeLog(JoinPoint jp) {
		String method = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		
		System.out.println("[공통로그] " + method + "() 비즈니스 로직 수행 전 동작");
		System.out.println("args 정보 : " + args[0].toString());
	}
}
