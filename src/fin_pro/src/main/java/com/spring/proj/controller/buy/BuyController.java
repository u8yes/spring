package com.spring.proj.controller.buy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.dao.buy.BuyDAOMybatis;
import com.spring.proj.domain.buy.BuyVO;
import com.spring.proj.service.buy.BuyService;

@Controller
@SessionAttributes("buy")
public class BuyController{
	@Autowired
	BuyService buyService;
	
	@Autowired
	private BuyDAOMybatis dao;
	
	
	@RequestMapping(value="/getBuy.sj")
	public String getBuy(BuyVO buy, Model model){
		
		
		BuyVO vo = buyService.getService(1);
		
		System.out.println("==> orderBuy() 호출"+buy+"model"+ model);
		
		 
	
		
		System.out.println("1번"+vo);
		
		
		model.addAttribute("buy", vo);
		
		return "buy/getBuy1";
	}

	
	@GetMapping(value="/gotoMain.do")
	public String main() {
		return "toMain.do";
	}
	


}
