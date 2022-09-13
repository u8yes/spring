package com.springproj.biz.common;

import org.aspectj.lang.JoinPoint;

import com.springproj.biz.board.BoardVO;

public class AfterReturningAdvice {
	
	public void afterLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName();
		
		if(returnObj instanceof BoardVO) {
			BoardVO board = (BoardVO) returnObj;
			
			if(board.getWriter().equals("민용기")) {
				System.out.println("잘생긴 민용기님이군요.");
			}
		}
		
		System.out.println("[정상 종료] " + method + "() 비즈니스 로직 수행 후 동작");
	}
}
