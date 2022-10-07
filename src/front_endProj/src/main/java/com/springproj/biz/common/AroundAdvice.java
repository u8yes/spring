package com.springproj.biz.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Service
@Aspect
public class AroundAdvice {
	@Pointcut("execution(* com.springproj.biz..*Impl.*(..))")
	public void allPointcut() {}

	@Around("allPointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) {
		String method = pjp.getSignature().getName();
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		try {
			Object returnObj = pjp.proceed();
			
			stopWatch.stop();
			
			System.out.println(method + "() 메서드 수행에 걸린 시간 : "+
					stopWatch.getTotalTimeMillis()+"(ms)초\n");
			
			return returnObj;
			
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
