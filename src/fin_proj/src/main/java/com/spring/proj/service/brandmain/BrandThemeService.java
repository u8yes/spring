package com.spring.proj.service.brandmain;

import java.util.List;

import com.spring.proj.domain.brandmain.BrandThemeVO;

public interface BrandThemeService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BrandThemeVO bt); 
	// 글 목록 조회
	BrandThemeVO getService(int bm_no);
	List<BrandThemeVO> getServiceList(BrandThemeVO bt);
	// 글 수정
	void updateService(BrandThemeVO bt);
	// 글 삭제
	void deleteService(int bm_no);
}