package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BrandCheckDAOMybatis;
import com.springproj.biz.domain.BrandCheckVO;
import com.springproj.biz.service.BrandCheckService;

@Service("brandCheckService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BrandCheckServiceImpl implements BrandCheckService {
	
	@Autowired
	//private BrandDAO dao;
	private BrandCheckDAOMybatis dao;
		
	
	@Override
	public void insertService(BrandCheckVO bc) {
		dao.insertBrandCheck(bc);
		
	}

	@Override
	public BrandCheckVO getService(int ab_no) {
		BrandCheckVO brandCheck = dao.getBrandCheck(ab_no);
		
		return brandCheck;
	}

	@Override
	public List<BrandCheckVO> getServiceList(BrandCheckVO bc) {
		return dao.getBrandCheckList(bc);
	}

	@Override
	public void updateService(BrandCheckVO bc) {
		dao.updateBrandCheck(bc);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int ab_no) {
		dao.deleteBrandCheck(ab_no);
	}
	
}
