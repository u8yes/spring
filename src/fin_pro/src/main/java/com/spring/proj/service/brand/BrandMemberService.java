package com.spring.proj.service.brand;

import java.util.List;

import com.spring.proj.domain.brand.BrandMemberVO;
import com.spring.proj.domain.brandmain.BrandInfoVO;

public interface BrandMemberService {
	
	public int bidCheck(String bid);

	// 글 등록
	void insertService(BrandMemberVO vo);
	
	// 글 목록 조회
	BrandMemberVO getService(String bm_no);
	
	List<BrandMemberVO> getServiceList(BrandMemberVO vo);
	
	
	// 글 수정
	void updateService(BrandMemberVO vo);
	
	// 글 삭제
	void deleteService(String bm_no);

	//로그인
	BrandMemberVO loginBrandService(BrandMemberVO vo);
}
