package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.ProductbuyDAOMybatis;
import com.spring.proj.domain.ProductbuyVO;
import com.spring.proj.service.ProductbuyService;

@Service("productbuyService")
public class ProductbuyServiceImpl implements ProductbuyService {

	@Autowired
	private ProductbuyDAOMybatis dao;

	
	@Override
	public void insertService(ProductbuyVO vo) {

		dao.insertProductbuy(vo);

	}

	@Override
	public ProductbuyVO getService(int o_odno) {

		ProductbuyVO productbuy = dao.getProductbuy(o_odno);
		
		return productbuy;
	}

	@Override
	public List<ProductbuyVO> getServiceList(ProductbuyVO vo) {

		return dao.getProductbuyList(vo);
	}

	@Override
	public void updateService(ProductbuyVO vo) {

		dao.updateProductbuy(vo);
	}

	@Override
	public void deleteService(int o_odno) {
		dao.deleteProductbuy(o_odno);
	}

}
