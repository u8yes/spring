package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.KeepDAOMybatis;
import com.spring.proj.domain.KeepVO;
import com.spring.proj.service.KeepService;

@Service("keepService")
public class KeepServiceImpl implements KeepService {

	@Autowired

	private KeepDAOMybatis dao;

	
	@Override
	public void insertService(KeepVO vo) {
		
		dao.insertKeep(vo);

	}

	@Override
	public KeepVO getService(String k_no) {

		KeepVO keep = dao.getKeep(k_no);
		
		return keep;
	}

	@Override
	public List<KeepVO> getServiceList(KeepVO vo) {

		return dao.getKeepList(vo);
	}

	@Override
	public void updateService(KeepVO vo) {

		dao.updateKeep(vo);
	}

	@Override
	public void deleteService(String k_no) {
		
		dao.deleteKeep(k_no);
	}

}
