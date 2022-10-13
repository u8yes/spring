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

import com.springproj.biz.domain.CommentsVO;
import com.springproj.biz.domain.ReviewVO;
import com.springproj.biz.service.ComsService;
import com.springproj.biz.service.RvService;

@Controller
@SessionAttributes("rv")
public class RvController {

	@Autowired
	RvService rvService;
	
	@Autowired
	ComsService comsService;
	
	@GetMapping("/insertRv.zo")
	public String insertRv() {
		return "insertRv";
	}
	
	@PostMapping("/insertRv.zo")
	public String insertRv(ReviewVO rv) {
		rvService.insertService(rv);
		return "redirect:getRvList.zo";
	}

	@RequestMapping(value = "/getRv.zo")
	public String getRv(ReviewVO rv, Model model, CommentsVO cm, Model model2) {
		ReviewVO vo = rvService.getService(rv.getRv_no());
		List<CommentsVO> list = comsService.getServiceList(cm.getRv_no());
		model2.addAttribute("comsList", list);
		model.addAttribute("rv", vo);
		return "getRv";
	}
	
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("브랜드", "BRAND");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap;
	}

	@RequestMapping(value = "/getRvList.zo")
	public String getList(ReviewVO vo, Model model) {
	
		System.out.println("검색 조건: "+vo.getSearchCondition());
		System.out.println("검색 단어: "+vo.getSearchKeyword());
		
		if(vo.getSearchCondition()==null) {
			vo.setSearchCondition("BRAND");
		}
		
		if(vo.getSearchKeyword()==null) {
			vo.setSearchKeyword("");
		}
		
		List<ReviewVO> list = rvService.getServiceList(vo);
		
		model.addAttribute("rvList", list);
		
		return "getRvList";
	}

	@RequestMapping(value = "/updateRv.zo")
	public String updateRvProc(@ModelAttribute("rv") ReviewVO vo) {
	
		System.out.println(vo);
		
		rvService.updateService(vo);
		
		return "redirect:getRvList.zo";
	}
	
	@RequestMapping(value = "/deleteRv.zo")
	public String deleteRv(ReviewVO rv) {
		rvService.deleteService(rv.getRv_no());
		return "redirect:getRvList.zo";
	}
	
}
