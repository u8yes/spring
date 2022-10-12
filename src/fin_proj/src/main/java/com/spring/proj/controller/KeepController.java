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

import com.spring.proj.domain.KeepVO;
import com.spring.proj.service.KeepService;

@Controller
@SessionAttributes("keep")
public class KeepController{
	@Autowired
	KeepService keepService;


	@GetMapping("/insertKeep.sj")
	public String insertKeep(){

		
		return "buy/insertKeep";
	}

	@PostMapping("/insertKeep.sj")
	public String insertKeep(KeepVO keep, HttpSession session) throws IOException {
	
		
		keepService.insertService(keep);
		
		return "redirect:getKeepList.sj";
	}
	
	@RequestMapping(value = "/getKeep.sj")
	public String getKeep(KeepVO keep, Model model) {

		
		KeepVO vo = keepService.getService(keep.getK_no());
		
		model.addAttribute("keep", vo);
		
		return "buy/getKeep";
	}

	@RequestMapping(value = "/getKeepList.sj")
	public String getKeepList(KeepVO vo, Model model) {
	
		List<KeepVO> list = keepService.getServiceList(vo);
		
		model.addAttribute("keepList", list);
		
		return "buy/getKeepList";
	}
		
	@RequestMapping(value = "/updateKeep.sj")
	public String updateKeepProc(@ModelAttribute("keep") KeepVO vo) {

		System.out.println(vo);
		
		keepService.updateService(vo);
		
		return "redirect:getKeepList.sj";
	}
	
	@RequestMapping(value = "/deleteKeep.sj")
	public String deleteKeep(KeepVO keep) {

		
		keepService.deleteService(keep.getK_no());
		
		return "redirect:getKeepList.sj";
	}

}
