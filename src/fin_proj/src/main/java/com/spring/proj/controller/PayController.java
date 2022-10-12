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

import com.spring.proj.domain.PayVO;
import com.spring.proj.service.PayService;

@Controller
@SessionAttributes("pay")
public class PayController{
	@Autowired
	PayService payService;


	@GetMapping("/insertPay.sj")
	public String insertPay(){
		
		return "buy/insertPay";
	}
	

	
	
	
	

	@PostMapping("/insertPay.sj")
	public String insertPay(PayVO pay, HttpSession session) throws IOException {

		payService.insertService(pay);
		
		return "redirect:getPayList.sj";
	}

	@RequestMapping(value = "/getPay.sj")
	public String getPay(PayVO pay, Model model) {

		
		PayVO vo = payService.getService(pay.getOb_payno());
		
		model.addAttribute("pay", vo);
		
		return "buy/getPay";
	}

	@RequestMapping(value = "/getPayList.sj")
	public String getPayList(PayVO vo, Model model) {
		
		List<PayVO> list = payService.getServiceList(vo);
		
		model.addAttribute("payList", list);
		
		return "buy/getPayList";
	}
	
	
	@RequestMapping(value = "/updatePay.sj")
	public String updatePayProc(@ModelAttribute("pay") PayVO vo) {

		System.out.println(vo);
		
		payService.updateService(vo);
		
		return "redirect:getPayList.sj";
	}
	
	@RequestMapping(value = "/deletePay.sj")
	public String deletePay(PayVO pay) {

		
		payService.deleteService(pay.getOb_payno());
		
		return "redirect:getPayList.sk";
	}

}
