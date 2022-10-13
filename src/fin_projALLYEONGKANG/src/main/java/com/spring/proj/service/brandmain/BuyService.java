package com.spring.proj.service.brandmain;

import java.util.List;

import com.spring.proj.domain.brandmain.BuyVO;

public interface BuyService {

	public void insertService(BuyVO vo);

	public BuyVO getService(int po_no);
	public List<BuyVO> getServiceList(BuyVO vo);

	public void updateService(BuyVO vo);

	 public void deleteService(int po_no);
}