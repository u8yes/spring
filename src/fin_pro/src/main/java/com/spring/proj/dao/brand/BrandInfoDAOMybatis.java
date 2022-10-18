package com.spring.proj.dao.brand;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.proj.domain.brand.BrandInfoVO;


@Repository
public class BrandInfoDAOMybatis {

	
	@Autowired
	JdbcTemplate jdbcTemplate;
	

	
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insertBrandInfo(BrandInfoVO vo) {
		
		mybatis.insert("BrandInfo.insertBrandInfo",vo);
	}
	
	// 목록 상세 보기(select문)
		public BrandInfoVO getBrandInfo(String bm_no) {

			return mybatis.selectOne("BrandInfo.getBrandInfo", bm_no);
			
		}

		// 목록보기(select문)
		public List<BrandInfoVO> getBrandInfoList(BrandInfoVO vo) {

			
			return mybatis.selectList("BrandInfo.getBrandInfoList", vo);
		}

		// 글 수정(update문)
		public void updateBrandInfo(BrandInfoVO vo) {

			System.out.println(vo);
			
			mybatis.update("BrandInfo.updateBrandInfo", vo);

		}

		// 글 삭제(delete문)
		public void deleteBrandInfo(String bm_no) {
			
			
			
			mybatis.delete("BrandInfo.deleteBrandInfo", bm_no);

		}

	
		
	
	
}
