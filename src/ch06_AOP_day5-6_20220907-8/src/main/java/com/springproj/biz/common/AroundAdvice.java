package com.springproj.biz.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.util.StopWatch;

public class AroundAdvice {	// 일단은 실행문 실행되기 전에 호출된다.
	
	public Object aroundLog(ProceedingJoinPoint pjp) {
		String method = pjp.getSignature().getName();
		
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		try {
			Object returnObj = pjp.proceed();
			
			stopWatch.stop();
			
			System.out.println(method + "() 메서드 수행에 걸린 시간 : "+stopWatch.getTotalTimeMillis()+"(ms)초");
			
			return returnObj;
			
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
