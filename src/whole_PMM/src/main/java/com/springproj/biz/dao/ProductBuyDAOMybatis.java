package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.CodeVO;
import com.springproj.biz.domain.ProductBuyVO;

@Repository
public class ProductBuyDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertProductBuy(ProductBuyVO o) {	// DTO(DO), 매개변수를 파라미터라고도 한다. 전달되어지는 타입 (BoardVO vo)
		
		mybatis.insert("ProductBuy.insertProductBuy", o);	// get메서드로 요청하면 마이바티스가 반환해준다.
	}
	
	// 목록보기(select문)
	public ProductBuyVO getProductBuy(int o_odno) {
		return mybatis.selectOne("ProductBuy.getProductBuy", o_odno);
	}

	public List<ProductBuyVO> getProductBuyList(ProductBuyVO o) {
		

		return mybatis.selectList("ProductBuy.getProductBuyList", o);
	}
	
	
	// 글 수정(update문)
	public void updateProductBuy(ProductBuyVO o) {	// DTO(DO)
		mybatis.update("ProductBuy.updateProductBuy", o);
		System.out.println("updateProductBuy DAOMyBatis =>" + o);

	}
	
	// 글 삭제(delete문)
	public void deleteProductBuy(int o_odno) {
		mybatis.delete("ProductBuy.deleteProductBuy", o_odno);
		
	}
}
