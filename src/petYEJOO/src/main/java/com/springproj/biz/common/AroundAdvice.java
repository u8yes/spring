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
			Object returnObj = pjp.proceed(); // proceed 한 순간 핵심기능 수행하러 감. 핵심 기능 끝나면 복귀하러 옴. 근데 뭔가의 객체를 가지고 옴. 그걸 잠시 returnObj에 저장해두자.
			
			stopWatch.stop();
			
			System.out.println(method+"() 메서드 수행에 걸린 시간 : "+stopWatch.getTotalTimeMillis()+"(ms)초\n");
			
			return returnObj;
			
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
