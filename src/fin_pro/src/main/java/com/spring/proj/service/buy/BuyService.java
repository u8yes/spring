package com.spring.proj.service.buy;

import java.util.List;

import com.spring.proj.domain.buy.BuyVO;

public interface BuyService {

	public void insertService(BuyVO vo);

	public BuyVO getService(int pa_no);
	public List<BuyVO> getServiceList(BuyVO vo);

	public void updateService(BuyVO vo);
	public void deleteService(int po_no);

}