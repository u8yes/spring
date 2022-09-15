package com.springproj.biz.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springproj.biz.board.service.BoardService;
import com.springproj.biz.board.vo.BoardVO;

public class GetBoardController implements Controller {
	
	@Autowired
	BoardService boardService;
		
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//System.out.println("GetBoardController 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		String seq = request.getParameter("seq");
		
		BoardVO board = boardService.getService(Integer.parseInt(seq));	// 형변환 String -> Integer
		ModelAndView mav = new ModelAndView();
		mav.addObject("board", board);
		mav.setViewName("getBoard");
		
		return mav;
	}

}
