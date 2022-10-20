package com.springproj.biz.service;

import java.util.List;

import com.springproj.biz.domain.BoardVO;
import com.springproj.biz.domain.PagingVO;

public interface BoardService {
	// CRUD 기능 수행을 위한 메서드 호출 기능
	
	// 글 등록
	void insertService(BoardVO vo); 
	// 글 목록 조회
	BoardVO getService(int seq);
	List<BoardVO> getServiceList(BoardVO vo);
	// 글 수정
	void updateService(BoardVO vo);
	// 글 삭제
	void deleteService(int seq);
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<BoardVO> selectBoard(PagingVO vo);
}