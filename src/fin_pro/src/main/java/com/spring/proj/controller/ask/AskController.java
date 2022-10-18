package com.spring.proj.controller.ask;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.ask.AskVO;
import com.spring.proj.service.ask.AskService;

@Controller
@SessionAttributes("ask")
public class AskController {
	
	@Autowired
	AskService askService;
//	@Autowired
//	ArService arService;

	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET) // value = : 이거는 하나만 세팅 해줄 때는 안써도 가능.
	@GetMapping("/insertBAsk.zo") // 4점대 버전 이후부터 사용 가능한 기능.
	public String insertBAsk() {
		//System.out.println("글 등록 화면 처리");
		
		return "ask/insertBAsk";
	}
	
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	@PostMapping("/insertBAsk.zo")
	public String insertBAsk(AskVO ask) {
		//System.out.println("글 등록 처리");
		
		// 파일 업로드 처리
//		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
//		System.out.println("=>" + fileSaveFolder);
//		
//		MultipartFile uploadFile =  board.getUploadFile();
//		
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			uploadFile.transferTo(new File(fileSaveFolder+fileName));
//		}
		
		askService.insertServiceB(ask);
		
		return "redirect:getBAskList.zo";
	}
	
	@GetMapping("/insertUAsk.zo")
	public String insertUAsk() {
		return "ask/insertUAsk";
	}
	
	@PostMapping("/insertUAsk.zo")
	public String insertUAsk(AskVO ask) {
		askService.insertServiceU(ask);
		return "redirect:getUAskList.zo";
	}
	
//	@RequestMapping(value = "/getAsk.zo")
//	public String getAsk(AskVO ask, Model model, AskRvVO ar, Model model2) {
//		//System.out.println("GetBoardController 처리.");
//		
//		AskVO vo = askService.getService(ask.getA_no());
//		
//		List<AskRvVO> list = arService.getServiceList(ar.getA_no());
//		
//		model2.addAttribute("arList", list);
//		
//		model.addAttribute("ask", vo); // command 객체로 이용 가능하다.
//		
//		return "getAsk";
//	}
//	
//	// 검색 조건 목록 설정
//	@ModelAttribute("conditionMap") // key 자리
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		
//		return conditionMap; // value 자리
//	}
	
	@RequestMapping(value = "/getBAskList.zo")
	public String getBList(AskVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<AskVO> list = askService.getServiceList(vo);
		
		model.addAttribute("askList", list);
		
		return "ask/getBAskList";
	}
	
	@RequestMapping(value = "/getUAskList.zo")
	public String getUList(AskVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<AskVO> list = askService.getServiceList(vo);
		
		model.addAttribute("askList", list);
		
		return "ask/getUAskList";
	}
	
	@RequestMapping(value = "/updateAsk.zo")
	public String updateAskProc(@ModelAttribute("ask") AskVO vo) {
		//System.out.println("글 수정 처리.");
		System.out.println(vo);
		
		askService.updateService(vo);
		
		return "redirect:getAskList.zo";
	}

	@RequestMapping(value = "/deleteAsk.zo")
	public String deleteAsk(AskVO ask) {
		//System.out.println("글 삭제 처리.");
				
		askService.deleteService(ask.getA_no());
		
		return "redirect:getAskList.zo";
	}
	
}
