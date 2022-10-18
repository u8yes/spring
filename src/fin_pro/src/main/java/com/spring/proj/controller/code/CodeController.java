package com.spring.proj.controller.code;

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

import com.spring.proj.domain.code.CodeVO;
import com.spring.proj.service.code.CodeService;

@Controller		//  implements Controller 삭제하면서 Controller 사용가능해짐.
@SessionAttributes("code")	// Brand라는 이름으로 모델에 저장하는 순간 session에 같이 저장해줌.
public class CodeController {	

	@Autowired
	CodeService codeService;
		
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.GET)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@GetMapping("/insertCode.co")
	public String insertCode() {
		System.out.println("글 등록 화면 처리");
		
		return "code/insertCode";
	}
	
	
	//@RequestMapping(value = "/insertBrand.do", method = RequestMethod.POST)	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	@PostMapping("/insertCode.co")
	public String insertCode(CodeVO code, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/codeUpload/");
		
		MultipartFile uploadFile = code.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("fileName =>"+fileName);
		}
		
		
		codeService.insertService(code);
		System.out.println("컨트롤 insertCode=>" + code);
		return "redirect:getCodeList.co";
	}
		
	
	@RequestMapping("/getCode.co")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String getCode(CodeVO code, Model model) {	// command 객체를 Spring에서 만들어줘서 Brand, model 구분해서 따로 작업해줄 수가 있다.
		System.out.println("code 상세페이지 처리.");	// 혹시나 모를 문제발생을 대비하기 위해 출력 Check!! Debugging 
		
		CodeVO co = codeService.getService(code.getP_pno());	
		
		model.addAttribute("code", co);
		
		return "code/getCode";
	}
	
	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")	// conditionMap가 Key역할을 해줌, return conditionMap가 Value 역할을 해줌.
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		
		conditionMap.put("P_PNO", "P_PNO");
		conditionMap.put("DC_PCNO", "DC_PCNO");
		
		return conditionMap;
	}
	
	// 글 목록 검색 처리
	@RequestMapping("/getCodeList.co")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	// value는 전달되어지는 값
	public String getCodeList(CodeVO co, Model model) {	
		//System.out.println("글 목록 검색 처리");
		
		System.out.println("검색 조건 : " + co.getSearchCondition());
		System.out.println("검색 조건 : " + co.getSearchKeyword());
		
		if(co.getSearchCondition() == null) {
			co.setSearchCondition("P_PNO");
		}
		
		if(co.getSearchKeyword() == null) {
			co.setSearchKeyword("");
		}
		
		List<CodeVO> list = codeService.getServiceList(co);

		model.addAttribute("codeList", list);
				
		return "code/getCodeList";
	}
	
	
	
	@PostMapping("/updateCode.co")
	public String updateCode(CodeVO code, HttpSession session) throws IOException{
		//System.out.println("글 등록 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/codeUpload/");
		
		MultipartFile uploadFile = code.getUploadFile();
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(fileSaveFolder + fileName));
		    
			
			System.out.println("updateCode Controller fileName =>"+fileName);
		}
		
		
		codeService.updateService(code);
		System.out.println("updateCode Controller =>"+code);

		return "redirect:getCodeList.co";
	}
	
	
	@RequestMapping("/deleteCode.co")	// /insertBrand.do를 부르면 바로 Controller 작업 들어가라
	public String deleteCode(CodeVO code) {
		//System.out.println("Brand.getSeq("+Brand.getSeq()+")");
				
		codeService.deleteService(code.getP_pno());
					
		return "redirect:getCodeList.co";
	}
	
	
}
