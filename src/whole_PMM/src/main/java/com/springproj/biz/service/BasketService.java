package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BasketVO;

public interface BasketService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BasketVO ba); 
	// 글 목록 조회
	BasketVO getService(int s_no);
	List<BasketVO> getServiceList(BasketVO ba);
	// 글 수정
	void updateService(BasketVO ba);
	// 글 삭제
	void deleteService(int s_no);
}