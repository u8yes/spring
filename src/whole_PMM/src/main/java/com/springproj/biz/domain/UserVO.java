package com.springproj.biz.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
	
	private String id;
	private String password;
	private String name;
	private String role;
		
}
