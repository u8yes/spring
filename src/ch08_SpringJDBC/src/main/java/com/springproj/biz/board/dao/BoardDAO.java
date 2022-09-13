package com.springproj.biz.board.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.common.JDBCUtil;

@Repository("boardDAO")
public class BoardDAO {	// DAO(Data Access Object)
	
	
	private final String BOARD_INSERT 
	= "insert into board(seq, title, writer, content) values (" + "(select nvl(max(seq),0)+1 from board), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
	
	private final String BOARD_UPDATE
	= "update board set title = ?, content = ? where seq = ?";
	
	private final String BOARD_DELETE
	= "delete from board where seq = ?";
	
	private final String BOARD_SELECT
	= "select * from board where seq = ?";
	
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertBoard(BoardVO vo) {	// DTO(DO)
		jdbcTemplate.update(BOARD_INSERT, vo.getTitle(), vo.getWriter(), vo.getContent());
		
		
	}
	
	// 목록보기(select문)
	public BoardVO getBoard(int seq) {
		

		return null;
	}

	public void getBoardList() {

		
	}
	
	
	// 글 수정(update문)
	public void updateBoard(BoardVO vo) {	// DTO(DO)
		jdbcTemplate.update(BOARD_UPDATE, vo.getTitle(), vo.getContent(), vo.getSeq());

		
	}
	
	// 글 삭제(delete문)
	public void deleteBoard(int seq) {

		jdbcTemplate.update(BOARD_UPDATE, seq);
	}
}
