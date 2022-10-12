package com.springproj.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.springproj.biz.domain.DeliveryVO;
import com.springproj.biz.service.DeliveryService;

@Controller
@SessionAttributes("delivery")
public class DeliveryController{
	@Autowired
	DeliveryService deliveryService;


	@GetMapping("/insertDelivery.d")
	public String insertDelivery(){

		
		return "adminProductBuy/insertDelivery";
	}
	


	@PostMapping("/insertDelivery.d")
	public String insertDelivery(DeliveryVO delivery, HttpSession session) throws IOException {

		
		deliveryService.insertService(delivery);
		
		return "redirect:getDeliveryList.d";
	}
	
	@RequestMapping(value = "/getDelivery.d")
	public String getDelivery(DeliveryVO delivery, Model model) {

		
		DeliveryVO vo = deliveryService.getService(delivery.getD_dno());
		
		model.addAttribute("delivery", vo);
		
		return "adminProductBuy/getDelivery";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("D_DNO", "D_DNO");
		conditionMap.put("D_CPNAME", "D_CPNAME");
		
		return conditionMap;
	}
	
	
	@RequestMapping(value = "/getDeliveryList.d")
	public String getDeliveryList(DeliveryVO d, Model model) {
	
		System.out.println("검색 조건 : " + d.getSearchCondition());
		System.out.println("검색 조건 : " + d.getSearchKeyword());
		
		if(d.getSearchCondition() == null) {
			d.setSearchCondition("D_DNO");
		}
		
		if(d.getSearchKeyword() == null) {
			d.setSearchKeyword("");
		}
		
		List<DeliveryVO> list = deliveryService.getServiceList(d);
		
		model.addAttribute("deliveryList", list);
		
		return "adminProductBuy/getDeliveryList";
	}
	
	
	@RequestMapping(value = "/updateDelivery.d")
	public String updateDelivery(DeliveryVO delivery, HttpSession session) throws IOException{
				
		/* //파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/deliveryUpload/");
		
		MultipartFile uploadFile = delivery.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("updateCode Controller fileName =>"+fileName);
		}
		*/
		
		deliveryService.updateService(delivery);
		
		System.out.println("updateDelivery controller => " + delivery);
		return "redirect:getDeliveryList.d";
	}
	
	@RequestMapping(value = "/deleteDelivery.d")
	public String deleteDelivery(DeliveryVO delivery) {

		
		deliveryService.deleteService(delivery.getD_dno());
		
		return "redirect:getDeliveryList.d";
	}

}
