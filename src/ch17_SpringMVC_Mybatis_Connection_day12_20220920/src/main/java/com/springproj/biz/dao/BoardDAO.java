package com.springproj.biz.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends SqlSessionDaoSupport{	// DAO(Data Access Object)
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {	// 부모에게 객체를 전달받음
		super.setSqlSessionFactory(sqlSessionFactory);	// 다시 부모에게 변수를 보냄.
	}
	
	 	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		
		getSqlSession().insert("Board.insertBoard", vo);
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		
		
		return null;
	}

	public List<BoardVO> getBoardList(BoardVO vo) {
		
		
		return null;
	}
	
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {	// DTO(DO)
		
		
		
	}
	
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {

		
	}
	
	

}
