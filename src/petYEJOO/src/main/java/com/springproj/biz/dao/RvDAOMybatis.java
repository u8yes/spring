package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.ReviewVO;

@Repository
public class RvDAOMybatis {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insertRv(ReviewVO vo) {
		mybatis.insert("Rv.insertRv", vo);
	}
	
	public ReviewVO getRv(String rv_no) {
		return mybatis.selectOne("Rv.getRv", rv_no);
	}
	
	public List<ReviewVO> getRvList(ReviewVO vo) {
		return mybatis.selectList("Rv.getRvList", vo);
	}
	
	public void updateRv(ReviewVO vo) {
		mybatis.update("Rv.updateRv", vo);
	}
	
	public void deleteRv(String rv_no) {
		mybatis.delete("Rv.deleteRv", rv_no);
	}
	
}
