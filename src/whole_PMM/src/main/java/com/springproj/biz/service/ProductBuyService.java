package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.ProductBuyVO;

public interface ProductBuyService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(ProductBuyVO o); 
	// 글 목록 조회
	ProductBuyVO getService(int o_odno);
	List<ProductBuyVO> getServiceList(ProductBuyVO o);
	// 글 수정
	void updateService(ProductBuyVO o);
	// 글 삭제
	void deleteService(int o_odno);
}