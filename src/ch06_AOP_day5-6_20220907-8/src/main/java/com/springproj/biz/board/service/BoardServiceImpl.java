package com.springproj.biz.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.board.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	
	@Override
	public void insertService(BoardVO vo) {
		//log.printLog("= insertService() =");
		//log.printLogging("= insertService() =");
		
//		if(vo.getSeq() == 0) {
//			throw new IllegalArgumentException("0번 글은 등록할 수 없다");
//		}
		dao.insertBoard(vo);
		
	}

	@Override
	public BoardVO getService(int seq) {
		//log.printLog("= getService() =");
		BoardVO board = dao.getBoard(seq);
		
		return board;
	}

	@Override
	public void getServiceList() {
		//log.printLog("= getServiceList() =");
		dao.getBoardList();
	}

	@Override
	public void updateService(BoardVO vo) {
		//log.printLog("= updateService() =");
		dao.updateBoard(vo);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int seq) {
		//log.printLog("= deleteService() =");
		dao.deleteBoard(seq);
	}
	
}
