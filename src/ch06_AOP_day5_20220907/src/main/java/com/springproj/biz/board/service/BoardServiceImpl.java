package com.springproj.biz.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.board.dao.BoardDAO;
import com.springproj.biz.common.Log4jAdvice;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	@Autowired
	//private LogAdvice log;
	private Log4jAdvice log;
	
	@Override
	public void insertService(BoardVO vo) {
		//log.printLog("= insertService() =");
		log.printLogging("= insertService() =");
		dao.insertBoard(vo);
		
	}

	@Override
	public void getService(int seq) {
		log.printLogging("= getService() =");
		dao.getBoard(seq);
	}

	@Override
	public void getServiceList() {
		log.printLogging("= getServiceList() =");
		dao.getBoardList();
	}

	@Override
	public void updateService(BoardVO vo) {
		log.printLogging("= updateService() =");
		dao.updateBoard(vo);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int seq) {
		log.printLogging("= deleteService() =");
		dao.deleteBoard(seq);
	}
	
}
