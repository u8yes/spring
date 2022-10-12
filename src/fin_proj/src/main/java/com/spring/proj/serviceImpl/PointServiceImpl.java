package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.PointDAOMybatis;
import com.spring.proj.domain.PointVO;
import com.spring.proj.service.PointService;

@Service("pointService")
public class PointServiceImpl implements PointService {

	@Autowired

	private PointDAOMybatis dao;

	
	@Override
	public void insertService(PointVO vo) {

		
		dao.insertPoint(vo);
	}

	@Override
	public PointVO getService(int pp_payno) {

		PointVO point = dao.getPoint(pp_payno);
		
		return point;
	}

	@Override
	public List<PointVO> getServiceList(PointVO vo) {

		return dao.getPointList(vo);
	}

	@Override
	public void updateService(PointVO vo) {

		dao.updatePoint(vo);
	}

	@Override
	public void deleteService(int pp_payno) {
		dao.deletePoint(pp_payno);
	}

}
