package com.spring.proj.service.product;

import java.util.List;

import com.spring.proj.domain.product.ProductVO;

public interface ProductService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertProductService(ProductVO vo);
	// 글 목록 조회
	public ProductVO getProductService(String p_pno);
	public List<ProductVO> getProductServiceList(ProductVO vo);
	// 글 수정
	public void updateProductService(ProductVO vo);
	// 글 삭제
	public void deleteProductService(String p_pno);
	
}