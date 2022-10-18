package com.spring.proj.service.pointAp;

import java.util.List;

import com.spring.proj.domain.pointAp.PointApVO;


public interface PointApService {

	public void insertService(PointApVO vo);

	public PointApVO getService(int pa_no);
	
	public List<PointApVO> getServiceList(PointApVO vo);

	public void updateService(PointApVO vo);

	 public void deleteService(int pa_no);
}