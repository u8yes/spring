package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BrandDAOMybatis;
import com.springproj.biz.domain.BrandVO;
import com.springproj.biz.service.BrandService;

@Service("brandService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BrandServiceImpl implements BrandService {
	
	@Autowired
	//private BrandDAO dao;
	private BrandDAOMybatis dao;
		
	
	@Override
	public void insertService(BrandVO vo) {
		dao.insertBrand(vo);
		
	}

	@Override
	public BrandVO getService(int seq) {
		BrandVO brand = dao.getBrand(seq);
		
		return brand;
	}

	@Override
	public List<BrandVO> getServiceList(BrandVO vo) {
		return dao.getBrandList(vo);
	}

	@Override
	public void updateService(BrandVO vo) {
		dao.updateBrand(vo);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int seq) {
		dao.deleteBrand(seq);
	}
	
}
