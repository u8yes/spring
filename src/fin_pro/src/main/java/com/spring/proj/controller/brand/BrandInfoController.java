package com.spring.proj.controller.brand;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.brand.BrandInfoVO;
import com.spring.proj.domain.brand.BrandMemberVO;
import com.spring.proj.service.brand.BrandInfoService;

@Controller
@SessionAttributes("brandinfo")
public class BrandInfoController {

	@Autowired
	BrandInfoService brandInfoService;

	//String bm_gender;
	
	@GetMapping("/insertBrandInfo.do")
	public String insertBrandInfo() {
	
		
		
		
		return "member/bjoin";
	}
	
	
		

	@PostMapping("/insertBrandInfo.do")
	public String insertBrandInfo(BrandInfoVO binfo, HttpSession session, HttpServletRequest request) throws IOException {
		System.out.println("==>"+binfo);

		
	
		
		
		
		
		
		brandInfoService.insertBrandInfoService(binfo);

		return "redirect:blist.do";
		//return "redirect:insertMember.do";
	}

	@RequestMapping(value = "/binfodetail.do")
	public String getBrandInfo(int bm_no, Model model) {

		// System.out.println("GetBoardController 처리.");

		BrandInfoVO vo = brandInfoService.getBrandInfoService(bm_no);

		model.addAttribute("brandmember", vo);

		return "member/bdetail";
	}
	
	


	
	//검색 조건 목록 설정
	@ModelAttribute("binfoconditionMap")  //키값
	public Map<String, String> searchBrandConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>(); 
		
		conditionMap.put("회원번호", "BM_NO");
		conditionMap.put("회원아이디", "BM_ID");
		
		return conditionMap; //밸류값
		
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "")
	public String getBrandInfoList(BrandInfoVO vo, Model model) {

		// System.out.println("글 목록 검색 처리");
		

		List<BrandInfoVO> list = brandInfoService.getBrandInfoServiceList(vo);

		model.addAttribute("brandOnfoList", list);
		
		return "member/blist";
	}

	
	
	
	
	@RequestMapping(value = "/updateBrandInfo.do")
	public String updateBrandInfo(@ModelAttribute("brandinfo") BrandInfoVO binfo) {
		// TODO Auto-generated method stub

		
		
		brandInfoService.updateBrandInfoService(binfo);
		
		return "redirect:blist.do";

	}

	

	
	@RequestMapping(value = "binfodelete.do")
	public String deleteBrandInfo(@ModelAttribute BrandInfoVO binfo) {
		// TODO Auto-generated method stub
	

		return "member/bdelete";
	}
	
	
	
	
	@RequestMapping(value = "binfodelete.do2")
	public String deleteBrandMember2(@ModelAttribute BrandInfoVO binfo) {
		
		
		brandInfoService.deleteBrandInfoService(binfo.getBm_no());

		return "redirect:blist.do";
	}
	


	
}
