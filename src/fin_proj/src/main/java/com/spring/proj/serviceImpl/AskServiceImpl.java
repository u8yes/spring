package com.spring.proj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.AskDAOMybatis;
import com.spring.proj.domain.AskVO;
import com.spring.proj.service.AskService;

@Service("askService")
public class AskServiceImpl implements AskService {

	@Autowired
	//private BoardDAO dao;
	private AskDAOMybatis dao;
	
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	
	@Override
	public void insertService(AskVO vo) {
		
		//log.printLog("= insertService() ="); // 공통 로직.
		//log.printLogging("= insertService() ="); // 공통 로직.
		
		/*
		if(vo.getSeq()==0) {
			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
		}
		//*/
		
		dao.insertAsk(vo); // 핵심 로직.
		//dao.insertBoard(vo);
		
	}

	@Override
	public AskVO getService(String a_no) {
		//log.printLog("= getService() =");
		AskVO ask = dao.getAsk(a_no);
		
		return ask;
	}

	@Override
	public List<AskVO> getServiceList(AskVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getAskList(vo);
	}

	@Override
	public void updateService(AskVO vo) {
		//log.printLog("= updateService() =");
		dao.updateAsk(vo);
	}

	@Override
	public void deleteService(String a_no) {
		//log.printLog("= deleteService() =");
		dao.deleteAsk(a_no);
	}
	
}
