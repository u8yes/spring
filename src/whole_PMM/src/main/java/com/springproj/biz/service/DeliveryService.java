package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.DeliveryVO;

public interface DeliveryService {

	public void insertService(DeliveryVO vo);

	public DeliveryVO getService(String d_dno);
	
	public List<DeliveryVO> getServiceList(DeliveryVO vo);

	public void updateService(DeliveryVO vo);

	 public void deleteService(String d_dno);
}