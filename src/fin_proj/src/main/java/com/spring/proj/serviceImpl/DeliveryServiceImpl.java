package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.DeliveryDAOMybatis;
import com.spring.proj.domain.DeliveryVO;
import com.spring.proj.service.DeliveryService;

@Service("deliveryService")
public class DeliveryServiceImpl implements DeliveryService {

	@Autowired
	private DeliveryDAOMybatis dao;

	
	@Override
	public void insertService(DeliveryVO vo) {
	
		dao.insertDelivery(vo);

	}

	@Override
	public DeliveryVO getService(int d_dno) {

		DeliveryVO delivery = dao.getDelivery(d_dno);
		
		return delivery;
	}

	@Override
	public List<DeliveryVO> getServiceList(DeliveryVO vo) {

		return dao.getDeliveryList(vo);
	}

	@Override
	public void updateService(DeliveryVO vo) {

		dao.updateDelivery(vo);
	}

	@Override
	public void deleteService(int d_dno) {
		dao.deleteDelivery(d_dno);
	}

}
