package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BasketDAOMybatis;
import com.springproj.biz.domain.BasketVO;
import com.springproj.biz.service.BasketService;

@Service("BasketService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BasketServiceImpl implements BasketService {
	
	@Autowired
	//private BrandDAO dao;
	private BasketDAOMybatis dao;
		
	
	@Override
	public void insertService(BasketVO ba) {
		dao.insertBasket(ba);
		
	}

	@Override
	public BasketVO getService(int s_no) {
		BasketVO basket = dao.getBasket(s_no);
		
		return basket;
	}

	@Override
	public List<BasketVO> getServiceList(BasketVO ba) {
		return dao.getBasketList(ba);
	}

	@Override
	public void updateService(BasketVO ba) {
		dao.updateBasket(ba);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int s_no) {
		dao.deleteBasket(s_no);
	}
	
}
