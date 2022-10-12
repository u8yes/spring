package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BuyDAOMybatis;
import com.springproj.biz.domain.BuyVO;
import com.springproj.biz.service.BuyService;

@Service("buyService")
public class BuyServiceImpl implements BuyService {

	@Autowired

	private BuyDAOMybatis dao;

	
	@Override
	public void insertService(BuyVO vo) {
	
		dao.insertBuy(vo);

	}

	@Override
	public BuyVO getService(String po_no) {

		BuyVO buy = dao.getBuy(po_no);
		
		return buy;
	}

	@Override
	public List<BuyVO> getServiceList(BuyVO vo) {

		return dao.getBuyList(vo);
	}

	@Override
	public void updateService(BuyVO vo) {

		dao.updateBuy(vo);
	}

	@Override
	public void deleteService(String po_no) {
		dao.deleteBuy(po_no);
	}

}
