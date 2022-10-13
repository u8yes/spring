package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BoardVO;

public interface BoardService {

	// CRUD 기능 수행을 위한 메서드 호출 가능.
	// 글 등록
	public void insertService(BoardVO vo);
	// 글 목록 조회
	public BoardVO getService(int seq);
	public List<BoardVO> getServiceList(BoardVO vo);
	// 글 수정
	public void updateService(BoardVO vo);
	// 글 삭제
	public void deleteService(int seq);
	
}