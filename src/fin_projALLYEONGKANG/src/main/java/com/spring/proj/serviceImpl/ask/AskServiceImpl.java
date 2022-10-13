package com.spring.proj.serviceImpl.ask;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.ask.AskDAOMybatis;
import com.spring.proj.domain.ask.AskVO;
import com.spring.proj.service.ask.AskService;

@Service("askService")
public class AskServiceImpl implements AskService {

	@Autowired
	private AskDAOMybatis dao;
	
	@Override
	public void insertServiceB(AskVO vo) {
		dao.insertBAsk(vo);
	}

	@Override
	public void insertServiceU(AskVO vo) {
		dao.insertUAsk(vo);
	}

	@Override
	public AskVO getService(int a_no) {
		AskVO ask = dao.getAsk(a_no);
		return ask;
	}

	@Override
	public List<AskVO> getServiceList(AskVO vo) {
		return dao.getAskList(vo);
	}

	@Override
	public void updateService(AskVO vo) {
		dao.updateAsk(vo);
	}

	@Override
	public void deleteService(int a_no) {
		dao.deleteAsk(a_no);
	}

}
