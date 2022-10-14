package com.spring.proj.service.user;

import java.util.List;

import com.spring.proj.domain.user.UserMemberVO;

public interface UserMemberService {
	
	

	// 글 등록
	void insertService(UserMemberVO vo);
	
	// 글 목록 조회
	UserMemberVO getService(String um_no);
	
	List<UserMemberVO> getServiceList(UserMemberVO vo);
	
	
	// 글 수정
	void updateService(UserMemberVO vo);
	
	// 글 삭제
	void deleteService(int um_no);

	//로그인
	UserMemberVO loginService(UserMemberVO vo);
	
	//아이디 찾기
	UserMemberVO idFindService(UserMemberVO vo);
	
	
	//아이디 중복체크
	public int idCheck(String id);
	
	//이메일 중복체크
	public int emailCheck(String um_email);
	
	//멤버쉽 가입 신청
	String joinMembershipService(String ms_grade);
	
	//멤버쉽 가입 승인
	String upgradeMembershipService(String um_no);
	
	//멤버쉽 가입 신청 리스트
	List<UserMemberVO> upgradeMembershipServiceList(UserMemberVO vo);
	
}
