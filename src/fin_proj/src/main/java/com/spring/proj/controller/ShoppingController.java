package com.spring.proj.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.ShoppingVO;
import com.spring.proj.service.ShoppingService;

//Controller단은 view와 service를 연결시켜 주는곳이다.

@Controller
@SessionAttributes("shopping")
public class ShoppingController {
	
	@Autowired
	ShoppingService shoppingService;

	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET) // value = : 이거는 하나만 세팅 해줄 때는 안써도 가능.
	@GetMapping("/insertShoppingbas.do") // 4점대 버전 이후부터 사용 가능한 기능.
	public String insertShoppingbas() {
		//System.out.println("글 등록 화면 처리");
		
		return "bucket/insertShoppingbas";
	}
	
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	@PostMapping("/insertShoppingbas.do")
	public String insertShoppingbas(ShoppingVO shopping, HttpSession session) throws IOException {
		System.out.println("글 등록 처리");
		
		// 파일 업로드 처리
	/*  String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
		System.out.println("=>" + fileSaveFolder);
		
		MultipartFile uploadFile = product.getUploadFile();
		
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			System.out.println("===>"+fileName);
			uploadFile.transferTo(new File(fileSaveFolder+fileName));
			product.setP_pimg(fileName);
		}
	*/
		
		shoppingService.insertService(shopping);
		
		return "redirect:getBoardList2.do";
	}
	
	@RequestMapping(value = "/getBoard2.doo")
	public String getBoard(ShoppingVO shopping, Model model) {
		//System.out.println("GetBoardController 처리.");
		
		ShoppingVO vo = shoppingService.getService(shopping.getS_no());
		
		model.addAttribute("shopping", vo); // command 객체로 이용 가능하다.
		
		return "bucket/getBoard2";
	}
	
	// 검색 조건 목록 설정
//	@ModelAttribute("conditionMap") // key 자리
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		
//		return conditionMap; // value 자리
//	}
	
	@RequestMapping(value = "/getBoardList2.doo")
	public String getList(ShoppingVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("s_no");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<ShoppingVO> list = shoppingService.getServiceList(vo);
		
		model.addAttribute("boardList", list);
		
		return "bucket/getBoardList2";
	}
	
	@RequestMapping(value = "/updateBoard.doo")
	public String updateBoardProc(@ModelAttribute("shopping") ShoppingVO vo) {
		//System.out.println("글 수정 처리.");
		System.out.println(vo);
		
		shoppingService.updateService(vo);
		
		return "redirect:getBoardList2.do";
	}

	@RequestMapping(value = "/deleteBoard.doo")
	public String deleteBoard(ShoppingVO shopping) {
		//System.out.println("글 삭제 처리.");
				
		shoppingService.deleteService(shopping.getS_no());
			
		return "redirect:getBoardList2.doo";
	}
	
}
/*board.getSeq());*/