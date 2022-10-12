package com.spring.proj.controller;

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

import com.spring.proj.domain.BrandVO;
import com.spring.proj.service.BrandService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("brand")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BrandController {	

	@Autowired
	BrandService brandService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBrand.do")
	public String insertBrand() {
		System.out.println("글 등록 화면 처리");
		
		return "brand/insertBrand";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBrand.do")
	public String insertBrand(BrandVO brand, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandUpload/");
		
		MultipartFile uploadFile = brand.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brand.setB_image(fileName);
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		brandService.insertService(brand);
		return "redirect:getBrandList.do";
	}
		
	
	@RequestMapping("/getBrand.do")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getBrand(BrandVO brand, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("brand 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BrandVO vo = brandService.getService(brand.getB_no());	
		
		model.addAttribute("brand", vo);
		
		return "brand/getBrand";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("회사", "B_CORP");
		conditionMap.put("설명", "B_DESC");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBrandList.do")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBrandList(BrandVO vo, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + vo.getSearchCondition());
		System.out.println("검색 조건 : " + vo.getSearchKeyword());
		
		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("B_CORP");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<BrandVO> list = brandService.getServiceList(vo);

		model.addAttribute("brandList", list);
				
		return "brand/getBrandList";
	}
	
		
	/*
	 * @RequestMapping("/updateBrand.do") // /insertBrand.do를 부르면 바로 Controller 작업
	 * 들어가라 public String updateBrandProc(@ModelAttribute("brand") BrandVO vo) {
	 * //System.out.println("글 수정 처리");
	 * 
	 * brandService.updateService(vo);
	 * 
	 * System.out.println("브랜드컨트롤 => "+vo);
	 * 
	 * return "redirect:getBrandList.do"; }
	 */
	
	@PostMapping("/updateBrand.do")
	public String updateBrand(BrandVO brand, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandUpload/");
		
		MultipartFile uploadFile = brand.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brand.setB_image(fileName);
			
			System.out.println("updateBrand Controller fileName =>"+fileName);
		}
		
		
		brandService.updateService(brand);
		return "redirect:getBrandList.do";
	}
	
	
	@RequestMapping("/deleteBrand.do")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBrand(BrandVO brand) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		brandService.deleteService(brand.getB_no());
					
		return "redirect:getBrandList.do";
	}
	
	
}
