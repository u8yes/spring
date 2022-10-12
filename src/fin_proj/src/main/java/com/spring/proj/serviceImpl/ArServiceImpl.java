package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.ArDAOMybatis;
import com.spring.proj.domain.AskRvVO;
import com.spring.proj.service.ArService;

@Service("arService")
public class ArServiceImpl implements ArService {

	@Autowired
	private ArDAOMybatis dao;
	
	@Override
	public void insertService(AskRvVO vo) {
		dao.insertAr(vo);
	}

	@Override
	public AskRvVO getService(String ar_no) {
		AskRvVO ar = dao.getAr(ar_no);
		return ar;
	}

	@Override
	public List<AskRvVO> getServiceList(String a_no) {
		return dao.getArList(a_no);
	}

	@Override
	public void updateService(AskRvVO vo) {
		dao.updateAr(vo);
	}

	@Override
	public void deleteService(String ar_no) {
		dao.deleteAr(ar_no);
	}

}
