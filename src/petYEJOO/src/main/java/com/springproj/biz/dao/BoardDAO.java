package com.springproj.biz.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends SqlSessionDaoSupport { // DAO(Data Access Object)
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	
	//@Autowired
	//private JdbcTemplate jdbcTemplate; // MyBatis 이용하니까 필요 없어짐. 아래에 기존 메서드 안의 구문들도 지워줌.
	
	// CRUD 기능의 method(메서드) 구현
	
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {
		getSqlSession().insert("Board.insertBoard", vo); // 이때의 insert는 MyBatis의 mapping과 연결이 되어있는 것.
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		return getSqlSession().selectOne("Board.getBoard", seq);
	}
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		if(vo.getSearchCondition().equals("TITLE")) {
			return getSqlSession().selectList("Board.getBoardList_T", vo);
		} else if(vo.getSearchCondition().equals("CONTENT")) {
			return getSqlSession().selectList("Board.getBoardList_C", vo);
		} else {
			return getSqlSession().selectList("Board.getBoardList_T", vo);
		}
	}
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {
		getSqlSession().update("Board.updateBoard", vo);
	}
	
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {
		getSqlSession().delete("Board.deleteBoard", seq);
	}
	
}
