package com.springproj.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.BoardDAO;
import com.springproj.biz.domain.BoardVO;
import com.springproj.biz.service.BoardService;

@Service("boardService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO dao;
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	
	@Override
	public void insertService(BoardVO vo) {
		
		/*
		  if(vo.getSeq() == 0) { throw new IllegalArgumentException("0번 글은 등록할 수 없다");
		  }
		//*/
		
		dao.insertBoard(vo);
		
	}

	@Override
	public BoardVO getService(int seq) {
		BoardVO board = dao.getBoard(seq);
		
		return board;
	}

	@Override
	public List<BoardVO> getServiceList() {
		
		return dao.getBoardList();
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
