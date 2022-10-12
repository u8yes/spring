package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.CommuDAOMybatis;
import com.spring.proj.domain.CommunityVO;
import com.spring.proj.service.CommuService;

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
