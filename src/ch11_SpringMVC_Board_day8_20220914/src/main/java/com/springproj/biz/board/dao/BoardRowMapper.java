package com.springproj.biz.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springproj.biz.board.vo.BoardVO;

public class BoardRowMapper implements RowMapper<BoardVO>{
	
	@Override
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {	// select문 처리에는 필수 메서드
		BoardVO board = new BoardVO();
		
		board.setSeq(rs.getInt("seq"));
		board.setTitle(rs.getString("title"));
		board.setWriter(rs.getString("writer"));
		board.setContent(rs.getString("content"));
		board.setRegdate(rs.getDate("regdate"));
		board.setCnt(rs.getInt("cnt"));
		
		return board;
	}
	
}
