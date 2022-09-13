package com.springproj.biz.board.controller;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springproj.biz.board.UserVO;
import com.springproj.biz.board.service.BoardService;

public class BoardRequestClient {

	public static void main(String[] args) {
		AbstractApplicationContext factory
		= new GenericXmlApplicationContext("applicationContext01.xml");
		
		BoardService service = (BoardService) factory.getBean("boardService");
		
		// TODO Auto-generated method stub
		UserVO vo = new UserVO();
		
		vo.setId("아이디1");
		vo.setPassword("패스워드1");
		vo.setName("윤석열");
		vo.setRole("드디어 나는 대통령");
		
		service.insertService(vo);
		
		//BoardVO board = service.getService(1);
		//System.out.println(board);
		
		//글 목록 검색 기능
		List<UserVO> list = service.getServiceList();
		System.out.println("==================================================================================================");
		for(UserVO users : list) {
			System.out.println(users);
		}
				
		service.deleteService(8);	// 계속 삭제가 되게끔 번호 지정
		
		factory.close();   // main에서는 close 안해줘도 알아서 닫아준다.
	}
}
