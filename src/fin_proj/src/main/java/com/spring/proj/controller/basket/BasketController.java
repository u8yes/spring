package com.spring.proj.controller.basket;

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

import com.spring.proj.domain.basket.BasketVO;
import com.spring.proj.service.basket.BasketService;



@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("basket")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BasketController {	

	@Autowired
	BasketService basketService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBasket.ba")
	public String insertBasket() {
		System.out.println("글 등록 화면 처리");
		
		return "basket/insertBasket";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBasket.ba")
	public String insertBasket(BasketVO basket, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		/*
		 * //파일 업로드 처리 String fileSaveFolder =
		 * session.getServletContext().getRealPath("/basketUpload/");
		 * 
		 * MultipartFile uploadFile = basket.getUploadFile();
		 * 
		 * if(!uploadFile.isEmpty()) { String fileName =
		 * uploadFile.getOriginalFilename(); uploadFile.transferTo(new
		 * File(fileSaveFolder + fileName));
		 * 
		 * 
		 * System.out.println("fileName =>"+fileName); }
		 */
		
		
		basketService.insertService(basket);
		System.out.println("컨트롤 insertBasket=>" + basket);
		return "redirect:getBasketList.ba";
	}
		
	
	@RequestMapping("/getBasket.ba")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getBasket(BasketVO basket, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("basket 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BasketVO ba = basketService.getService(basket.getS_no());	
		
		model.addAttribute("basket", ba);
		
		return "basket/getBasket";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("S_NO", "S_NO");
		conditionMap.put("UM_NO", "UM_NO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBasketList.ba")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBasketList(BasketVO ba, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + ba.getSearchCondition());
		System.out.println("검색 조건 : " + ba.getSearchKeyword());
		
		if(ba.getSearchCondition() == null) {
			ba.setSearchCondition("S_NO");
		}
		
		if(ba.getSearchKeyword() == null) {
			ba.setSearchKeyword("");
		}
		
		List<BasketVO> list = basketService.getServiceList(ba);

		model.addAttribute("basketList", list);
				
		return "basket/getBasketList";
	}
	
	
	
	@PostMapping("/updateBasket.ba")
	public String updateBasket(BasketVO basket, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
				
		basketService.updateService(basket);
		System.out.println("updateBasket Controller =>"+basket);

		return "redirect:getBasketList.ba";
	}
	
	
	@RequestMapping("/deleteBasket.ba")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBasket(BasketVO basket) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		basketService.deleteService(basket.getS_no());
					
		return "redirect:getBasketList.ba";
	}
	
	
}
