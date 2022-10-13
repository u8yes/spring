package com.spring.proj.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.proj.domain.brand.BrandMemberVO;
import com.spring.proj.domain.user.UserMemberVO;
import com.spring.proj.service.brand.BrandMemberService;
import com.spring.proj.service.user.UserMemberService;


@Controller
public class LogInOutController {

	@Autowired
	UserMemberService userMemberService;
	
	
	
	
	
	@GetMapping("/login.me")
	public String loginForm(@ModelAttribute("usr") UserMemberVO vo) {
		
		
		return "member/signIn";
	}
	
	@PostMapping("/login.me")
	public String loginProc(UserMemberVO user, HttpSession session, HttpServletResponse response) throws IOException {
		
					
		
		if(user.getUm_mid() == null || user.getUm_mid().equals("")) {
			
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디는 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
			
		}
		
		if(user.getUm_password() == null || user.getUm_password().equals("")) {
			
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('비밀번호는 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
			
		}
		
	
		
			
		
		
		String reVal = null;
	
		
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		UserMemberVO vo = userMemberService.loginService(user);
		
	
		if((vo !=null)&&vo.getUm_password().equals(user.getUm_password())) {
			
			session.setAttribute("userName", vo.getUm_ars());
			session.setAttribute("userId", vo.getUm_mid());
			session.setAttribute("userNo", vo.getUm_no());
			reVal = "redirect:toMain.do";
			
		}else {
			
			
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보가 일치하지 않습니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
			
			
			reVal =  "redirect:login.me";
		} 	

	
return reVal;
	
		
	}
	
	@RequestMapping("/logout.me" )
	public String lougoutProc(HttpSession session) {
		
		//System.out.println("로그 아웃 처리.");
		
		session.invalidate();	
		
		return "redirect:toMain.do";
	}
	
	/////////////브랜드 로그인/////////////////////////
	
	@Autowired
	BrandMemberService brandMemberService;
	
	@GetMapping("/blogin.me")
	public String loginBrandForm(@ModelAttribute("busr") BrandMemberVO vo) {
		
		
		return "member/signIn";
	}
	
	@PostMapping("/blogin.me")
	public String loginProc(BrandMemberVO buser, HttpSession session, HttpServletResponse response) throws IOException {
		
		
		
		
		
		if(buser.getBm_id() == null || buser.getBm_id().equals("")) {
			
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디는 반드시 입력해야합니다.'); history.go(-1);</script>");
		
		}
		
			
		
		
		String reVal = null;
	
		
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		BrandMemberVO vo = brandMemberService.loginBrandService(buser);
		
	
		if((vo !=null)&&vo.getBm_password().equals(buser.getBm_password())) {
			
			session.setAttribute("buserName", vo.getBm_ars());
			
			reVal = "redirect:blist.do";
			
		}else {
			
			
			reVal =  "redirect:blogin.me";
		} 	

	
return reVal;
	
		
	}
	
	@RequestMapping("/blogout.me" )
	public String lougoutBrandProc(HttpSession session) {
		
		
		session.invalidate();	
		
		return "redirect:blogin.me";
	}
	
	
	@RequestMapping("/idpsfind.me")
	public String idpsFind() {
		
		return "member/idpsfind";
	}
	
	@RequestMapping("/idfindch.me")
	public String midFind(UserMemberVO user , HttpSession session, HttpServletResponse response) throws IOException {
		
		if(user.getUm_ars() == null || user.getUm_ars().equals("")) {
			
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('이름은 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
		}
		
		if(user.getUm_email() == null || user.getUm_email().equals("")) {
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('이메일은 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
		}	
		
		
		String reVal = null;
	
		
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		UserMemberVO vo = userMemberService.idFindService(user);
		
		System.out.println("user"+user);
		System.out.println("vo"+vo);
		if((vo !=null)&&vo.getUm_ars().equals(user.getUm_ars())&&vo.getUm_email().equals(user.getUm_email())) {
			
			session.setAttribute("userID", vo.getUm_mid());
			
			reVal = "member/idfindch";
			
		}else {
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
						out.println("<script>alert('입력하신 정보가 일치하지 않습니다.'); history.go(-1);</script>");
					    out.flush();
					    response.flushBuffer();
					    out.close();
			
			reVal =  "redirect:idpsfind.me";
		} 	

	
return reVal;
			
	}
	

	
		
	
	@RequestMapping("/psfind.me")
	public String bidFind() {
		
		return "idpsfind";
	}
	
	
	
	@RequestMapping("/psfindch.me")
	public String mpsFind(UserMemberVO user , HttpSession session,HttpServletResponse response) throws IOException {
		
		if(user.getUm_ars() == null || user.getUm_ars().equals("")) {
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('이름은 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
		}
		
		if(user.getUm_email() == null || user.getUm_email().equals("")) {
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('이메일은 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
		}	
		
		if(user.getUm_mid() == null || user.getUm_mid().equals("")) {
			response.setContentType("text/html; charset=UTF-8");
		    PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디는 반드시 입력해야합니다.'); history.go(-1);</script>");
		    out.flush();
		    response.flushBuffer();
		    out.close();
		}
		
		
		String reVal = null;
	
		
		
		// 1. user의 id 존재 여부를 db에서 가져오기.
		UserMemberVO vo = userMemberService.idFindService(user);
		
		System.out.println("user"+user);
		System.out.println("vo"+vo);
		if((vo !=null)&&vo.getUm_ars().equals(user.getUm_ars())&&vo.getUm_email().equals(user.getUm_email())&&vo.getUm_mid().equals(user.getUm_mid())) {
			
			session.setAttribute("userPS", vo.getUm_password());
			
			reVal = "member/psfindch";
			
		}else {
				
		    PrintWriter out = response.getWriter();
		    response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('입력하신 정보가 일치하지 않습니다.'); history.go(-1);</script>");
			    out.flush();
			    response.flushBuffer();
			    out.close();
			
			reVal =  "redirect:idpsfind.me";
		} 	

	
return reVal;
			
	}
	
	
	
}
