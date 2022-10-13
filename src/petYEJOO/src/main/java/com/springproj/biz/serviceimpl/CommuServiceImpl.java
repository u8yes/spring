package com.springproj.biz.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.CommuDAOMybatis;
import com.springproj.biz.domain.CommunityVO;
import com.springproj.biz.service.CommuService;

@Service("commuService")
public class CommuServiceImpl implements CommuService {

	@Autowired
	private CommuDAOMybatis dao;
	
	@Override
	public void insertService(CommunityVO vo) {
		dao.insertCommu(vo);
	}

	@Override
	public CommunityVO getService(String cm_bdno) {
		CommunityVO commu = dao.getCommu(cm_bdno);
		return commu;
	}

	@Override
	public List<CommunityVO> getServiceList(CommunityVO vo) {
		return dao.getCommuList(vo);
	}

	@Override
	public void updateService(CommunityVO vo) {
		dao.updateCommu(vo);
	}

	@Override
	public void deleteService(String cm_bdno) {
		dao.deleteCommu(cm_bdno);
	}

}
