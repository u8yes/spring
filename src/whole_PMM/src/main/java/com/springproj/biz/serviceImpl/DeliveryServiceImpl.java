package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.DeliveryDAOMybatis;
import com.springproj.biz.domain.DeliveryVO;
import com.springproj.biz.service.DeliveryService;

@Service("deliveryService")
public class DeliveryServiceImpl implements DeliveryService {

	@Autowired
	private DeliveryDAOMybatis dao;

	
	@Override
	public void insertService(DeliveryVO d) {
	
		dao.insertDelivery(d);

	}

	@Override
	public DeliveryVO getService(String d_dno) {

		DeliveryVO delivery = dao.getDelivery(d_dno);
		
		return delivery;
	}

	@Override
	public List<DeliveryVO> getServiceList(DeliveryVO d) {

		return dao.getDeliveryList(d);
	}

	@Override
	public void updateService(DeliveryVO d) {

		dao.updateDelivery(d);
	}

	@Override
	public void deleteService(String d_dno) {
		dao.deleteDelivery(d_dno);
	}

}
