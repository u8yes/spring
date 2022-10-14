package com.spring.proj.service.membership;

import java.util.List;

import com.spring.proj.domain.membership.MembershipVO;

public interface MembershipService {
	// CRUD 기능 수행을 위한 메서드 호출 기능.
	// 글 등록
	public void insertService(MembershipVO vo);
	// 글 목록 조회
	public MembershipVO getService(String ms_grade);
	public List<MembershipVO> getServiceList(MembershipVO vo);
	// 글 수정
	public void updateService(MembershipVO vo);
	// 글 삭제
	public void deleteService(String ms_grade);
}