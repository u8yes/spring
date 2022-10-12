package com.springproj.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

import com.springproj.biz.domain.BrandInfoVO;

@Service
@Aspect
public class AfterReturningAdvice {
	/*
	@Pointcut("execution(* com.springproj.biz..*Impl.get*(..))")
	public void getPointcut() {} 
	
	@AfterReturning(pointcut ="getPointcut()", returning ="returnObj")
	*/
	@AfterReturning(pointcut ="PointcutCommon.getPointcut()", returning ="returnObj")

	public void afterLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName();
		
		if(returnObj instanceof BrandInfoVO) {
			BrandInfoVO boardInfo = (BrandInfoVO) returnObj;
			
			
		}
		
		System.out.println("[정상 종료] " + method + "(AfterReturning) 비즈니스 로직 수행 후 동작");
	}
}
