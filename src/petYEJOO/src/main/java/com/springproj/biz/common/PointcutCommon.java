package com.springproj.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

//@Aspect
public class PointcutCommon {
	@Pointcut("execution(* com.springproj.biz..*Impl.get*(..))")
	public void getPointcut() {}
	
	@Pointcut("execution(* com.springproj.biz..*Impl.*(..))")
	public void allPointcut() {}
	
	@Pointcut("execution(* com.springproj.biz..*Impl.insert*(..))")
	public void insertPointcut() {}
}
