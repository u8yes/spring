package com.spring.proj.dao.product;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.product.ProductVO;

@Repository
public class ProductDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;


	public void insertProduct(ProductVO vo) {
		mybatis.insert("Product.insertProduct", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	public ProductVO getProduct(String p_pno) {
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
	public void deleteProduct(String p_pno) {
		mybatis.delete("Product.deleteProduct", p_pno);
	}

	
	
}
