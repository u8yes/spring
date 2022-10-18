package com.spring.proj.serviceImpl.buy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.buy.BuyDAOMybatis;
import com.spring.proj.domain.buy.BuyVO;
import com.spring.proj.service.buy.BuyService;





@Service("buyService")
public class BuyServiceImpl implements BuyService {

	@Autowired

	private BuyDAOMybatis dao;

	@Override
	public BuyVO getService(int pa_no) {
		System.out.println("impl===>"+pa_no);
		BuyVO buy = dao.getBuy(pa_no);

		return buy;
	
	}

	@Override
	public void insertService(BuyVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BuyVO> getServiceList(BuyVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateService(BuyVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteService(int po_no) {
		// TODO Auto-generated method stub
		
	}

}


