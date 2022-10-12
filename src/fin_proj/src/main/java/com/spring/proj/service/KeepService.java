package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.KeepVO;

public interface KeepService {

	public void insertService(KeepVO vo);

	public KeepVO getService(String k_no);
	
	public List<KeepVO> getServiceList(KeepVO vo);

	public void updateService(KeepVO vo);

	 public void deleteService(String k_no);
}