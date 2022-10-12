package com.spring.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.AskRvVO;
import com.spring.proj.domain.AskVO;
import com.spring.proj.service.ArService;

@Controller
@SessionAttributes("ar")
public class ArController {

	@Autowired
	ArService arService;
	
//	@GetMapping("/insertAr.zo")
//	public String insertAr() {
//		return "getAsk";
//	}
	
	@PostMapping("/insertAr.zo")
	public String insertAr(AskRvVO ar, AskVO ask) {
		arService.insertService(ar);
		return "redirect:getAsk.zo?a_no="+ask.getA_no();
	}

	@RequestMapping(value = "/getAr.zo")
	public String getAr(AskRvVO ar, Model model) {
		AskRvVO vo = arService.getService(ar.getAr_no());
		
		model.addAttribute("ar", vo);
		return "board/getAsk";
	}
	
//	@ModelAttribute("conditionMap")
//	public Map<String, String> searchConditionMap() {
//		Map<String, String> conditionMap = new HashMap<String, String>();
//		
//		conditionMap.put("브랜드", "BRAND");
//		conditionMap.put("내용", "CONTENT");
//		
//		return conditionMap;
//	}

	@RequestMapping(value = "/getArList.zo")
	public String getList(AskRvVO vo, Model model) {
		
		List<AskRvVO> list = arService.getServiceList(vo.getA_no());
		
		model.addAttribute("arList", list);
		
		return "redirect:getAsk.zo?a_no="+vo.getA_no();
	}

	@RequestMapping(value = "/updateAr.zo")
	public String updateArProc(@ModelAttribute("ar") AskRvVO vo) {
	
		System.out.println(vo);
		
		arService.updateService(vo);
		
		return "redirect:getArList.zo";
	}
	
	@RequestMapping(value = "/deleteAr.zo")
	public String deleteAr(AskRvVO ar) {
		arService.deleteService(ar.getAr_no());
		return "redirect:getArList.zo";
	}
	
}
