package com.springproj.biz.User.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springproj.biz.board.UserVO;

@Repository("UserDAO")
public class UserDAO {	// DAO(Data Access Object)
	/*
	private final String User_INSERT 
	= "insert into User(seq, title, writer, content) values (" + "(select nvl(max(seq),0)+1 from User), ?, ?, ?)";	// nvl: Null값이면 0으로 실행해라
	//*/
	private final String USER_INSERT 
	= "insert into User(id, password, name, role) values (?, ?, ?, ?)";
		
	private final String USER_UPDATE
	= "update User set id = ?, password = ? where id = ?";
	
	private final String USER_DELETE
	= "delete from User where id = ?";
	
	private final String USER_SELECT
	= "select * from User where id = ?";
	
	private final String USER_LIST
	= "select * from User order by seq";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	// CRUD 기능의 메서드 구현
	// 글 등록(insert문)
	public void insertUser(UserVO vo) {	// DTO(DO)
		//Object[] args = {vo.getTitle(), vo.getWriter(), vo.getContent()};
		Object[] args = {vo.getId(), vo.getPassword(), vo.getName(), vo.getRole()};

		jdbcTemplate.update(USER_INSERT, args);	// close까지 함께 같이 처리해줌.
		
	}
	
	// 목록보기(select문)
	public UserVO getUser(String id) {
		Object[] args = {id};
		
		return jdbcTemplate.queryForObject(USER_SELECT, args, new UserRowMapper()); 	// 하나의 결과(행)만을 반환 받을 때
				
	}

	public List<UserVO> getUserList() {
		
		return jdbcTemplate.query(USER_LIST, new UserRowMapper());
		
	}
	
	
	// 글 수정(update문)
	public void updateUser(UserVO vo) {	// DTO(DO)
		Object[] args = {vo.getId(), vo.getPassword(), vo.getName()};

		jdbcTemplate.update(USER_UPDATE, args);
		
		
	}
	
	// 글 삭제(delete문)
	public void deleteUser(String id) {

		jdbcTemplate.update(USER_DELETE, id);
	}
}
