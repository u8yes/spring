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

import com.spring.proj.domain.DeliveryVO;
import com.spring.proj.service.DeliveryService;

@Controller
@SessionAttributes("delivery")
public class DeliveryController{
	@Autowired
	DeliveryService deliveryService;


	@GetMapping("/insertDelivery.sj")
	public String insertDelivery(){

		
		return "buy/insertDelivery";
	}
	


	@PostMapping("/insertDelivery.sj")
	public String insertDelivery(DeliveryVO delivery, HttpSession session) throws IOException {

		
		deliveryService.insertService(delivery);
		
		return "redirect:getDeliveryList.sj";
	}
	
	@RequestMapping(value = "/getDelivery.sj")
	public String getDelivery(DeliveryVO delivery, Model model) {

		
		DeliveryVO vo = deliveryService.getService(delivery.getD_dno());
		
		model.addAttribute("delivery", vo);
		
		return "buy/getDelivery";
	}
	
	
	@RequestMapping(value = "/getDeliveryList.sj")
	public String getDeliveryList(DeliveryVO vo, Model model) {
	
		List<DeliveryVO> list = deliveryService.getServiceList(vo);
		
		model.addAttribute("deliveryList", list);
		
		return "buy/getDeliveryList";
	}
	
	
	@RequestMapping(value = "/updateDelivery.sj")
	public String updateDeliveryProc(@ModelAttribute("delivery") DeliveryVO vo) {
		System.out.println(vo);
		
		deliveryService.updateService(vo);
		
		return "redirect:getDeliveryList.sj";
	}
	
	@RequestMapping(value = "/deleteDelivery.sj")
	public String deleteDelivery(DeliveryVO delivery) {

		
		deliveryService.deleteService(delivery.getD_dno());
		
		return "redirect:getDeliveryList.sj";
	}

}
