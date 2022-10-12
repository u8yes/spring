package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.PayVO;

@Repository
public class PayDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertPay(PayVO vo) {

		mybatis.insert("Pay.insertPay", vo); 
	}
	
	// 목록보기(select문)
	public PayVO getPay(int ob_payno) {
		return mybatis.selectOne("Pay.getPay", ob_payno);  
		}
	
	public List<PayVO> getPayList(PayVO vo) {
		
	
	  return mybatis.selectList("Pay.getPayList", vo);
	  
	  }
	 

	public void updatePay(PayVO vo) {
		mybatis.update("Pay.updatePay", vo);
	}

	public void deletePay(int ob_payno) {
		mybatis.delete("Pay.deletePay", ob_payno);
		
	}
	
}
