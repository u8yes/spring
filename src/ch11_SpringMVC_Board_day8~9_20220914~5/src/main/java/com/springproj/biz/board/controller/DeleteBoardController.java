package com.springproj.biz.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springproj.biz.board.service.BoardService;

public class DeleteBoardController implements Controller {

	@Autowired
	BoardService boardService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("글 삭제 처리");
		
		String seq = request.getParameter("seq"); 		// request 안에 자료를 담고 있음.
		
		boardService.deleteService(Integer.parseInt(seq));
		
		// 이제까지는 보내는 것, 다음부터는 화면으로 받은 걸 보여주기 위한 작업
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:getBoardList.do");
		
		return mav;
	}

}
