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

import com.spring.proj.domain.BuyVO;
import com.spring.proj.service.BuyService;

@Controller
@SessionAttributes("buy")
public class BuyController{
	@Autowired
	BuyService buyService;


	@GetMapping("/insertBuy.sj")
	public String insertBuy(){

		
		return "buy/insertBuy";
	}
	

	
	
	
	

	@PostMapping("/insertBuy.sj")
	public String insertBuy(BuyVO buy, HttpSession session) throws IOException {

		buyService.insertService(buy);
		
		return "redirect:getBuyList.sj";
	}
	
	@RequestMapping(value = "/getBuy.sj")
	public String getBuy(BuyVO buy, Model model) {

		
		BuyVO vo = buyService.getService(buy.getPo_no());
		
		model.addAttribute("buy", vo);
		
		return "buy/getBuy";
	}

	@RequestMapping(value = "/getBuyList.sj")
	public String getBuyList(BuyVO vo, Model model) {

		List<BuyVO> list = buyService.getServiceList(vo);
		
		model.addAttribute("buyList", list);
		
		return "buy/getBuyList";
	}
	
	
	@RequestMapping(value = "/updateBuy.sj")
	public String updateBuyProc(@ModelAttribute("buy") BuyVO vo) {

		System.out.println(vo);
		
		buyService.updateService(vo);
		
		return "redirect:getBuyList.sj";
	}
	
	@RequestMapping(value = "/deleteBuy.sj")
	public String deleteBuy(BuyVO buy) {

		
		buyService.deleteService(buy.getPo_no());
		
		return "redirect:getBuyList.sj";
	}

}
