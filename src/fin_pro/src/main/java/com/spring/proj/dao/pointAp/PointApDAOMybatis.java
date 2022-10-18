package com.spring.proj.dao.pointAp;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.pointAp.PointApVO;

@Repository
public class PointApDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	

	public void insertPointAp(PointApVO vo) {
		System.out.println("==>"+vo);
		mybatis.insert("Point.insertPointAp", vo);  
	}
	

	public PointApVO getPointAp(int pa_no) {
		return mybatis.selectOne("PointAp.getPointAp", pa_no); 
		}
	
	public List<PointApVO> getPointApList(PointApVO vo) {
		
	
	  return mybatis.selectList("PointAp.getPointApList", vo);
	  
	  }
	 

	public void updatePointAp(PointApVO vo) {
		mybatis.update("PointAp.updatePointAp", vo);
	}

	public void deletePointAp(int pa_no) {
		mybatis.delete("Point.deletePointAp", pa_no);
		
	}

	



	
}
