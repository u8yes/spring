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

import com.springproj.biz.domain.ProductBuyVO;
import com.springproj.biz.service.ProductBuyService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("productBuy")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class ProductBuyController {	

	@Autowired
	ProductBuyService productBuyService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertProductBuy.o")
	public String insertProductBuy() {
		System.out.println("글 등록 화면 처리");
		
		return "adminProductBuy/insertProductBuy";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertProductBuy.o")
	public String insertProductBuy(ProductBuyVO productBuy, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/productBuyUpload/");
		
		MultipartFile uploadFile = productBuy.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		productBuyService.insertService(productBuy);
		System.out.println("컨트롤 insertCode=>" + productBuy);
		return "redirect:getProductBuyList.o";
	}
		
	
	@RequestMapping("/getProductBuy.o")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getProductBuy(ProductBuyVO productBuy, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("code 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		ProductBuyVO o = productBuyService.getService(productBuy.getO_odno());	
		
		model.addAttribute("productBuy", o);
		
		return "adminProductBuy/getProductBuy";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("주문상품번호", "O_ODNO");
		conditionMap.put("상품코드번호", "P_PNO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getProductBuyList.o")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getProductBuyList(ProductBuyVO o, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + o.getSearchCondition());
		System.out.println("검색 조건 : " + o.getSearchKeyword());
		
		if(o.getSearchCondition() == null) {
			o.setSearchCondition("O_ODNO");
		}
		
		if(o.getSearchKeyword() == null) {
			o.setSearchKeyword("");
		}
		
		List<ProductBuyVO> list = productBuyService.getServiceList(o);

		model.addAttribute("productBuyList", list);
		System.out.println("getProductBuyList => " + list);
		return "adminProductBuy/getProductBuyList";
	}
	
		

	
	@PostMapping("/updateProductBuy.o")
	public String updateProductBuy(ProductBuyVO productBuy, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/productBuyUpload/");
		
		MultipartFile uploadFile = productBuy.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("updateCode Controller fileName =>"+fileName);
		}
		
		
		productBuyService.updateService(productBuy);
		System.out.println("updateProductBuy Controller =>" + productBuy);

		return "redirect:getProductBuyList.o";
	}
	
	
	@RequestMapping("/deleteProductBuy.o")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteProductBuy(ProductBuyVO productBuy) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		productBuyService.deleteService(productBuy.getO_odno());
					
		return "redirect:getProductBuyList.o";
	}
	
	
}
