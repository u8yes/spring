package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BrandVO;

public interface BrandService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BrandVO vo); 
	// 글 목록 조회
	BrandVO getService(int seq);
	List<BrandVO> getServiceList(BrandVO vo);
	// 글 수정
	void updateService(BrandVO vo);
	// 글 삭제
	void deleteService(int seq);
}