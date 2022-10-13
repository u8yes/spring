package com.spring.proj.serviceImpl.brandmain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brandmain.BrandThemeDAOMybatis;
import com.spring.proj.domain.brandmain.BrandThemeVO;
import com.spring.proj.service.brandmain.BrandThemeService;

@Service("brandThemeService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BrandThemeServiceImpl implements BrandThemeService {
	
	@Autowired
	//private BrandDAO dao;
	private BrandThemeDAOMybatis dao;
		
	
	@Override
	public void insertService(BrandThemeVO bt) {
		dao.insertBrandTheme(bt);
		System.out.println("Ipml insert brandTheme => "+ bt);
		
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
		dao.updateBrandTheme(bt);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int bm_no) {
		dao.deleteBrandTheme(bm_no);
	}
	
}
