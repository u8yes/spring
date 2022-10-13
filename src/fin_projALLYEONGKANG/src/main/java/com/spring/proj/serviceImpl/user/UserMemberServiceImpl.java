package com.spring.proj.serviceImpl.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.dao.user.UserMemberDAOMybatis;
import com.spring.proj.domain.user.UserMemberVO;
import com.spring.proj.service.user.UserMemberService;

@Service("userMemeberService")
public class UserMemberServiceImpl implements UserMemberService {

	
	@Autowired
	private UserMemberDAOMybatis dao;
	
	@Override
	public int idCheck(String id) {
	
		int cnt = dao.idCheck(id);
		
		System.out.println("cnt: " + cnt);
		
		return cnt;
	}

	


	@Override
	public int emailCheck(String um_email) {
	
int cnt = dao.emailCheck(um_email);
		
		System.out.println("cnt: " + cnt);
		
		return cnt;
		
		
	}






	@Override
	public void insertService(UserMemberVO vo) {
		dao.insertUserMember(vo);
	}

	@Override
	public UserMemberVO getService(String um_no) {
		UserMemberVO member = dao.getUserMember(um_no);
		return member;
	}

	@Override
	public List<UserMemberVO> getServiceList(UserMemberVO vo) {	
	 return dao.getUserMemberList(vo);
		
	}

	@Override
	public void updateService(UserMemberVO vo) {
		dao.updateUserMember(vo);
		
	}

	@Override
	public void deleteService(int um_no) {
		dao.deleteUserMember(um_no);
	}

	@Override
	public UserMemberVO loginService(UserMemberVO vo) {
		return dao.loginUserMember(vo);
		
	}

	@Override
	public UserMemberVO idFindService(UserMemberVO vo) {
	
		return dao.idFindUserMember(vo);
	}

	
	
}
