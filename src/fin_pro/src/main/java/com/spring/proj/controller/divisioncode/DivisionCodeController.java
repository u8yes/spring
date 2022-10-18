package com.spring.proj.controller.divisioncode;

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

import com.spring.proj.domain.divisioncode.DivisionCodeVO;
import com.spring.proj.service.divisioncode.DivisionCodeService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("divisionCode")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class DivisionCodeController {	

	@Autowired
	DivisionCodeService divisionCodeService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertDivisionCode.dc")
	public String insertDivisionCode() {
		System.out.println("글 등록 화면 처리");
		
		return "code/insertDivisionCode";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertDivisionCode.dc")
	public String insertDivisionCode(DivisionCodeVO divisionCode, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/divisionCodeUpload/");
		
		MultipartFile uploadFile = divisionCode.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		divisionCodeService.insertService(divisionCode);
		System.out.println("컨트롤 insertCode=>" + divisionCode);
		return "redirect:getDivisionCodeList.dc";
	}
		
	
	@RequestMapping("/getDivisionCode.dc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getDivisionCode(DivisionCodeVO divisionCode, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("code 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		DivisionCodeVO dc = divisionCodeService.getService(divisionCode.getDc_pcno());	
		
		model.addAttribute("divisionCode", dc);
		
		return "code/getDivisionCode";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("DC_PCNO", "DC_PCNO");
		conditionMap.put("DC_NAME", "DC_NAME");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getDivisionCodeList.dc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getDivisionCodeList(DivisionCodeVO dc, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + dc.getSearchCondition());
		System.out.println("검색 조건 : " + dc.getSearchKeyword());
		
		if(dc.getSearchCondition() == null) {
			dc.setSearchCondition("DC_PCNO");
		}
		
		if(dc.getSearchKeyword() == null) {
			dc.setSearchKeyword("");
		}
		
		List<DivisionCodeVO> list = divisionCodeService.getServiceList(dc);

		model.addAttribute("divisionCodeList", list);
				
		return "code/getDivisionCodeList";
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
	
	@PostMapping("/updateDivisionCode.dc")
	public String updateDivisionCode(DivisionCodeVO divisionCode, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/divisionCodeUpload/");
		
		MultipartFile uploadFile = divisionCode.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("updateCode Controller fileName =>"+fileName);
		}
		
		
		divisionCodeService.updateService(divisionCode);
		System.out.println("updateDivisionCode controller => "+divisionCode );
		return "redirect:getDivisionCodeList.dc";
	}
	
	
	@RequestMapping("/deleteDivisionCode.dc")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteDivisionCode(DivisionCodeVO divisionCode) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		divisionCodeService.deleteService(divisionCode.getDc_pcno());
					
		return "redirect:getDivisionCodeList.dc";
	}
	
	
}
