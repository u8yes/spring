package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.PointVO;

@Repository
public class PointDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertPoint(PointVO vo) {

		mybatis.insert("Point.insertPoint", vo);  
	}
	

	public PointVO getPoint(int pp_payno) {
		return mybatis.selectOne("Point.getPoint", pp_payno); 
		}
	
	public List<PointVO> getPointList(PointVO vo) {
		
	
	  return mybatis.selectList("Point.getPointList", vo);
	  
	  }
	 

	public void updatePoint(PointVO vo) {
		mybatis.update("Point.updatePoint", vo);
	}

	public void deletePoint(int pp_payno) {
		mybatis.delete("Point.deletePoint", pp_payno);
		
	}
	
}
