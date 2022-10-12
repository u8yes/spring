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

import com.spring.proj.domain.BrandCheckVO;
import com.spring.proj.service.BrandCheckService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("brandCheck")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BrandCheckController {	

	@Autowired
	BrandCheckService brandCheckService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBrandCheck.bc")
	public String insertBrandCheck() {
		System.out.println("글 등록 화면 처리");
		
		return "brand/insertBrandCheck";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBrandCheck.bc")
	public String insertBrandCheck(BrandCheckVO brandCheck, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandCheckUpload/");
		
		MultipartFile uploadFile = brandCheck.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		brandCheckService.insertService(brandCheck);
		return "redirect:getBrandCheckList.bc";
	}
		
	
	@RequestMapping("/getBrandCheck.bc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getBrandCheck(BrandCheckVO brandCheck, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("brandCheck 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BrandCheckVO bc = brandCheckService.getService(brandCheck.getAb_no());	
		
		model.addAttribute("brandCheck", bc);
		
		return "brand/getBrandCheck";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("입점문의", "AB_NO");
		conditionMap.put("브랜드번호", "BM_NO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBrandCheckList.bc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBrandCheckList(BrandCheckVO bc, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + bc.getSearchCondition());
		System.out.println("검색 조건 : " + bc.getSearchKeyword());
		
		if(bc.getSearchCondition() == null) {
			bc.setSearchCondition("AB_NO");
		}
		
		if(bc.getSearchKeyword() == null) {
			bc.setSearchKeyword("");
		}
		
		List<BrandCheckVO> list = brandCheckService.getServiceList(bc);

		model.addAttribute("brandCheckList", list);
				
		return "brand/getBrandCheckList";
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
	
	@PostMapping("/updateBrandCheck.bc")
	public String updateBrandCheck(BrandCheckVO brandCheck, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandCheckUpload/");
		
		MultipartFile uploadFile = brandCheck.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		   
			System.out.println("updateBrand Controller fileName =>"+fileName);
		}
		
		
		brandCheckService.updateService(brandCheck);
		return "redirect:getBrandCheckList.bc";
	}
	
	
	@RequestMapping("/deleteBrandCheck.bc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBrandCheck(BrandCheckVO brandCheck) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		brandCheckService.deleteService(brandCheck.getAb_no());
					
		return "redirect:getBrandCheckList.bc";
	}
	
	
}
