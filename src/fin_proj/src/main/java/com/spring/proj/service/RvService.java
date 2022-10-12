package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.ReviewVO;

public interface RvService {

	public void insertService(ReviewVO vo);
	public ReviewVO getService(String rv_no);
	public List<ReviewVO> getServiceList(ReviewVO vo);
	public void updateService(ReviewVO vo);
	public void deleteService(String rv_no);
	
}
