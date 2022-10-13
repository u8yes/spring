package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.ProductVO;

@Repository
public class ProductDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;

	// < MyBatis 적용 2번째 방법. >
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertProduct(ProductVO vo) {
		System.out.println("dao" + vo);
		mybatis.insert("Product.insertProduct", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문) //상세보기
	public ProductVO getProduct(int p_pno) {
		return mybatis.selectOne("Product.getProduct", p_pno);
	}
	//리스트보기
	public List<ProductVO> getProductList(ProductVO vo) {
	return mybatis.selectList("Product.getProductList", vo);
		
	}
	
	// 글 수정(update문)
	public void updateProduct(ProductVO vo) {
		mybatis.update("Product.updateProduct", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteProduct(int p_pno) {
		mybatis.delete("Product.deleteProduct", p_pno);
	}

	
	
}
