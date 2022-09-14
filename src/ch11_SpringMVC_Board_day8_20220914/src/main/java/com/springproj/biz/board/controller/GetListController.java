package com.springproj.biz.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.springproj.biz.board.service.BoardService;
import com.springproj.biz.board.vo.BoardVO;

public class GetListController implements Controller {

	@Autowired
	BoardService boardService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("글 목록 검색 처리");
		
		List<BoardVO> list = boardService.getServiceList();

		ModelAndView mav = new ModelAndView();
		mav.addObject("boardList", list);
		mav.setViewName("getBoardList");
				
		return mav;
	}

}
