package com.springproj.biz.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.board.dao.BoardDAO;
import com.springproj.biz.common.LogAdvice;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	private LogAdvice log;
		
	
	@Override
	public void insertService(BoardVO vo) {
		
		//boardDAO dao = new BoardDAO();
		dao.insertBoard(vo);
		
	}

	@Override
	public void getService(int seq) {
		dao.getBoard(seq);
	}

	@Override
	public void getServiceList() {
		dao.getBoardList();
	}

	@Override
	public void updateService(BoardVO vo) {
		dao.updateBoard(vo);// BoardDAO에서 가져오고 있음
	}

	@Override
	public void deleteService(int seq) {
		dao.deleteBoard(seq);
	}
	
}
