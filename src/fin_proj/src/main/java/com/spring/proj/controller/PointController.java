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

import com.spring.proj.domain.PointVO;
import com.spring.proj.service.PointService;

@Controller
@SessionAttributes("point")
public class PointController{
	@Autowired
	PointService pointService;


	@GetMapping("/insertPoint.sj")
	public String insertPoint(){

		
		return "buy/insertPoint";
	}
	

	
	
	

	@PostMapping("/insertPoint.sj")
	public String insertPoint(PointVO point, HttpSession session) throws IOException {
		
		
		pointService.insertService(point);
		
		return "redirect:getPointList.sj";
	}
	
	@RequestMapping(value = "/getPoint.sj")
	public String getPoint(PointVO point, Model model) {

		
		PointVO vo = pointService.getService(point.getPp_payno());
		
		model.addAttribute("point", vo);
		
		return "buy/getPoint";
	}
	


	@RequestMapping(value = "/getPointList.sj")
	public String getPointList(PointVO vo, Model model) {

		List<PointVO> list = pointService.getServiceList(vo);
		
		model.addAttribute("pointList", list);
		
		return "buy/getPointList";
	}
	
	
	@RequestMapping(value = "/updatePoint.sj")
	public String updatePointProc(@ModelAttribute("point") PointVO vo) {

		System.out.println(vo);
		
		pointService.updateService(vo);
		
		return "redirect:getPointList.sj";
	}
	
	@RequestMapping(value = "/deletePoint.sj")
	public String deletePoint(PointVO point) {

		
		pointService.deleteService(point.getPp_payno());
		
		return "redirect:getPointList.sj";
	}

}
