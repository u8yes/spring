package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.ProductVO;

public interface ProductService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertService(ProductVO vo);
	// 글 목록 조회
	public ProductVO getService(String p_pno);
	public List<ProductVO> getServiceList(ProductVO vo);
	// 글 수정
	public void updateService(ProductVO vo);
	// 글 삭제
	public void deleteService(String p_pno);
	
}