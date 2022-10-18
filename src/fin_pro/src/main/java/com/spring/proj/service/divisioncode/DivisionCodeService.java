package com.spring.proj.service.divisioncode;

import java.util.List;

import com.spring.proj.domain.divisioncode.DivisionCodeVO;

public interface DivisionCodeService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(DivisionCodeVO dc); 
	// 글 목록 조회
	DivisionCodeVO getService(int dc_pcno);
	List<DivisionCodeVO> getServiceList(DivisionCodeVO dc);
	// 글 수정
	void updateService(DivisionCodeVO dc);
	// 글 삭제
	void deleteService(int dc_pcno);
}