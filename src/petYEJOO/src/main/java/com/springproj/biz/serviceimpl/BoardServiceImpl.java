package com.springproj.biz.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BoardDAOMybatis;
import com.springproj.biz.domain.BoardVO;
import com.springproj.biz.service.BoardService;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	//private BoardDAO dao;
	private BoardDAOMybatis dao;
	
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	
	@Override
	public void insertService(BoardVO vo) {
		
		//log.printLog("= insertService() ="); // 공통 로직.
		//log.printLogging("= insertService() ="); // 공통 로직.
		
		/*
		if(vo.getSeq()==0) {
			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
		}
		//*/
		
		dao.insertBoard(vo); // 핵심 로직.
		//dao.insertBoard(vo);
		
	}

	@Override
	public BoardVO getService(int seq) {
		//log.printLog("= getService() =");
		BoardVO board = dao.getBoard(seq);
		
		return board;
	}

	@Override
	public List<BoardVO> getServiceList(BoardVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getBoardList(vo);
	}

	@Override
	public void updateService(BoardVO vo) {
		//log.printLog("= updateService() =");
		dao.updateBoard(vo);
	}

	@Override
	public void deleteService(int seq) {
		//log.printLog("= deleteService() =");
		dao.deleteBoard(seq);
	}
	
}
