package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BrandVO {	// javaBean
	private int b_no; 
	private String b_corp;
	private String b_corp_addr;
	private String b_desc;
	private String b_font_name;
	private String b_color_name;
	private String b_image;
	private Date b_regdate;
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_corp() {
		return b_corp;
	}
	public void setB_corp(String b_corp) {
		this.b_corp = b_corp;
	}
	public String getB_corp_addr() {
		return b_corp_addr;
	}
	public void setB_corp_addr(String b_corp_addr) {
		this.b_corp_addr = b_corp_addr;
	}
	public String getB_desc() {
		return b_desc;
	}
	public void setB_desc(String b_desc) {
		this.b_desc = b_desc;
	}
	public String getB_font_name() {
		return b_font_name;
	}
	public void setB_font_name(String b_font_name) {
		this.b_font_name = b_font_name;
	}
	public String getB_color_name() {
		return b_color_name;
	}
	public void setB_color_name(String b_color_name) {
		this.b_color_name = b_color_name;
	}
	public String getB_image() {
		return b_image;
	}
	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	public Date getB_regdate() {
		return b_regdate;
	}
	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
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
		return "BrandVO [b_no=" + b_no + ", b_corp=" + b_corp + ", b_corp_addr=" + b_corp_addr + ", b_desc=" + b_desc
				+ ", b_font_name=" + b_font_name + ", b_color_name=" + b_color_name + ", b_image=" + b_image
				+ ", b_regdate=" + b_regdate + ", searchCondition=" + searchCondition + ", searchKeyword="
				+ searchKeyword + ", uploadFile=" + uploadFile + "]";
	}
	
	
	
	
	
	
}
