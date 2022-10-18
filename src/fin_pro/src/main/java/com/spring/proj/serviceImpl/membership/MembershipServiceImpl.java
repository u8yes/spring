package com.spring.proj.serviceImpl.membership;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.membership.MembershipDAO;
import com.spring.proj.domain.membership.MembershipVO;
import com.spring.proj.service.membership.MembershipService;

@Service("membershipService")
public class MembershipServiceImpl implements MembershipService {

	@Autowired
	private MembershipDAO dao;  //수정부분: BoardDAO -> BoardDAOMybatis
	//@Autowired
	//private LogAdvice log;
	//private Log4jAdvice log;
	
	@Override
	public void insertService(MembershipVO vo) {
		//log.printLog("= insertService() =");
		//log.printLogging("= insertService() =");
		
		/*
		if(vo.getSeq() == 0) {
			throw new IllegalArgumentException("0번 글은 등록할 수 없습니다.");
		}
		//*/
		
		dao.insertMembership(vo);
		//dao.insertBoard(vo);
	}

	@Override
	public MembershipVO getService(String ms_grade) {
		//log.printLog("= getService() =");
		MembershipVO membership = dao.getMembership(ms_grade);
		
		return membership;
	}

	@Override
	public List<MembershipVO> getServiceList(MembershipVO vo) {
		//log.printLog("= getServiceList() =");
		return dao.getMembershipList(vo);
	}

	@Override
	public void updateService(MembershipVO vo) {
		//log.printLog("= updateService() =");
		dao.updateMembership(vo);
	}

	@Override
	public void deleteService(String ms_grade) {
		dao.deleteMembership(ms_grade);
	}

}
