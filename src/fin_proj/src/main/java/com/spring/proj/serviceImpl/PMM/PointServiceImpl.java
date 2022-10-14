package com.spring.proj.serviceImpl.PMM;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.PMM.PointDAOMybatis;
import com.spring.proj.domain.PMM.PointVO;
import com.spring.proj.service.PMM.PointService;

@Service("PointService")
public class PointServiceImpl implements PointService {

	@Autowired
	private PointDAOMybatis dao;
	

	@Override
	public void insertService(PointVO vo) {
		// TODO Auto-generated method stub
		dao.insertPoint(vo);
	}

	@Override
	public PointVO getService(int pp_payno) {
		// TODO Auto-generated method stub
		PointVO point = dao.getPoint(pp_payno);
		return point;
	}

	@Override
	public List<PointVO> getServiceList(PointVO vo) {
		// TODO Auto-generated method stub
	 return dao.getPiointList(vo);
		
	}

	@Override
	public void updateService(PointVO vo) {
		// TODO Auto-generated method stub

		dao.updatePoint(vo);
		
	}

	@Override
	public void deleteService(int pp_payno) {
		// TODO Auto-generated method stub
		dao.deletePoint(pp_payno);
	}

}
