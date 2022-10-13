package com.springproj.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import com.springproj.biz.domain.BoardVO;

@Service
@Aspect
public class AfterReturnigAdvice {
	/*
	@Pointcut("execution(* com.springproj.biz..*Impl.get*(..))")
	public void getPointcut() {}
	
	@AfterReturning(pointcut = "getPointcut()", returning = "returnObj")
	*/
	@AfterReturning(pointcut = "PointcutCommon.getPointcut()", returning = "returnObj")
	public void afterLog(JoinPoint jp, Object returnObj) { // Pointcut으로 지정한 메서드들이 잘 실행되었을 때 실행됨.
		String method = jp.getSignature().getName(); // 메서드에 대한 Signature 이다.
		// 어떤 메서드가 실행된 것인지 그 이름을 Spring이 알려준다.
		
		if(returnObj instanceof BoardVO) {
			BoardVO board = (BoardVO) returnObj;
			
			if(board.getWriter().equals("홍길동")) {
				System.out.println("홍길동님이군요.");
			}
		}
		
		System.out.println("[정상 종료(AfterReturning)]"+method+"비즈니스 로직 수행 후 동작.");
	}
	
}
