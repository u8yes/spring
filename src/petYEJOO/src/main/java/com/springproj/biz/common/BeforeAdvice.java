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
	public void allPointcut() {} // 참조메서드 : id로 등록이 되어지는 것과 같음.

	@Before("allPointcut()")
	public void beforeLog(JoinPoint jp) { // Pointcut으로 지정한 메서드들에 대한 정보를 담아와준다.
		String method = jp.getSignature().getName(); // 메서드에 대한 Signature 이다.
		// 어떤 메서드가 실행된 것인지 그 이름을 Spring이 알려준다.
		Object[] args = jp.getArgs();
		
		System.out.println("[공통로그(Before)]"+method+"비즈니스 로직 수행 전 동작.");
		//System.out.println("args 정보 : "+args[0].toString());
	}
	
}
