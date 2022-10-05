package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BrandThemeDAOMybatis;
import com.springproj.biz.domain.BrandThemeVO;
import com.springproj.biz.service.BrandThemeService;

@Service("brandThemeService")
public class BrandThemeServiceImpl implements BrandThemeService {
	
	@Autowired
	private BrandThemeDAOMybatis dao;
	
	@Override
	public void insertService(BrandThemeVO bt) {
		dao.insertBrandTheme(bt);
	}

	@Override
	public BrandThemeVO getService(int bm_no) {
		BrandThemeVO brandTheme = dao.getBrandTheme(bm_no);
		
		return brandTheme;
	}

	@Override
	public List<BrandThemeVO> getServiceList(BrandThemeVO bt) {
		
		return dao.getBrandThemeList(bt);
	}

	@Override
	public void updateService(BrandThemeVO bt) {
		dao.updateBrandTheme(bt);
		System.out.println("impl update => "+bt);
	}

	@Override
	public void deleteService(int bm_no) {
		dao.deleteBrandTheme(bm_no);
	}

}
