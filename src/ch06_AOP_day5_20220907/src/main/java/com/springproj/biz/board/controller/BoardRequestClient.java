package com.springproj.biz.board.controller;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springproj.biz.board.BoardVO;
import com.springproj.biz.board.service.BoardService;
import com.springproj.biz.board.service.BoardServiceImpl;

public class BoardRequestClient {

	public static void main(String[] args) {
		AbstractApplicationContext factory
		= new GenericXmlApplicationContext("applicationContext01.xml");
		
		BoardService service = (BoardService) factory.getBean("boardService");
		
		// TODO Auto-generated method stub
		BoardVO vo = new BoardVO();
		
		vo.setTitle("첫 게시글");
		vo.setWriter("홍길동");
		vo.setContent("드디어 나는 개발자");
		
		service.insertService(vo);
		
		factory.close();   // main에서는 close 안해줘도 알아서 닫아준다.
	}
}
