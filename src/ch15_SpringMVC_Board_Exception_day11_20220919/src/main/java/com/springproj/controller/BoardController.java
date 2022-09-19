package com.springproj.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.springproj.biz.domain.BoardVO;
import com.springproj.biz.service.BoardService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("board")	// board라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
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
	public String insertBoard(BoardVO board, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
		System.out.println("=> " + fileSaveFolder);
		
		MultipartFile uploadFile = board.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		}
				
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
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBoardList.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBoardList(BoardVO vo, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + vo.getSearchCondition());
		System.out.println("검색 조건 : " + vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<BoardVO> list = boardService.getServiceList(vo);

		model.addAttribute("boardList", list);
				
		return "getBoardList";
	}
	
		
	@RequestMapping("/updateBoard.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String updateBoardProc(@ModelAttribute("board") BoardVO vo) {
		//System.out.println("글 수정 처리");
								
		boardService.updateService(vo);
		
		System.out.println(vo);
				
		return "redirect:getBoardList.do";
	}
	
	
	@RequestMapping("/deleteBoard.do")	// /insertBoard.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBoard(BoardVO board) {
		//System.out.println("글 삭제 처리");
				
		boardService.deleteService(board.getSeq());
					
		return "redirect:getBoardList.do";
	}
	
	
}
