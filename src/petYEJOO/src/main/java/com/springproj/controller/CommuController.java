package com.springproj.controller;

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

import com.springproj.biz.domain.CommunityVO;
import com.springproj.biz.service.CommuService;

@Controller
@SessionAttributes("commu")
public class CommuController {
	
	@Autowired
	CommuService commuService;

	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.GET) // value = : 이거는 하나만 세팅 해줄 때는 안써도 가능.
	@GetMapping("/insertCommu.zo") // 4점대 버전 이후부터 사용 가능한 기능.
	public String insertCommu() {
		//System.out.println("글 등록 화면 처리");
		
		return "insertCommu";
	}
	
	//@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	@PostMapping("/insertCommu.zo")
	public String insertCommu(CommunityVO commu, HttpSession session) throws IOException {
		//System.out.println("글 등록 처리");
		
		// 파일 업로드 처리
//		String fileSaveFolder = session.getServletContext().getRealPath("/commuUpload/");
//		System.out.println("=>" + fileSaveFolder);
//		
//		MultipartFile uploadFile =  commu.getUploadFile();
//		
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			uploadFile.transferTo(new File(fileSaveFolder+fileName));
//		}
		
		commuService.insertService(commu);
		
		return "redirect:getCommuList.zo";
	}
	
	@RequestMapping(value = "/getCommu.zo")
	public String getCommu(CommunityVO commu, Model model) {
		//System.out.println("GetBoardController 처리.");
		
		CommunityVO vo = commuService.getService(commu.getCm_bdno());
		
		model.addAttribute("commu", vo); // command 객체로 이용 가능하다.
		
		return "getCommu";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap") // key 자리
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap; // value 자리
	}
	
	@RequestMapping(value = "/getCommuList.zo")
	public String getList(CommunityVO vo, Model model) {
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<CommunityVO> list = commuService.getServiceList(vo);
		
		model.addAttribute("commuList", list);
		
		return "getCommuList";
	}
	
	@RequestMapping(value = "/updateCommu.zo")
	public String updateBoardProc(@ModelAttribute("commu") CommunityVO vo) {
		//System.out.println("글 수정 처리.");
		System.out.println(vo);
		
		commuService.updateService(vo);
		
		return "redirect:getCommuList.zo";
	}

	@RequestMapping(value = "/deleteCommu.zo")
	public String deleteCommu(CommunityVO commu) {
		//System.out.println("글 삭제 처리.");
				
		commuService.deleteService(commu.getCm_bdno());
		
		return "redirect:getCommuList.zo";
	}
	
}
