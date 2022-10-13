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

import com.spring.proj.domain.brandmain.BrandThemeVO;
import com.spring.proj.service.brandmain.BrandThemeService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("brandTheme")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class BrandThemeController {	

	@Autowired
	BrandThemeService brandThemeService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertBrandTheme.bt")
	public String insertBrandTheme() {
		
		return "brandmain/insertBrandTheme";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertBrandTheme.bt")
	public String insertBrandTheme(BrandThemeVO brandTheme, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandThemeUpload/");
		
		MultipartFile uploadFile = brandTheme.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brandTheme.setBt_logo(fileName);
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		brandThemeService.insertService(brandTheme);
		
		System.out.println("브랜드 테마 controller=>"+ brandTheme);
		return "redirect:getBrandThemeList.bt";
	}
		
	
	@RequestMapping("/getBrandTheme.bt")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getBrandTheme(BrandThemeVO brandTheme, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("brandTheme 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		BrandThemeVO bt = brandThemeService.getService(brandTheme.getBm_no());	
		
		model.addAttribute("brandTheme", bt);
		
		return "brandmain/getBrandTheme";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("BT_FONT", "BT_FONT");
		conditionMap.put("BT_COLOR", "BT_COLOR");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getBrandThemeList.bt")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getBrandThemeList(BrandThemeVO bt, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + bt.getSearchCondition());
		System.out.println("검색 조건 : " + bt.getSearchKeyword());
		
		if(bt.getSearchCondition() == null) {
			bt.setSearchCondition("BT_FONT");
		}
		
		if(bt.getSearchKeyword() == null) {
			bt.setSearchKeyword("");
		}
		
		List<BrandThemeVO> list = brandThemeService.getServiceList(bt);

		model.addAttribute("brandThemeList", list);
				
		return "brandmain/getBrandThemeList";
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
	
	@PostMapping("/updateBrandTheme.bt")
	public String updateBrandTheme(BrandThemeVO brandTheme, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/brandThemeUpload/");
		
		MultipartFile uploadFile = brandTheme.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			brandTheme.setBt_logo(fileName);
			
			System.out.println("updateBrand Controller fileName =>"+fileName);
		}
		
		
		brandThemeService.updateService(brandTheme);
		return "redirect:getBrandThemeList.bt";
	}
	
	
	@RequestMapping("/deleteBrandTheme.bt")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteBrandTheme(BrandThemeVO brandTheme) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		brandThemeService.deleteService(brandTheme.getBm_no());
					
		return "redirect:getBrandThemeList.bt";
	}
	
	
}
