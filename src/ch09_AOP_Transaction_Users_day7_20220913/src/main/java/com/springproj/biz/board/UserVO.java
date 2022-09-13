package com.springproj.biz.board;

import java.sql.Date;

public class UserVO {	// javaBean
	
	private String id;
	private String password;
	private String name;
	private String role;
	
	
	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}

	
	

	@Override
	public String toString() {
		String data = "BoardVO[id=" + id + ", password=" + password + ", name=" + name 
				+ ", role=" + role + "]";
		return data;
	}
	
	
}
