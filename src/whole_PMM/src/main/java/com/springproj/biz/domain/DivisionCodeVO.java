package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class DivisionCodeVO {	// javaBean
	private int dc_pcno;
	private String dc_name;
	private String dc_desc;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	public int getDc_pcno() {
		return dc_pcno;
	}
	public void setDc_pcno(int dc_pcno) {
		this.dc_pcno = dc_pcno;
	}
	public String getDc_name() {
		return dc_name;
	}
	public void setDc_name(String dc_name) {
		this.dc_name = dc_name;
	}
	public String getDc_desc() {
		return dc_desc;
	}
	public void setDc_desc(String dc_desc) {
		this.dc_desc = dc_desc;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	@Override
	public String toString() {
		return "DivisionCodeVO [dc_pcno=" + dc_pcno + ", dc_name=" + dc_name + ", dc_desc=" + dc_desc
				+ ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", uploadFile="
				+ uploadFile + "]";
	}
	
	
	
}
