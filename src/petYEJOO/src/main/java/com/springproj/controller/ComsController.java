package com.springproj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springproj.biz.domain.CommentsVO;
import com.springproj.biz.domain.ReviewVO;
import com.springproj.biz.service.ComsService;

@Controller
public class ComsController {

	@Autowired
	ComsService comsService;
	
	@PostMapping("/insertComs.zo")
	public String insertComs(CommentsVO cm, ReviewVO rv) {
		comsService.insertService(cm);
		return "redirect:getRv.zo?rv_no="+rv.getRv_no();
	}
	
	@RequestMapping(value = "/getComsList.zo")
	public String getList(CommentsVO vo, Model model) {
		List<CommentsVO> list = comsService.getServiceList(vo.getRv_no());
		model.addAttribute("comsList", list);
		return "redirect:getRv.zo?rv_no="+vo.getRv_no();
	}
	
	@RequestMapping(value = "/updateComs.zo", method = RequestMethod.POST)
	public String updateComsProc(CommentsVO vo, ReviewVO rv) {
		System.out.println(vo);
		comsService.updateService(vo);
		return "redirect:getRv.zo?rv_no="+rv.getRv_no();
	}
	
	@RequestMapping(value = "/deleteComs.zo")
	public String deleteComs(CommentsVO cm, ReviewVO rv) {
		comsService.deleteService(cm.getCm_no());
		return "redirect:getRv.zo?rv_no="+rv.getRv_no();
	}
	
}
