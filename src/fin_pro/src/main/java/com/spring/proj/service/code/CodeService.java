package com.spring.proj.service.code;

import java.util.List;

import com.spring.proj.domain.code.CodeVO;

public interface CodeService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(CodeVO co); 
	// 글 목록 조회
	CodeVO getService(int p_pno);
	List<CodeVO> getServiceList(CodeVO co);
	// 글 수정
	void updateService(CodeVO co);
	// 글 삭제
	void deleteService(int p_pno);
}