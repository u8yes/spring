package com.springproj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.springproj.biz.domain.AskRvVO;
import com.springproj.biz.domain.AskVO;
import com.springproj.biz.service.ArService;
import com.springproj.biz.service.AskService;

@Controller
@SessionAttributes("ask")
public class AskController {
	
	@Autowired
	AskService askService;
	@Autowired
	ArService arService;

	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET) // value = : 이거는 하나만 세팅 해줄 때는 안써도 가능.
	@GetMapping("/insertBAsk.zo") // 4점대 버전 이후부터 사용 가능한 기능.
	public String insertBAsk() {
		//System.out.println("글 등록 화면 처리");
		
		return "insertBAsk";
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
		return "insertUAsk";
	}
	
	@PostMapping("/insertUAsk.zo")
	public String insertUAsk(AskVO ask) {
		askService.insertServiceU(ask);
		return "redirect:getUAskList.zo";
	}
	
	@GetMapping("/insertUAskP.zo")
	public String insertUAskP() {
		return "insertUAskP";
	}
	
	@PostMapping("/insertUAskP.zo")
	public String insertUAskP(AskVO ask) {
		askService.insertServiceP(ask);
		return "redirect:getPAskList.zo";
	}
	
	@RequestMapping(value = "/getAsk.zo")
	public String getAsk(AskVO ask, Model model, AskRvVO ar, Model model2) {
		//System.out.println("GetBoardController 처리.");
		
		AskVO vo = askService.getService(ask.getA_no());
		
		List<AskRvVO> list = arService.getServiceList(ar.getA_no());
		
		model2.addAttribute("arList", list);
		
		model.addAttribute("ask", vo); // command 객체로 이용 가능하다.
		
		return "getAsk";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap") // key 자리
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap; // value 자리
	}
	
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
		
		List<AskVO> list = askService.getServiceBList(vo);
		
		model.addAttribute("askList", list);
		
		return "getBAskList";
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
		
		List<AskVO> list = askService.getServiceUList(vo);
		
		model.addAttribute("askList", list);
		
		return "getUAskList";
	}
	
	@RequestMapping(value = "/getPAskList.zo")
	public String getPList(AskVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<AskVO> list = askService.getServicePList(vo);
		
		model.addAttribute("askList", list);
		
		return "getPAskList";
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
