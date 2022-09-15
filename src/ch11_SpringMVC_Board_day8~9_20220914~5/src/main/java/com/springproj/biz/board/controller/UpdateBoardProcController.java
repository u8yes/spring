package com.springproj.biz.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springproj.biz.board.service.BoardService;
import com.springproj.biz.board.vo.BoardVO;

public class UpdateBoardProcController implements Controller {
	@Autowired
	BoardService boardService;
		
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("글 수정 처리");
		
		String seq = request.getParameter("seq");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardVO board = new BoardVO();
		
		board.setSeq(Integer.parseInt(seq));
		board.setTitle(title);
		board.setContent(content);
		
		boardService.updateService(board);
				
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("redirect:getBoard.do?seq="+seq);
		mav.setViewName("redirect:getBoardList.do");
		
		return mav;
	}

}
