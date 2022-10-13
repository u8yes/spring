package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.AskRvVO;

@Repository
public class ArDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;

	// < MyBatis 적용 2번째 방법. >
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertAr(AskRvVO vo) {
		mybatis.insert("Ar.insertAr", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문)
	public AskRvVO getAr(String ar_no) {
		return mybatis.selectOne("Ar.getAr", ar_no);
	}
	
	public List<AskRvVO> getArList(String a_no) {
		
//		if(vo.getSearchCondition().equals("TITLE")) {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		} else if(vo.getSearchCondition().equals("CONTENT")) {
//			return mybatis.selectList("Ask.getAskList_C", vo);
//		} else {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		}
		
		return mybatis.selectList("Ar.getArList", a_no);
		
	}
	
	// 글 수정(update문)
	public void updateAr(AskRvVO vo) {
		mybatis.update("Ar.updateAr", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteAr(String ar_no) {
		mybatis.delete("Ar.deleteAr", ar_no);
	}
	
}
