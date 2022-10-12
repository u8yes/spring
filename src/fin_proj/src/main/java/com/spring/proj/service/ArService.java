package com.spring.proj.service;

import java.util.List;

import com.spring.proj.domain.AskRvVO;

public interface ArService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertService(AskRvVO vo);
	// 글 목록 조회
	public AskRvVO getService(String ar_no);
	public List<AskRvVO> getServiceList(String a_no);
	// 글 수정
	public void updateService(AskRvVO vo);
	// 글 삭제
	public void deleteService(String ar_no);
	
}