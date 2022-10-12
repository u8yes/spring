package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.DeliveryVO;

@Repository
public class DeliveryDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertDelivery(DeliveryVO vo) {

		mybatis.insert("Delivery.insertDelivery", vo);  
	}
	

	public DeliveryVO getDelivery(int d_dno) {
		return mybatis.selectOne("Delivery.getDelivery", d_dno); 
		}
	
	public List<DeliveryVO> getDeliveryList(DeliveryVO vo) {
	
	  return mybatis.selectList("Delivery.getDeliveryList", vo);	  
	  
	  } 

	public void updateDelivery(DeliveryVO vo) {
		
		mybatis.update("Delivery.updateDelivery", vo);
	}
	public void deleteDelivery(int d_dno) {
		
		mybatis.delete("Delivery.deleteDelivery", d_dno);
		
	}
	
}
