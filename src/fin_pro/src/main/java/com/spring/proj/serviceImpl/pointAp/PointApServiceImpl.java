package com.spring.proj.serviceImpl.pointAp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.pointAp.PointApDAOMybatis;
import com.spring.proj.domain.pointAp.PointApVO;
import com.spring.proj.service.pointAp.PointApService;

@Service("pointApService")
public class PointApServiceImpl implements PointApService {

	@Autowired

	private PointApDAOMybatis dao;

	
	@Override
	public void insertService(PointApVO vo) {

		
		dao.insertPointAp(vo);
	}

	@Override
	public PointApVO getService(int pa_no) {

		PointApVO pointAp = dao.getPointAp(pa_no);
		
		return pointAp;
	}

	@Override
	public List<PointApVO> getServiceList(PointApVO vo) {

		return dao.getPointApList(vo);
	}

	@Override
	public void updateService(PointApVO vo) {

		dao.updatePointAp(vo);
	}

	@Override
	public void deleteService(int pa_no) {
		dao.deletePointAp(pa_no);
	}

}
