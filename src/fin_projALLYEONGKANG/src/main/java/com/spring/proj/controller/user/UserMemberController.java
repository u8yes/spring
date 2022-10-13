package com.spring.proj.controller.user;

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

import com.spring.proj.domain.user.UserMemberVO;
import com.spring.proj.service.user.UserMemberService;

@Controller
@SessionAttributes("usermember")
public class UserMemberController {

	@Autowired
	UserMemberService userMemberService;

	String um_gender;
	
	
		@RequestMapping(value="commulist.do")
		public String commulist() {
			
			
			return "member/getCommuList";
			
		}
		
	@RequestMapping(value="adlist.do")
	public String adlist(UserMemberVO vo, Model model) {
		
		System.out.println("검색조건 : " +vo.getSearchCondition());
		System.out.println("검색단어 : " +vo.getSearchKeyword());

		if(vo.getSearchCondition() == null) {
			vo.setSearchCondition("UM_NO");
		}
		
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		
		List<UserMemberVO> list = userMemberService.getServiceList(vo);

		System.out.println(vo);
		
		model.addAttribute("userMemberList", list);
		
		
		
		
		
		return "member/adminmemberlist";
		
	}
	
	
	@RequestMapping(value = "/mdetail.do")
	public String getMember(String um_no, Model model) {

		// System.out.println("GetBoardController 처리.");

		UserMemberVO vo = userMemberService.getService(um_no);

		model.addAttribute("member", vo);

		return "member/mdetail";
	}
	
	
	
	
	@RequestMapping(value="entryinfo.do")
	public String entryinfo() {
		
		
		return "member/entryinfo";
		
	}
	
	//아이디 중복체크
	@PostMapping("/idCheck.do")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id) {
		
		int cnt = userMemberService.idCheck(id);
		return cnt;
	
	}
	
	
	//이메일 중복체크
	@PostMapping("/emailCheck.do")
	@ResponseBody
	public int emailCheck(@RequestParam("um_email") String um_email) {
		
		int cnt = userMemberService.emailCheck(um_email);
		
		return cnt;
	
	}
	
	
	@GetMapping("/insertUserMember.do")
	public String insertMember() {
		// TODO Auto-generated method stub

		// System.out.println("insertBoardController");

		return "member/mjoin";
	}
	
	
	
	@RequestMapping(value="/toMain.do")
	public String toMain() {
		// TODO Auto-generated method stub

		// System.out.println("insertBoardController");

		return "main";
	}
	
	
	@RequestMapping(value = "/toMagree.do")
	public String toMAgree() {
		// TODO Auto-generated method stub

		// System.out.println("insertBoardController");

		return "member/signUp_user_agree";
	}
	

	
	@PostMapping("/insertUserMember.do")
	public String insertMember(UserMemberVO member, HttpSession session, HttpServletRequest request) throws IOException {
		
		String um_email = request.getParameter("um_email");
		String email = request.getParameter("email");
		String email2 = request.getParameter("um_email2");
		
		if(email.equals("9")) {
			um_email = um_email+"@"+email2;
		}else {
			um_email = um_email+"@"+email;
		}
		
		member.setUm_email(um_email);
		
		String ad = request.getParameter("ad");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		
		String um_addr =ad +" "+ addr1 +" "+addr2 +" "+addr3;
		
		member.setUm_addr(um_addr);
		
		
		
		String um_gender = request.getParameter("um_gender");
		
		member.setUm_gender(um_gender);
		
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
		
		
		
		userMemberService.insertService(member);

		return "redirect:login.me";
		//return "redirect:insertMember.do";
	}

//	@RequestMapping(value = "/mdetail.do")
//	public String getMember(String um_no, Model model) {
//
//		// System.out.println("GetBoardController 처리.");
//
//		UserMemberVO vo = userMemberService.getService(um_no);
//
//		model.addAttribute("member", vo);
//
//		return "member/mdetail";
//	}


	
	//검색 조건 목록 설정
	@ModelAttribute("conditionMap")  //키값
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>(); 
		
		conditionMap.put("회원번호", "UM_NO");
		conditionMap.put("회원아이디", "UM_MID");
		
		return conditionMap; //밸류값
		
	}
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping(value = "/mlist.do")
//	public String getMemberList(UserMemberVO vo, Model model) {
//
//		// System.out.println("글 목록 검색 처리");
//		
//		System.out.println("검색조건 : " +vo.getSearchCondition());
//		System.out.println("검색단어 : " +vo.getSearchKeyword());
//
//		if(vo.getSearchCondition() == null) {
//			vo.setSearchCondition("UM_NO");
//		}
//		
//		if(vo.getSearchKeyword() == null) {
//			vo.setSearchKeyword("");
//		}
//		
//		List<UserMemberVO> list = userMemberService.getServiceList(vo);
//
//		System.out.println(vo);
//		
//		model.addAttribute("userMemberList", list);
//		
//		return "member/adminmemberlist";
//	}

	
	
	
	
	
	
	
	
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

	
	
	@RequestMapping(value = "/updateMember.do")
	public String updateMember(@ModelAttribute("member") UserMemberVO member, HttpServletRequest request) {
		// TODO Auto-generated method stub

		
		String um_email = request.getParameter("um_email");
		String email = request.getParameter("email");
		String email2 = request.getParameter("um_email2");
		
		if(email.equals("9")) {
			um_email = um_email+"@"+email2;
		}else {
			um_email = um_email+"@"+email;
		}
		
		member.setUm_email(um_email);
		
		String ad = request.getParameter("ad");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String addr3 = request.getParameter("addr3");
		
		String um_addr =ad +" "+ addr1 +" "+addr2 +" "+addr3;
		
		member.setUm_addr(um_addr);
		
		
		
		String um_gender = request.getParameter("um_gender");
		
		member.setUm_gender(um_gender);
		
		
		
		System.out.println(member);
		
		
		userMemberService.updateService(member);
		
		return "redirect:toMain.do";

	}

	
	
	@RequestMapping(value = "/updateMemberPage.do")
	public String updateMemberPage(String um_no, Model model ) {
		// TODO Auto-generated method stub

		
		UserMemberVO vo = userMemberService.getService(um_no);
		
		model.addAttribute("member", vo);
		
		
		System.out.println(model);
		
		return "member/medit";

	}

	
	@RequestMapping(value = "/mdelete.do")
	public String deleteBoard(@ModelAttribute UserMemberVO member) {
		// TODO Auto-generated method stub

		

		return "member/mdelete";
	}
	
	
	
	
	@RequestMapping(value = "/mdelete2.do")
	public String deleteBoard2(@ModelAttribute UserMemberVO member, HttpSession session) {
		// TODO Auto-generated method stub
		
		
		System.out.println(member);
		
		
		
		
		userMemberService.deleteService(member.getUm_no());

		session.invalidate();
		
		
		return "redirect:toMain.do";
	}
	


	
}
