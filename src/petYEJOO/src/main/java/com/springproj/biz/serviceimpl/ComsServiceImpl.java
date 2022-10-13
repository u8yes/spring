package com.springproj.biz.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.ComsDAOMybatis;
import com.springproj.biz.domain.CommentsVO;
import com.springproj.biz.service.ComsService;

@Service("comsService")
public class ComsServiceImpl implements ComsService {
	
	@Autowired
	private ComsDAOMybatis dao;

	@Override
	public void insertService(CommentsVO vo) {
		dao.insertComs(vo);
	}

	@Override
	public List<CommentsVO> getServiceList(String rv_no) {
		return dao.getComsList(rv_no);
	}

	@Override
	public void updateService(CommentsVO vo) {
		dao.updateComs(vo);
	}

	@Override
	public void deleteService(String cm_no) {
		dao.deleteComs(cm_no);
	}

}
