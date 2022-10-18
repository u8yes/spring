package com.spring.proj.serviceImpl.brand;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brand.BrandInfoDAOMybatis;
import com.spring.proj.domain.brand.BrandInfoVO;
import com.spring.proj.service.brand.BrandInfoService;

@Service("brandInfoService")
public class BrandInfoServiceImpl implements BrandInfoService {

	@Autowired
	private BrandInfoDAOMybatis dao;
	
	@Override
	public void insertBrandInfoService(BrandInfoVO vo) {
		// TODO Auto-generated method stub
		
		dao.insertBrandInfo(vo);
	}

	@Override
	public BrandInfoVO getBrandInfoService(int bm_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BrandInfoVO> getBrandInfoServiceList(BrandInfoVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateBrandInfoService(BrandInfoVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBrandInfoService(int bm_no) {
		// TODO Auto-generated method stub
		
	}

	

	
	
}
