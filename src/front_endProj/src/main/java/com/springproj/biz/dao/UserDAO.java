package com.springproj.biz.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.UserVO;

@Repository("userDAO")
public class UserDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private final String USER_GET = "select * from users where id=? and password=?";
	
	// CRUD 기능의 메소드 구현
	// 회원 상세 정보
	public UserVO getUser(UserVO user) {
		//System.out.println("getUser() 호출...");
		Object[] args = {user.getId(), user.getPassword()};
		
		return jdbcTemplate.queryForObject(USER_GET, args, new UserRowMapper());
	}
	
	class UserRowMapper implements RowMapper<UserVO> {

		@Override
		public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			UserVO user = new UserVO();
			
			user.setId(rs.getString("id"));
			user.setPassword(rs.getString("password"));
			user.setName(rs.getString("name"));
			user.setRole(rs.getString("role"));
			
			return user;
		}

	}
	
}




