package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.MdVO;

public interface MdService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(MdVO md); 
	// 글 목록 조회
	MdVO getService(int md_no);
	List<MdVO> getServiceList(MdVO md);
	// 글 수정
	void updateService(MdVO md);
	// 글 삭제
	void deleteService(int md_no);
}