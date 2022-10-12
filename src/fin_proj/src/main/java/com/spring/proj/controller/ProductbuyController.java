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

import com.spring.proj.domain.ProductbuyVO;
import com.spring.proj.service.ProductbuyService;

@Controller
@SessionAttributes("productbuy")
public class ProductbuyController{
	@Autowired
	ProductbuyService productbuyService;


	@GetMapping("/insertProductbuy.sj")
	public String insertProductbuy(){

		
		return "buy/insertProductbuy";
	}
	

	
	
	
	

	@PostMapping("/insertProductbuy.do")
	public String insertProductbuy(ProductbuyVO productbuy, HttpSession session) throws IOException {

		productbuyService.insertService(productbuy);
		
		return "redirect:getProductbuyList.do";
	}
	
	@RequestMapping(value = "/getProductbuy.do")
	public String getProductbuy(ProductbuyVO productbuy, Model model) {

		
		ProductbuyVO vo = productbuyService.getService(productbuy.getO_odno());
		
		model.addAttribute("productbuy", vo);
		
		return "buy/getProductbuy";
	}

	@RequestMapping(value = "/getProductbuyList.do")
	public String getProductbuyList(ProductbuyVO vo, Model model) {

		List<ProductbuyVO> list = productbuyService.getServiceList(vo);
		
		model.addAttribute("productbuyList", list);
		
		return "buy/getProductbuyList";
	}
	
	
	@RequestMapping(value = "/updateProductbuy.do")
	public String updateProductbuyProc(@ModelAttribute("productbuy") ProductbuyVO vo) {

		System.out.println(vo);
		
		productbuyService.updateService(vo);
		
		return "redirect:getProductbuyList.do";
	}
	
	@RequestMapping(value = "/deleteProductbuy.do")
	public String deleteProductbuy(ProductbuyVO productbuy) {

		
		productbuyService.deleteService(productbuy.getO_odno());
		
		return "redirect:getProductbuyList.do";
	}

}
