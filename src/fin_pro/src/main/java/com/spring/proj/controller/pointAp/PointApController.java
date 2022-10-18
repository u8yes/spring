package com.spring.proj.controller.pointAp;

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

import com.spring.proj.domain.pointAp.PointApVO;
import com.spring.proj.service.pointAp.PointApService;

@Controller
@SessionAttributes("pointAp")
public class PointApController{
	@Autowired
	PointApService pointApService;


	@GetMapping("/insertPointAp.sj")
	public String insertPoint(){

		System.out.println();
		return "buy/insertPointAp";
	}
	

	
	
	

	@PostMapping("/insertPointAp.sj")
	public String insertPointAp(PointApVO pointAp, HttpSession session) throws IOException {
		
		
		pointApService.insertService(pointAp);
		
		return "redirect:getPointListAp.sj";
	}
	
	@RequestMapping(value = "/getPointAp.sj")
	public String getPointAp(PointApVO pointAp, Model model) {

		
		PointApVO vo = pointApService.getService(pointAp.getPa_no());
		
		model.addAttribute("pointAp", vo);
		
		return "buy/getPointAp";
	}
	


	@RequestMapping(value = "/getPointApList.sj")
	public String getPointApList(PointApVO vo, Model model) {

		List<PointApVO> list = pointApService.getServiceList(vo);
		
		model.addAttribute("pointApList", list);
		
		return "buy/getPointApList";
	}
	
	
	@RequestMapping(value = "/updatePointAp.sj")
	public String updatePointApProc(@ModelAttribute("pointAp") PointApVO vo) {

		System.out.println(vo);
		
		pointApService.updateService(vo);
		
		return "redirect:getPointList.sj";
	}
	
	@RequestMapping(value = "/deletePointAp.sj")
	public String deletePointAp(PointApVO pointAp) {

		
		pointApService.deleteService(pointAp.getPa_no());
		
		return "redirect:getPointApList.sj";
	}

}
