package com.spring.proj.service.brandmain;

import java.util.List;

import com.spring.proj.domain.brandmain.BrandInfoVO;

public interface BrandInfoService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BrandInfoVO bi); 
	// 글 목록 조회
	BrandInfoVO getService(int bm_no);
	List<BrandInfoVO> getServiceList(BrandInfoVO bi);
	// 글 수정
	void updateService(BrandInfoVO bi);
	// 글 삭제
	void deleteService(int bm_no);
}