package com.spring.proj.dao.brandmain;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.brandmain.BuyVO;

@Repository
public class BuyDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertBuy(BuyVO vo) {
		
		mybatis.insert("Buy.insertBuy", vo);  // 마이바티스와 맵퍼를 연동 하는 메서드 
	}
	

	public BuyVO getBuy(int po_no) {
		return mybatis.selectOne("Buy.getBuy", po_no); //  반환하는게 한개일때 selectOne 
		}
	
	public List<BuyVO> getBuyList(BuyVO vo) {
				
	
	  return mybatis.selectList("Buy.getBuyList", vo);
	  
	  }

	public void updateBuy(BuyVO vo) {
		mybatis.update("Buy.updateBuy", vo);
	}
	public void deleteBuy(int po_no) {
		mybatis.delete("Buy.deleteBuy", po_no);
		
	}
	
}
