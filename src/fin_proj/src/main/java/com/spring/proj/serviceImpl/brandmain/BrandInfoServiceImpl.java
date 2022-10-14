package com.spring.proj.serviceImpl.brandmain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brandmain.BrandInfoDAOMybatis;
import com.spring.proj.domain.brandmain.BrandInfoVO;
import com.spring.proj.service.brandmain.BrandInfoService;

@Service("brandInfoService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BrandInfoServiceImpl implements BrandInfoService {
	
	@Autowired
	//private BrandDAO dao;
	private BrandInfoDAOMybatis dao;
		
	
	@Override
	public void insertService(BrandInfoVO bi) {
		dao.insertBrandInfo(bi);
		
	}

	@Override
	public BrandInfoVO getService(int bm_no) {
		BrandInfoVO brandInfo = dao.getBrandInfo(bm_no);
		
		return brandInfo;
	}

	@Override
	public List<BrandInfoVO> getServiceList(BrandInfoVO bi) {
		return dao.getBrandInfoList(bi);
	}

	@Override
	public void updateService(BrandInfoVO bi) {
		dao.updateBrandInfo(bi);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int bm_no) {
		dao.deleteBrandInfo(bm_no);
	}
	
}
