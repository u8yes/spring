package com.springproj.controller;

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

import com.springproj.biz.domain.BuyVO;
import com.springproj.biz.service.BuyService;

@Controller
@SessionAttributes("buy")
public class BuyController{
	@Autowired
	BuyService buyService;


	@GetMapping("/insertBuy.po")
	public String insertBuy(){

		
		return "adminBuy/insertBuy";
	}
	

	
	
	
	

	@PostMapping("/insertBuy.po")
	public String insertBuy(BuyVO buy, HttpSession session) throws IOException {

		buyService.insertService(buy);
		
		return "redirect:getBuyList.po";
	}
	
	@RequestMapping(value = "/getBuy.po")
	public String getBuy(BuyVO buy, Model model) {

		
		BuyVO vo = buyService.getService(buy.getPo_no());
		
		model.addAttribute("buy", vo);
		
		return "adminBuy/getBuy";
	}

	@RequestMapping(value = "/getBuyList.po")
	public String getBuyList(BuyVO vo, Model model) {

		List<BuyVO> list = buyService.getServiceList(vo);
		
		model.addAttribute("buyList", list);
		
		return "adminBuy/getBuyList";
	}
	
	
	@RequestMapping(value = "/updateBuy.po")
	public String updateBuyProc(@ModelAttribute("buy") BuyVO vo) {

		System.out.println(vo);
		
		buyService.updateService(vo);
		
		return "redirect:getBuyList.po";
	}
	
	@RequestMapping(value = "/deleteBuy.po")
	public String deleteBuy(BuyVO buy) {

		
		buyService.deleteService(buy.getPo_no());
		
		return "redirect:getBuyList.po";
	}

}
