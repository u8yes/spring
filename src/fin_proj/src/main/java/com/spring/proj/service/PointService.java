package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.PointVO;

public interface PointService {

	public void insertService(PointVO vo);

	public PointVO getService(int pp_payno);
	
	public List<PointVO> getServiceList(PointVO vo);

	public void updateService(PointVO vo);

	 public void deleteService(int pp_payno);
}