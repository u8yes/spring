package com.springproj.biz.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springproj.biz.board.vo.BoardVO;

public class DeleteBoardProcController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("테스트");
		
		/*
		 * String seq = request.getParameter("seq");
		 * 
		 * BoardVO board = boardService.getService(Integer.parseInt(seq)); // 형변환 String
		 * -> Integer ModelAndView mav = new ModelAndView(); mav.addObject("board",
		 * board); mav.setViewName("getBoard");
		 */
		
		return null;
	}

}
