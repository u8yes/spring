package com.springproj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springproj.biz.board.vo.BoardVO;
import com.springproj.service.BoardService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
public class BoardController {	

	@Autowired
	BoardService boardService;
		
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET)	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBoard.do")
	public String insertBoard() {
		System.out.println("글 등록 화면 처리");
		
		return "insertBoard";
	}
	
	
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBoard.do")
	public String insertBoard(BoardVO board){
		System.out.println("글 등록 처리");
				
		boardService.insertService(board);
				
		return "redirect:getBoardList.do";
	}
		
	
	@RequestMapping("/getBoard.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String getBoard(BoardVO board, Model model) {	// command 객체를 Spring에서 만들어줘서 board, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("Board 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BoardVO vo = boardService.getService(board.getSeq());	
		
		model.addAttribute("board", vo);
		
		return "getBoard";
	}
	
	
	@RequestMapping("/getBoardList.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String getBoardList(Model model) {	
		System.out.println("글 목록 검색 처리");
		
		List<BoardVO> list = boardService.getServiceList();

		model.addAttribute("boardList", list);
				
		return "getBoardList";
	}
	
		
	@RequestMapping("/updateBoard.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String updateBoardProc(BoardVO board) {
		//System.out.println("글 수정 처리");
						
		boardService.updateService(board);
				
		return "redirect:getBoardList.do";
	}
	
	
	@RequestMapping("/deleteBoard.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBoard(BoardVO board) {
		//System.out.println("글 삭제 처리");
				
		boardService.deleteService(board.getSeq());
					
		return "redirect:getBoardList.do";
	}
	
	
}
