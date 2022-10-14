package com.spring.proj.controller.md;

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

import com.spring.proj.domain.md.MdVO;
import com.spring.proj.service.md.MdService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("md")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class MdController {	

	@Autowired
	MdService mdService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertMd.md")
	public String mdBrand() {
		System.out.println("글 등록 화면 처리");
		
		return "code/insertMd";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertMd.md")
	public String insertMd(MdVO md, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/mdUpload/");
		
		MultipartFile uploadFile = md.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		mdService.insertService(md);
		return "redirect:getMdList.md";
	}
		
	
	@RequestMapping("/getMd.md")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getMd(MdVO md, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("brand 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		md = mdService.getService(md.getMd_no());	
		
		model.addAttribute("md", md);
		
		return "code/getMd";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("회사", "P_PNO");
		conditionMap.put("설명", "BM_NO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getMdList.md")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getMdList(MdVO md, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + md.getSearchCondition());
		System.out.println("검색 조건 : " + md.getSearchKeyword());
		
		if(md.getSearchCondition() == null) {
			md.setSearchCondition("P_PNO");
		}
		
		if(md.getSearchKeyword() == null) {
			md.setSearchKeyword("");
		}
		
		List<MdVO> list = mdService.getServiceList(md);

		model.addAttribute("mdList", list);
				
		return "code/getMdList";
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
	
	@PostMapping("/updateMd.md")
	public String updateMd(MdVO md, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/mdUpload/");
		
		MultipartFile uploadFile = md.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			
			System.out.println("updateMd Controller fileName =>"+fileName);
		}
		
		
		mdService.updateService(md);
		System.out.println("MD컨트롤 => "+ md);
		return "redirect:getMdList.md";
	}
	
	
	@RequestMapping("/deleteMd.md")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteMd(MdVO md) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		mdService.deleteService(md.getMd_no());
					
		return "redirect:getMdList.md";
	}
	
	
}
