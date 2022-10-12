package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.DeliveryVO;

public interface DeliveryService {

	public void insertService(DeliveryVO vo);

	public DeliveryVO getService(int d_dno);
	
	public List<DeliveryVO> getServiceList(DeliveryVO vo);

	public void updateService(DeliveryVO vo);

	 public void deleteService(int d_dno);
}