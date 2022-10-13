package com.springproj.biz.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.biz.dao.UserDAO;
import com.springproj.biz.domain.UserVO;
import com.springproj.biz.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO dao;
	
	@Override
	public UserVO getService(UserVO user) {
		return dao.getUser(user);
	}

}
