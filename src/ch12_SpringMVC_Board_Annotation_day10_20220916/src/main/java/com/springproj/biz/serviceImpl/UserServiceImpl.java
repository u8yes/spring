package com.springproj.biz.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.UserDAO;
import com.springproj.biz.domain.UserVO;

@Service("userService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class UserServiceImpl {
	
	@Autowired
	private UserDAO dao;
	
	public UserVO getService(String id) {
		
		UserVO user = dao.getUser(id);
		
		return user;
	}
	
	
	
	
}
