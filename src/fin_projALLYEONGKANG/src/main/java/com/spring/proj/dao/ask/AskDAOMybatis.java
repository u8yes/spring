package com.spring.proj.dao.ask;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.ask.AskVO;

@Repository
public class AskDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;

	// < MyBatis 적용 2번째 방법. >
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertBAsk(AskVO vo) {
		mybatis.insert("Ask.insertBAsk", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 글 등록(insert문)
	public void insertUAsk(AskVO vo) {
		mybatis.insert("Ask.insertUAsk", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문)
	public AskVO getAsk(int a_no) {
		return mybatis.selectOne("Ask.getAsk", a_no);
	}
	
	public List<AskVO> getAskList(AskVO vo) {
		
//		if(vo.getSearchCondition().equals("TITLE")) {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		} else if(vo.getSearchCondition().equals("CONTENT")) {
//			return mybatis.selectList("Ask.getAskList_C", vo);
//		} else {
//			return mybatis.selectList("Ask.getAskList_T", vo);
//		}
		
		return mybatis.selectList("Ask.getUAskList", vo);
		
	}
	
	// 글 수정(update문)
	public void updateAsk(AskVO vo) {
		mybatis.update("Ask.updateAsk", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteAsk(int a_no) {
		mybatis.update("Ask.deleteAsk", a_no);
	}
	
}
