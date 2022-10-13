package com.spring.proj.service.comu;

import java.util.List;

import com.spring.proj.domain.comu.ReplyVO;

public interface ReplyService {

	public void insertService(ReplyVO vo);
	public List<ReplyVO> getListService(ReplyVO vo);
	public void updateService(ReplyVO vo);
}
