package com.springproj.biz.board.service;

import java.util.List;

import com.springproj.biz.board.UserVO;

public interface BoardService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(UserVO vo); 
	// 글 목록 조회
	UserVO getService(int seq);
	List<UserVO> getServiceList();
	// 글 수정
	void updateService(UserVO vo);
	// 글 삭제
	void deleteService(int seq);
}