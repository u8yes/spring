package com.springproj.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class BeforeAdvice {
	@Pointcut("execution(* com.springproj.biz..*Impl.*(..))")
	public void allPointcut() {}	// 추상메서드는 반환타입 있다. 일반적으로는 인터페이스 안에 정의할 수 있는 추상메서드.
	
	@Before("allPointcut()")
	public void beforeLog(JoinPoint jp) {	// 어드바이스
		String method = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		
		System.out.println("[공통로그] " + method + "(Before) 비즈니스 로직 수행 전 동작");
		//System.out.println("args 정보 : " + args[0].toString());
	}
}
