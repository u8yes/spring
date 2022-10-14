package com.spring.proj.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.user.UserMemberVO;

@Repository
public class UserMemberDAOMybatis {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private final String USER_GET = "SELECT * FROM usermember WHERE um_mid=? AND um_password=?";
	
	private final String USER_CH = "SELECT * FROM usermember WHERE um_ars=? AND um_email=?";
	
	
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	public int idCheck(String um_mid) {
		
		
		
		System.out.println("before" + um_mid);
		
	
		
		int	result = mybatis.selectOne("UserMember.idChkMember", um_mid);
		 
		 
	
		System.out.println("after"+result);
		 
		return result;
		
		
	}
	
		public int emailCheck(String um_email) {
			
			
			
			System.out.println("before" + um_email);
			
		
			
			int	result = mybatis.selectOne("UserMember.emailChkMember", um_email);
			 
			 
		
			System.out.println("after"+result);
			 
			return result;
	
	
	
		 
	}
	
	
	
	public void insertUserMember(UserMemberVO vo) {
		System.out.println("==>"+vo);
		mybatis.insert("UserMember.insertUserMember",vo);
	}
	
	// 목록 상세 보기(select문)
		public UserMemberVO getUserMember(String um_no) {

			return mybatis.selectOne("UserMember.getUserMember", um_no);
			
			
		}

		// 목록보기(select문)
		public List<UserMemberVO> getUserMemberList(UserMemberVO vo) {

			
			return mybatis.selectList("UserMember.getUserMemberList", vo);
		}

		// 글 수정(update문)
		public void updateUserMember(UserMemberVO vo) {

			System.out.println(vo);
			
			mybatis.update("UserMember.updateUserMember", vo);

		}

		// 글 삭제(delete문)
		public void deleteUserMember(int um_no) {
			
			
			
			mybatis.delete("UserMember.deleteUserMember", um_no);

		}

	
		public UserMemberVO loginUserMember(UserMemberVO vo) {
			
		
			
			try {	

			Object[] args = {vo.getUm_mid(), vo.getUm_password()};
			
			return jdbcTemplate.queryForObject(USER_GET, args, new UserRowMapper());
			}catch (EmptyResultDataAccessException e) {	return null; }
			
		}
			
		
		
		class UserRowMapper implements RowMapper<UserMemberVO>{

			@Override
			public UserMemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				UserMemberVO user = new UserMemberVO();
				user.setUm_mid(rs.getString("um_mid"));
				user.setUm_password(rs.getString("um_password"));
				user.setUm_ars(rs.getString("um_ars"));
				user.setUm_email(rs.getString("um_email"));
				user.setUm_no(rs.getInt("um_no"));	
			
				return user;
			}
		}
		
		//////////////////////////
		
		public UserMemberVO idFindUserMember(UserMemberVO vo) {
			
		
			
			try {	

			Object[] args = {vo.getUm_ars(), vo.getUm_email()};
			
			return jdbcTemplate.queryForObject(USER_CH, args, new UserRowMapper());
			}catch (EmptyResultDataAccessException e) {	return null; }
			
		}
		
		//멤버쉽 가입신청
		public String joinMembership(String ms_grade) {
			return  Integer.toString(mybatis.update("UserMember.joinMembership", ms_grade));
		}
		
		//멤버쉽 가입승인
		public String upgradeMembership(String um_no) {
			
			return  Integer.toString(mybatis.update("UserMember.upgradeMembership", um_no));
		}
		
		// 멤버쉽 가입신청 리스트
		public List<UserMemberVO> upgradeMembershipList(UserMemberVO vo) {

			System.out.println(vo);
			
			return mybatis.selectList("UserMember.upgradeMembershipList", vo);
		}
		

}
