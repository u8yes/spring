package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.BrandCheckVO;

public interface BrandCheckService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BrandCheckVO bc); 
	// 글 목록 조회
	BrandCheckVO getService(int ab_no);
	List<BrandCheckVO> getServiceList(BrandCheckVO bc);
	// 글 수정
	void updateService(BrandCheckVO bc);
	// 글 삭제
	void deleteService(int ab_no);
}