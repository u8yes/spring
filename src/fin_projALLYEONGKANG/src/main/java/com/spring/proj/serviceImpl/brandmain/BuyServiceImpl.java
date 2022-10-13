package com.spring.proj.serviceImpl.brandmain;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brandmain.BuyDAOMybatis;
import com.spring.proj.domain.brandmain.BuyVO;
import com.spring.proj.service.brandmain.BuyService;

@Service("buyService")
public class BuyServiceImpl implements BuyService {

	@Autowired

	private BuyDAOMybatis dao;

	
	@Override
	public void insertService(BuyVO vo) {
	
		dao.insertBuy(vo);

	}

	@Override
	public BuyVO getService(int po_no) {

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
	public void deleteService(int po_no) {
		dao.deleteBuy(po_no);
	}

}
