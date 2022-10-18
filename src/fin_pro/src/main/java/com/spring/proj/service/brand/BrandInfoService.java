package com.spring.proj.service.brand;

import java.util.List;

import com.spring.proj.domain.brand.BrandInfoVO;

public interface BrandInfoService {
	
	

	// 글 등록
	void insertBrandInfoService(BrandInfoVO vo);
	
	// 글 목록 조회
	BrandInfoVO getBrandInfoService(int bm_no);
	
	List<BrandInfoVO> getBrandInfoServiceList(BrandInfoVO vo);
	
	
	// 글 수정
	void updateBrandInfoService(BrandInfoVO vo);
	
	// 글 삭제
	void deleteBrandInfoService(int bm_no);

	
}
