package com.spring.proj.serviceImpl.comu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.brand.comu.ReplyDAOMybatis;
import com.spring.proj.domain.comu.ReplyVO;
import com.spring.proj.service.comu.ReplyService;

@Service("rpReply")
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyDAOMybatis dao;
	
	@Override
	public void insertService(ReplyVO vo) {
		dao.insertReply(vo);
		
	}

	@Override
	public List<ReplyVO> getListService(ReplyVO vo) {
		return dao.getReplyList(vo);
	}

	@Override
	public void updateService(ReplyVO vo) {
		dao.deleteReply(vo);
	}

}
