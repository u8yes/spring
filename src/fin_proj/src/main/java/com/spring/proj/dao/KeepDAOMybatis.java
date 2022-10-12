package com.spring.proj.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.KeepVO;

@Repository
public class KeepDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
	

	public void insertKeep(KeepVO vo) {

		mybatis.insert("Keep.insertKeep", vo);  
	}
	

	public KeepVO getKeep(String k_no) {
		return mybatis.selectOne("Keep.getKeep", k_no);
		}
	
	public List<KeepVO> getKeepList(KeepVO vo) {
	
	  return mybatis.selectList("Keep.getKeepList", vo);
	  
	  }
	 

	public void updateKeep(KeepVO vo) {
		mybatis.update("Keep.updateKeep", vo);
	}

	public void deleteKeep(String k_no) {
		mybatis.delete("Keep.deleteKeep", k_no);
		
	}

	
}
