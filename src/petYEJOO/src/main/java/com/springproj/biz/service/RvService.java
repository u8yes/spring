package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.ReviewVO;

public interface RvService {

	public void insertService(ReviewVO vo);
	public ReviewVO getService(String rv_no);
	public List<ReviewVO> getServiceList(ReviewVO vo);
	public void updateService(ReviewVO vo);
	public void deleteService(String rv_no);
	
}
