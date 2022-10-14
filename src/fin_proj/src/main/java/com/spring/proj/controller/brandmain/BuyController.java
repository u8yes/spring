package com.spring.proj.controller.brandmain;

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

import com.spring.proj.domain.brandmain.BuyVO;
import com.spring.proj.service.brandmain.BuyService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("buy")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BuyController {	

	@Autowired
	BuyService buyService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBuy.po")
	public String insertBuy() {
		System.out.println("글 등록 화면 처리");
		
		return "brandmain/insertBuy";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBuy.po")
	public String insertBuy(BuyVO buy, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/buyUpload/");
		
		MultipartFile uploadFile = buy.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		buyService.insertService(buy);
		System.out.println("컨트롤 insertCode=>" + buy);
		return "redirect:getBuyList.po";
	}
		
	
	@RequestMapping("/getBuy.po")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getCode(BuyVO buy, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("code 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BuyVO po = buyService.getService(buy.getPo_no());	
		
		model.addAttribute("buy", po);
		
		return "brandmain/getBuy";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("주문번호", "PO_NO");
		conditionMap.put("주문상품번호", "O_ODNO");
		
		return conditionMap;
	}
		
	
	// 글 목록 검색 처리
	@RequestMapping("/getBuyList.po")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBuyList(BuyVO po, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + po.getSearchCondition());
		System.out.println("검색 조건 : " + po.getSearchKeyword());
		
		if(po.getSearchCondition() == null) {
			po.setSearchCondition("PO_NO");
		}
		
		if(po.getSearchKeyword() == null) {
			po.setSearchKeyword("");
		}
		
		List<BuyVO> list = buyService.getServiceList(po);

		model.addAttribute("buyList", list);
				
		return "brandmain/getBuyList";
	}
	
	
	
	@PostMapping("/updateBuy.po")
	public String updateBuy(BuyVO buy, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/buyUpload/");
		
		MultipartFile uploadFile = buy.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("updateBuy Controller fileName =>"+fileName);
		}
		
		
		buyService.updateService(buy);
		System.out.println("updateBuy Controller =>"+buy);

		return "redirect:getBuyList.po";
	}
	
	
	@RequestMapping("/deleteBuy.po")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBuy(BuyVO buy) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		buyService.deleteService(buy.getPo_no());
					
		return "redirect:getBuyList.po";
	}
	
	
}
