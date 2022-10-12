package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.CommunityVO;

public interface CommuService {

	public void insertService(CommunityVO vo);
	public CommunityVO getService(String cm_bdno);
	public List<CommunityVO> getServiceList(CommunityVO vo);
	public void updateService(CommunityVO vo);
	public void deleteService(String cm_bdno);
	
}
