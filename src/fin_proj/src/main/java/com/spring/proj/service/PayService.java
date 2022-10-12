package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.PayVO;

public interface PayService {

	public void insertService(PayVO vo);

	public PayVO getService(int ob_payno);
	public List<PayVO> getServiceList(PayVO vo);

	public void updateService(PayVO vo);

	 public void deleteService(int ob_payno);
}