package com.springproj.biz.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends SqlSessionDaoSupport{ // DAO(Data Access Object)
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	// CRUD 기능의 method 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {
		getSqlSession().insert("Board.insertBoard",vo);
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		return getSqlSession().selectOne("Board.getBoard", seq); //반환의 결과가 하나일때 selectOne 사용
	}
	
	public List<BoardVO> getBoardList(BoardVO vo) {
		if(vo.getSearchCondition().equals("TITLE")) {
			return getSqlSession().selectList("Board.getBoardList_T",vo); //반환의 결과가 하나이상일때 selectList 사용
		}else if(vo.getSearchCondition().equals("CONTENT")) {
			return getSqlSession().selectList("Board.getBoardList_C",vo);
		}else {
			return getSqlSession().selectList("Board.getBoardList_T",vo); //두 조건 불충족시 제목 리스트 표시
		}
	}
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {
		
		getSqlSession().update("Board.updateBoard");
	}
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {
		getSqlSession().delete("Board.deleteBoard");
	}
	
}

