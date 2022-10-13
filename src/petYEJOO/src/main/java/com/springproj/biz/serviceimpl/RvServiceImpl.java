package com.springproj.biz.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.RvDAOMybatis;
import com.springproj.biz.domain.ReviewVO;
import com.springproj.biz.service.RvService;

@Service("rvService")
public class RvServiceImpl implements RvService {

	@Autowired
	private RvDAOMybatis dao;
	
	@Override
	public void insertService(ReviewVO vo) {
		dao.insertRv(vo);
	}

	@Override
	public ReviewVO getService(String rv_no) {
		ReviewVO rv = dao.getRv(rv_no);
		return rv;
	}

	@Override
	public List<ReviewVO> getServiceList(ReviewVO vo) {
		return dao.getRvList(vo);
	}

	@Override
	public void updateService(ReviewVO vo) {
		dao.updateRv(vo);
	}

	@Override
	public void deleteService(String rv_no) {
		dao.deleteRv(rv_no);
	}

}
