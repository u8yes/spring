package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.CommentsVO;

public interface ComsService {

	public void insertService(CommentsVO vo);
	public List<CommentsVO> getServiceList(String rv_no);
	public void updateService(CommentsVO vo);
	public void deleteService(String cm_no);
	
}
