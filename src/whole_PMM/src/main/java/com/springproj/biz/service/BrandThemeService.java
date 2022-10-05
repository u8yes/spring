package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BrandThemeVO;

public interface BrandThemeService {
	
	void insertService(BrandThemeVO bt);
	
	BrandThemeVO getService(int bm_no);
	List<BrandThemeVO> getServiceList(BrandThemeVO bt);
	
	void updateService(BrandThemeVO bt);
	
	void deleteService(int bm_no);
}
