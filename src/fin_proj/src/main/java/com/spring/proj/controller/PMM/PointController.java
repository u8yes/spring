package com.spring.proj.controller.PMM;

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

import com.spring.proj.domain.PMM.PointVO;
import com.spring.proj.service.PMM.PointService;

@Controller 
//@SessionAttributes("Point") 
public class PointController {

	@Autowired
	PointService pointService;
	
	@GetMapping("/insertPoint.do")
	public String insertPoint() {
		System.out.println("InsertPointController 처리");

		return "PMM/insertPoint";
	}
	
	@PostMapping("/insertPoint.do")
	public String insertPoint(PointVO point, HttpSession session) throws IOException {
		System.out.println("포인트 등록 처리");
		
		pointService.insertService(point);  
		return "redirect:getPointList.do";

	}
	
	@RequestMapping(value = "/getPoint.do")
	public String getBoard(PointVO point, Model model){
		System.out.println("getPointController 처리.");
		
		PointVO vo = pointService.getService(point.getPp_payno());
		
		model.addAttribute("point",vo);
		
		return "PMM/getPoint";
	}
	
	@RequestMapping(value = "/getPointList.do")
	public String getPointList(PointVO vo, Model model){
		
		List<PointVO> list =pointService.getServiceList(vo);
		
		model.addAttribute("pointList",list);
		
		return "PMM/getPointList";
	}
	
	
	@RequestMapping(value = "/updatePoint.do")
	public String updatePoint(@ModelAttribute("Point") PointVO vo) { 
		System.out.println("포인트 수정 처리");
	
		pointService.updateService(vo);
		
		return "redirect:getPointList.do";
		
	}
	
	@RequestMapping(value = "/deletePoint.do")
	public String deletePoint(PointVO point) {
		System.out.println("포인트 삭제 처리");
		
		pointService.deleteService(point.getPp_payno());
		
		return "redirect:getPointList.do";
		
	}

}
