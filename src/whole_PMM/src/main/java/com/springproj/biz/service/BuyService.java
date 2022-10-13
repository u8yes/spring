package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BuyVO;

public interface BuyService {

	public void insertService(BuyVO vo);

	public BuyVO getService(int po_no);
	public List<BuyVO> getServiceList(BuyVO vo);

	public void updateService(BuyVO vo);

	 public void deleteService(int po_no);
}