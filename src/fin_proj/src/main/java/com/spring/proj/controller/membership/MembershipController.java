package com.spring.proj.controller.membership;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.membership.MembershipVO;
import com.spring.proj.service.membership.MembershipService;

@Controller
@SessionAttributes("membership")
public class MembershipController{
	@Autowired
	MembershipService membershipService;

	@GetMapping("/insertMembership.do")
	public String insertMembership(MembershipVO vo){

		return "insertMembership";
	}
	
	@PostMapping("/insertMembership.do")
	public String insertMembership(MembershipVO membership,HttpSession session) throws IllegalStateException, IOException {
		//System.out.println("글 등록 처리");
		
		
		membershipService.insertService(membership);
		
		return "redirect:main.do";
	}
	
	
	@GetMapping("/updateMembership.do")
	public String updateMembership(String ms_grade) {

		return "updateMembership";
	}
	
	@PostMapping("/updateMembership.do")
	public String updateMembership(MembershipVO membership,HttpSession session) throws IllegalStateException, IOException {
		//System.out.println("글 등록 처리");
		
		
		membershipService.updateService(membership);
		
		return "redirect:main.do";
	}
	
//	// 검색 조건 목록 설정
//	@ModelAttribute("conditionMap")
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		
//		conditionMap.put("제목", "TITLE");
//		conditionMap.put("내용", "CONTENT");
//		
//		return conditionMap;
//	}
//	
//	// 글 목록 검색 처리
//	@RequestMapping(value = "/getBoardList.do")
//	public String getBoardList(BoardVO vo, Model model) {
//		//System.out.println("글 목록 검색 처리");
//		
//		System.out.println("검색 조건: " + vo.getSearchCondition());
//		System.out.println("검색 단어: " + vo.getSearchKeyword());
//		
//		if(vo.getSearchCondition() == null) {
//			vo.setSearchCondition("TITLE");
//		}
//		
//		if(vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
//		}
//		
//		List<BoardVO> list = boardService.getServiceList(vo);
//		
//		model.addAttribute("boardList", list);
//		
//		return "getBoardList";
//	}
//	
//	

}
