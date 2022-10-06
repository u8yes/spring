package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BrandCheckVO {	// javaBean
	private int ab_no;
	private int bm_no;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	public int getAb_no() {
		return ab_no;
	}
	public void setAb_no(int ab_no) {
		this.ab_no = ab_no;
	}
	public int getBm_no() {
		return bm_no;
	}
	public void setBm_no(int bm_no) {
		this.bm_no = bm_no;
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
		return "BrandCheckVO [ab_no=" + ab_no + ", bm_no=" + bm_no + ", searchCondition=" + searchCondition
				+ ", searchKeyword=" + searchKeyword + ", uploadFile=" + uploadFile + "]";
	}
	
	
	
	
	
}
