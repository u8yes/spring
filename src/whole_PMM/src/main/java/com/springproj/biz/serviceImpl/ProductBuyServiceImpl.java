package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.ProductBuyDAOMybatis;
import com.springproj.biz.domain.ProductBuyVO;
import com.springproj.biz.service.ProductBuyService;

@Service("productBuyService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class ProductBuyServiceImpl implements ProductBuyService {
	
	@Autowired
	//private BrandDAO dao;
	private ProductBuyDAOMybatis dao;
		
	
	@Override
	public void insertService(ProductBuyVO o) {
		dao.insertProductBuy(o);
		
	}

	@Override
	public ProductBuyVO getService(int o_odno) {
		ProductBuyVO productBuy = dao.getProductBuy(o_odno);
		
		return productBuy;
	}

	@Override
	public List<ProductBuyVO> getServiceList(ProductBuyVO o) {
		return dao.getProductBuyList(o);
	}

	@Override
	public void updateService(ProductBuyVO o) {
		dao.updateProductBuy(o);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int o_odno) {
		dao.deleteProductBuy(o_odno);
	}
	
}
