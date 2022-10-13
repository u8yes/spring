package com.spring.proj.dao.brand;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.brand.BrandMemberVO;



@Repository
public class BrandMemberDAOMybatis {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	private final String USER_GET = "SELECT * FROM brandmember WHERE bm_id=? AND bm_password=?";
	
	
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insertBrandMember(BrandMemberVO vo) {
		
		mybatis.insert("BrandMember.insertBrandMember",vo);
	}
	
	// 목록 상세 보기(select문)
		public BrandMemberVO getBrandMember(String bm_no) {

			return mybatis.selectOne("BrandMember.getBrandMember", bm_no);
			
		}

		// 목록보기(select문)
		public List<BrandMemberVO> getBrandMemberList(BrandMemberVO vo) {

			
			return mybatis.selectList("BrandMember.getBrandMemberList", vo);
		}

		// 글 수정(update문)
		public void updateBrandMember(BrandMemberVO vo) {

			System.out.println(vo);
			
			mybatis.update("BrandMember.updateBrandMember", vo);

		}

		// 글 삭제(delete문)
		public void deleteBrandMember(String bm_no) {
			
			
			
			mybatis.delete("BrandMember.deleteBrandMember", bm_no);

		}

	
		public BrandMemberVO loginBrandMember(BrandMemberVO vo) {
			
			
			
			try {	

			Object[] args = {vo.getBm_id(), vo.getBm_password()};
			
			return jdbcTemplate.queryForObject(USER_GET, args, new UserRowMapper());
			}catch (EmptyResultDataAccessException e) {	return null; }
			
		}
			
		
		
		class UserRowMapper implements RowMapper<BrandMemberVO>{

			@Override
			public BrandMemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				BrandMemberVO user = new BrandMemberVO();
				user.setBm_id(rs.getString("bm_id"));
				user.setBm_password(rs.getString("bm_password"));
				user.setBm_manager(rs.getString("bm_manager"));
				
			
				return user;
			}
		}

}
