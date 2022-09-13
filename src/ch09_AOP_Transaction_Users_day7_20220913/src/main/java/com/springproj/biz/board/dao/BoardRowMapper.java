package com.springproj.biz.board.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.springproj.biz.board.UserVO;

public class BoardRowMapper implements RowMapper<UserVO>{
	
	@Override
	public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {	// select문 처리에는 필수 메서드
		UserVO users = new UserVO();
		
		users.setId(rs.getString("id"));
		users.setPassword(rs.getString("password"));
		users.setName(rs.getString("name"));
		users.setRole(rs.getString("role"));
		
		
		return users;
	}
	
}
