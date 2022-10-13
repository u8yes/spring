package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.DeliveryVO;

@Repository
public class DeliveryDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertDelivery(DeliveryVO d) {

		mybatis.insert("Delivery.insertDelivery", d);  
	}
	

	public DeliveryVO getDelivery(int d_dno) {
		return mybatis.selectOne("Delivery.getDelivery", d_dno); 
		}
	
	
	public List<DeliveryVO> getDeliveryList(DeliveryVO d) {
	
		return mybatis.selectList("Delivery.getDeliveryList", d);	  
	  
	  } 

	
	public void updateDelivery(DeliveryVO d) {
		
		mybatis.update("Delivery.updateDelivery", d);
		System.out.println("Delivery.updateDelivery DAO => " + d);
	}
	
	
	public void deleteDelivery(int d_dno) {
		
		mybatis.delete("Delivery.deleteDelivery", d_dno);
	}
}
