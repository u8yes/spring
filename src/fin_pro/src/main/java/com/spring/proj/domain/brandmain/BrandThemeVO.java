package com.spring.proj.domain.brandmain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;


public class BrandThemeVO {	// javaBean
	
	private int bm_no;
	private String bt_color;
	private String bt_font;
	private String bt_logo;
	private Date bt_date;
		
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	public int getBm_no() {
		return bm_no;
	}
	public void setBm_no(int bm_no) {
		this.bm_no = bm_no;
	}
	public String getBt_color() {
		return bt_color;
	}
	public void setBt_color(String bt_color) {
		this.bt_color = bt_color;
	}
	public String getBt_font() {
		return bt_font;
	}
	public void setBt_font(String bt_font) {
		this.bt_font = bt_font;
	}
	public String getBt_logo() {
		return bt_logo;
	}
	public void setBt_logo(String bt_logo) {
		this.bt_logo = bt_logo;
	}
	public Date getBt_date() {
		return bt_date;
	}
	public void setBt_date(Date bt_date) {
		this.bt_date = bt_date;
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
	
	
	
	
}
