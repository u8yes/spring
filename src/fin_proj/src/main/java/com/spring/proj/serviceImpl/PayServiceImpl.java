package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.PayDAOMybatis;
import com.spring.proj.domain.PayVO;
import com.spring.proj.service.PayService;

@Service("payService")
public class PayServiceImpl implements PayService {

	@Autowired

	private PayDAOMybatis dao;

	
	@Override
	public void insertService(PayVO vo) {

		dao.insertPay(vo);

	}

	@Override
	public PayVO getService(int ob_payno) {

		PayVO pay = dao.getPay(ob_payno);
		
		return pay;
	}

	@Override
	public List<PayVO> getServiceList(PayVO vo) {

		return dao.getPayList(vo);
	}

	@Override
	public void updateService(PayVO vo) {

		dao.updatePay(vo);
	}

	@Override
	public void deleteService(int ob_payno) {
		dao.deletePay(ob_payno);
	}

}
