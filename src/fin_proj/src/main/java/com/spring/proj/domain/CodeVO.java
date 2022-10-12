package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class CodeVO {	// javaBean
	private int p_pno;
	private int dc_pcno;
	private String c_name;
	private String c_ex;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	public int getP_pno() {
		return p_pno;
	}
	public void setP_pno(int p_pno) {
		this.p_pno = p_pno;
	}
	public int getDc_pcno() {
		return dc_pcno;
	}
	public void setDc_pcno(int dc_pcno) {
		this.dc_pcno = dc_pcno;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_ex() {
		return c_ex;
	}
	public void setC_ex(String c_ex) {
		this.c_ex = c_ex;
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
		return "CodeVO [p_pno=" + p_pno + ", dc_pcno=" + dc_pcno + ", c_name=" + c_name + ", c_ex=" + c_ex
				+ ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", uploadFile="
				+ uploadFile + "]";
	}
	
	
	
}
