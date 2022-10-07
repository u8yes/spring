package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BrandThemeDAOMybatis;
import com.springproj.biz.domain.BrandThemeVO;
import com.springproj.biz.service.BrandThemeService;

@Service("brandThemeService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BrandThemeServiceImpl implements BrandThemeService {
	
	@Autowired
	//private BrandDAO dao;
	private BrandThemeDAOMybatis dao;
		
	
	@Override
	public void insertService(BrandThemeVO bt) {
		dao.insertBrandTheme(bt);
		
	}

	@Override
	public BrandThemeVO getService(String bm_no) {
		BrandThemeVO brandTheme = dao.getBrandTheme(bm_no);
		
		return brandTheme;
	}

	@Override
	public List<BrandThemeVO> getServiceList(BrandThemeVO bt) {
		return dao.getBrandThemeList(bt);
	}

	@Override
	public void updateService(BrandThemeVO bt) {
		dao.updateBrandTheme(bt);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(String bm_no) {
		dao.deleteBrandTheme(bm_no);
	}
	
}
