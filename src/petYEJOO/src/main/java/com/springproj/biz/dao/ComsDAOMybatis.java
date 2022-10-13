package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.CommentsVO;

@Repository
public class ComsDAOMybatis {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insertComs(CommentsVO vo) {
		mybatis.insert("Coms.insertComs", vo);
	}
	
	public List<CommentsVO> getComsList(String rv_no) {
		return mybatis.selectList("Coms.getComsList", rv_no);
	}
	
	public void updateComs(CommentsVO vo) {
		mybatis.update("Coms.updateComs", vo);
	}
	
	public void deleteComs(String cm_no) {
		mybatis.delete("Coms.deleteComs", cm_no);
	}
	
}
