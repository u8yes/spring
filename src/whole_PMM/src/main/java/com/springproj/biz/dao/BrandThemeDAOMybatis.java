package com.springproj.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.springproj.biz.domain.BrandThemeVO;

@Repository
public class BrandThemeDAOMybatis {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public void insertBrandTheme(BrandThemeVO bt) {
		mybatis.insert("BrandTheme.insertBrandTheme", bt);
	}
	
	public BrandThemeVO getBrandTheme(int bm_no) {
		return mybatis.selectOne("BrandTheme.getBrandTheme", bm_no);
	}
	
	public List<BrandThemeVO> getBrandThemeList(BrandThemeVO bt){
		return mybatis.selectList("BrandTheme.getBrandThemeList", bt);
	}
	
	public void updateBrandTheme(BrandThemeVO bt) {
		mybatis.update("BrandTheme.updateBrandTheme", bt);
	}
	
	public void deleteBrandTheme(int bm_no) {
		mybatis.delete("BrandTheme.deleteBrandTheme", bm_no);
	}
}
