package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BoardVO;

@Repository
public class BoardDAOMybatis {
	@Autowired
	SqlSessionTemplate mybatis;
		// CRUD 기능의 method 구현

		// C 글 등록(insert문)
		public void insertBoard(BoardVO vo) {
			mybatis.insert("Board.insertBoard",vo);
		}
		
		// R 목록보기(select문)
		public BoardVO getBoard(int seq) {
			return mybatis.selectOne("Board.getBoard", seq); //반환의 결과가 하나일때 selectOne 사용
		}
		
		public List<BoardVO> getBoardList(BoardVO vo) {
			return mybatis.selectList("Board.getBoardList", vo);
		}
		// U 글 수정(update문)
		public void updateBoard(BoardVO vo) {
			
			mybatis.update("Board.updateBoard");
		}
		// D 글 삭제(delete문)
		public void deleteBoard(int seq) {
			mybatis.delete("Board.deleteBoard");
		}
}
