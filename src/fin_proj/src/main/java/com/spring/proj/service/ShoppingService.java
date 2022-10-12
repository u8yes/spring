package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.ShoppingVO;



public interface ShoppingService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertService(ShoppingVO vo);
	// 글 목록 조회
	public ShoppingVO getService(String s_no);
	public List<ShoppingVO> getServiceList(ShoppingVO vo);
	// 글 수정
	public void updateService(ShoppingVO vo);
	// 글 삭제
	public void deleteService(String s_sno);
	
}