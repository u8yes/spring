package com.spring.proj.service.PMM;

import java.util.List;

import com.spring.proj.domain.PMM.PointVO;

public interface PointService {

	// 포인트 등록
	public void insertService(PointVO vo);
	
	// 포인트 목록 조회
	public PointVO getService(int pp_payno);
	
	public List<PointVO> getServiceList(PointVO vo);
	
	// 포인트 수정
	public void updateService(PointVO vo);
	
	// 포인트 삭제
	public void deleteService(int pp_payno);
	
}