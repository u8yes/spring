package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.AskVO;

public interface AskService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertServiceB(AskVO vo);
	public void insertServiceU(AskVO vo);
	public void insertServiceP(AskVO vo);
	// 글 목록 조회
	public AskVO getService(int a_no);
	public List<AskVO> getServiceBList(AskVO vo);
	public List<AskVO> getServiceUList(AskVO vo);
	public List<AskVO> getServicePList(AskVO vo);
	// 글 수정
	public void updateService(AskVO vo);
	// 글 삭제
	public void deleteService(int a_no);
	
}