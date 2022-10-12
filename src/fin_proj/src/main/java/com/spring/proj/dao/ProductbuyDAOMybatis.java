package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.ProductbuyVO;

@Repository
public class ProductbuyDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertProductbuy(ProductbuyVO vo) {

		mybatis.insert("Productbuy.insertProductbuy", vo); 
	}
	

	public ProductbuyVO getProductbuy(int o_odno) {
		return mybatis.selectOne("Productbuy.getProductbuy", o_odno);
		}
	
	public List<ProductbuyVO> getProductbuyList(ProductbuyVO vo) {
		

	
	  return mybatis.selectList("Productbuy.getProductbuyList", vo);
	  
	  }
	 

	public void updateProductbuy(ProductbuyVO vo) {
		mybatis.update("Productbuy.updateProductbuy", vo);
	}

	public void deleteProductbuy(int o_odno) {
		mybatis.delete("Productbuy.deleteProductbuy", o_odno);
		
	}
	
}
