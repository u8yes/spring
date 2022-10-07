package com.springproj.biz.service;

import com.springproj.biz.domain.UserVO;

public interface UserService {
	// CRUD 기능의 메소드 구현
	
	// 회원 상세 정보
	public UserVO getService(UserVO user);
	
}
