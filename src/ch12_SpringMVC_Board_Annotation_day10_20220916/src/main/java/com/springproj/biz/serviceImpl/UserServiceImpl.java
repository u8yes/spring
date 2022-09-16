package com.springproj.biz.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.UserDAO;
import com.springproj.biz.domain.BoardVO;
import com.springproj.biz.domain.UserVO;
import com.springproj.biz.service.UserService;

@Service("userService")	// 다른 클래스에서 @Autowired를 통해 사용할 수 있게 해줌
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO dao;
	
		

	@Override
	public UserVO getService(String id, String password) {
		
		
		
		return null;
	}
	
	
	
	
}
