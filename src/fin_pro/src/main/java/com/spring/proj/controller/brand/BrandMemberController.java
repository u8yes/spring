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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.proj.domain.brand.BrandMemberVO;
import com.spring.proj.domain.brandmain.BrandInfoVO;
import com.spring.proj.domain.user.UserMemberVO;
import com.spring.proj.service.brand.BrandMemberService;
import com.spring.proj.service.brandmain.BrandInfoService;

@Controller
@SessionAttributes("brandmember")
public class BrandMemberController {

	@Autowired
	BrandMemberService brandMemberService;
	
	@Autowired
	BrandInfoService brandInfoService;

	//String bm_gender;
	
	

	@RequestMapping(value="brand1.bt")
	public String toBrand1() {
	
		return "brand/brand1";
	}
	@RequestMapping(value="brand2.bt")
	public String toBrand2() {
	
		return "brand/brand2";
	}	
	@RequestMapping(value="brand3.bt")
	public String toBrand3() {
	
		return "brand/brand3";
	}	
	@RequestMapping(value="brand4.bt")
	public String toBrand4() {
	
		return "brand/brand4";
	}	
	@RequestMapping(value="brand5.bt")
	public String toBrand5() {
	
		return "brand/brand5";
	}	
	@RequestMapping(value="brand6.bt")
	public String toBrand6() {
	
		return "brand/brand1";
	}	
	
	
	
	
	@GetMapping("/insertBrandMember.do")
	public String insertBrandMember() {
	
		return "member/bjoin";
	}
	
	
	
	
		@RequestMapping(value="toBagree.do")
		public String toBagree() {
		
			return "member/signUp_brand_agree";
		}	
		
		
	@RequestMapping(value="getBrandList.do")
	public String getBrandList() {
	
		return "brand/getBrandList";
	}
	
	@PostMapping("/insertBrandMember.do")
	public String insertBrandMember(BrandInfoVO binfo ,BrandMemberVO bmember, HttpSession session, HttpServletRequest request) throws IOException {
	
		
		String um_email = request.getParameter("bm_email");
		String email = request.getParameter("bemail");
		String email2 = request.getParameter("bm_email2");
		
		if(email.equals("9")) {
			um_email = um_email+"@"+email2;
		}else {
			um_email = um_email+"@"+email;
		}
		
		bmember.setBm_email(um_email);
		
		
		String ad = request.getParameter("ad");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		
		String um_addr =ad +" "+ addr1 +" "+addr2 +" "+addr3;
		
		binfo.setBi_addr(um_addr);
		
		System.out.println("==>"+bmember);
		System.out.println("==>"+binfo);
		
		brandMemberService.insertService(bmember);
		
		/* binfo.setBm_no(bmember.getBm_no()); */
		
		/* brandInfoService.insertBrandInfoService(binfo); */

		return "redirect:getBrandList.do";
		
		
//		String um_gender = request.getParameter("bm_gender");
//		System.out.println(bm_gender);
//		
//		bmember.setBm_gender(bm_gender);
		
		// 파일 업로드 처리
		/*
		 * String fileSaveFolder =
		 * session.getServletContext().getRealPath("/MemberUpload/");
		 * System.out.println("=>" + fileSaveFolder);
		 * 
		 * MultipartFile uploadFile = member.getUploadFile();
		 * 
		 * if(!uploadFile.isEmpty()) { String fileName =
		 * uploadFile.getOriginalFilename(); uploadFile.transferTo(new
		 * File(fileSaveFolder + fileName)); }
		 */
		
		
		//return "redirect:insertMember.do";
	}

	@PostMapping("/bidCheck.do")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		
		int cnt = brandMemberService.bidCheck(id);
		return cnt;
	
	}
	
	
	
	
	@RequestMapping(value = "/bdetail.do")
	public String getBrandMember(String bm_no, Model model) {

		// System.out.println("GetBoardController 처리.");

		BrandMemberVO vo = brandMemberService.getService(bm_no);

		model.addAttribute("brandmember", vo);

		return "member/bdetail";
	}
	
	


	
	//검색 조건 목록 설정
	@ModelAttribute("bconditionMap")  //키값
	public Map<String, String> searchBrandConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>(); 
		
		conditionMap.put("회원번호", "BM_NO");
		conditionMap.put("회원아이디", "BM_ID");
		
		return conditionMap; //밸류값
		
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/adblist.do")
	public String getBrandMemberList(BrandMemberVO vo, Model model) {

		// System.out.println("글 목록 검색 처리");
		
		System.out.println("검색조건 : " +vo.getSearchBrandCondition());
		System.out.println("검색단어 : " +vo.getSearchBrandKeyword());

		if(vo.getSearchBrandCondition() == null) {
			vo.setSearchBrandCondition("BM_NO");
		}
		
		if(vo.getSearchBrandKeyword() == null) {
			vo.setSearchBrandKeyword("");
		}
		
		List<BrandMemberVO> list = brandMemberService.getServiceList(vo);

		model.addAttribute("brandMemberList", list);
		
		return "member/adminbrandlist";
	}

	
	
	
		
	//글 목록 검색 처리
//	@RequestMapping(value = "/mlist.do")
//	public String getMemberList(UserMemberVO vo, Model model) {
//
//		// System.out.println("글 목록 검색 처리");
//		
//		
//		
//		List<UserMemberVO> list = userMemberService.getServiceList(vo);
//
//		model.addAttribute("userMemberList", list);
//		
//		return "mlist";  //servlet-context ViewResolver와 연동
//	}

	
	
	@RequestMapping(value = "/updateBrandMember.do")
	public String updateBrandMember2(@ModelAttribute("brandmember") BrandMemberVO bmember) {
		// TODO Auto-generated method stub

		
		
		brandMemberService.updateService(bmember);
		
		return "redirect:blist.do";

	}

	
	
	@RequestMapping(value = "/updateBrandMember2.do")
	public String updateBrandMember(@ModelAttribute("brandmember") BrandMemberVO bmember) {
		// TODO Auto-generated method stub

		
		
		
		return "member/bedit";

	}

	
	@RequestMapping(value = "/bdelete.do")
	public String deleteBrandMember(@ModelAttribute BrandMemberVO bmember) {
		// TODO Auto-generated method stub
	

		return "member/bdelete";
	}
	
	
	
	
	@RequestMapping(value = "/bdelete2.do")
	public String deleteBrandMember2(@ModelAttribute BrandMemberVO bmember) {
		
		
		brandMemberService.deleteService(bmember.getBm_no());

		return "redirect:blist.do";
	}
	


	
}
