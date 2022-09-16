package com.springproj.biz.domain;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;


@Service
@Aspect
public class AroundAdvice {	// 일단은 실행문 실행되기 전에 호출된다.
	@Pointcut("execution(* com.springproj.biz..*Impl.*(..))")
	public void getPointcut() {}
	
	@Around("getPointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) {
		String method = pjp.getSignature().getName();
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		try {
			Object returnObj = pjp.proceed();
			
			stopWatch.stop();
			
			System.out.println(method + "() 메서드 수행에 걸린 시간 : "+stopWatch.getTotalTimeMillis()+"(ms)초");
			System.out.println();
			return returnObj;
			
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
