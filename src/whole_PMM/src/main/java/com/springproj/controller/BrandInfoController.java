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

import com.springproj.biz.domain.BrandInfoVO;
import com.springproj.biz.service.BrandInfoService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("brandInfo")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BrandInfoController {	

	@Autowired
	BrandInfoService brandInfoService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBrandInfo.bi")
	public String insertBrandInfo() {
		System.out.println("글 등록 화면 처리");
		
		return "insertBrandInfo";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBrandInfo.bi")
	public String insertBrandInfo(BrandInfoVO brandInfo, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandInfoUpload/");
		
		MultipartFile uploadFile = brandInfo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brandInfo.setBi_img(fileName);
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		brandInfoService.insertService(brandInfo);
		return "redirect:getBrandInfoList.bi";
	}
		
	
	@RequestMapping("/getBrandInfo.bi")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getBrand(BrandInfoVO brandInfo, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("brandInfo 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BrandInfoVO bi = brandInfoService.getService(brandInfo.getBm_no());	
		
		model.addAttribute("brandInfo", bi);
		
		return "getBrandInfo";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("BM_NO", "BM_NO");
		conditionMap.put("BI_NO", "BI_NO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBrandInfoList.bi")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBrandInfoList(BrandInfoVO bi, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + bi.getSearchCondition());
		System.out.println("검색 조건 : " + bi.getSearchKeyword());
		
		if(bi.getSearchCondition() == null) {
			bi.setSearchCondition("BM_NO");
		}
		
		if(bi.getSearchKeyword() == null) {
			bi.setSearchKeyword("");
		}
		
		List<BrandInfoVO> list = brandInfoService.getServiceList(bi);

		model.addAttribute("brandInfoList", list);
				
		return "getBrandInfoList";
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
	
	@PostMapping("/updateBrandInfo.bi")
	public String updateBrandInfo(BrandInfoVO brandInfo, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandInfoUpload/");
		
		MultipartFile uploadFile = brandInfo.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brandInfo.setBi_img(fileName);
			
			System.out.println("updateBrand Controller fileName =>"+fileName);
		}
		
		
		brandInfoService.updateService(brandInfo);
		return "redirect:getBrandInfoList.bi";
	}
	
	
	@RequestMapping("/deleteBrandInfo.bi")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBrandInfo(BrandInfoVO brandInfo) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		brandInfoService.deleteService(brandInfo.getBm_no());
					
		return "redirect:getBrandInfoList.bi";
	}
	
	
}
