package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;



public class ShoppingVO { // JavaBean
	private String s_no;
	private String um_no;
	private String p_pno;
	private int s_quantity;
	private Date s_date;
	// 검색 기능 추가
		private String searchCondition;
		private String searchKeyword;
		//파일 업로드 추가
		private MultipartFile uploadFile;
	
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public String getUm_no() {
		return um_no;
	}
	public void setUm_no(String um_no) {
		this.um_no = um_no;
	}
	public String getP_pno() {
		return p_pno;
	}
	public void setP_pno(String p_pno) {
		this.p_pno = p_pno;
	}
	public int getS_quantity() {
		return s_quantity;
	}
	public void setS_quantity(int s_quantity) {
		this.s_quantity = s_quantity;
	}
	public Date getS_date() {
		return s_date;
	}
	public void setS_date(Date s_date) {
		this.s_date = s_date;
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
		return "ShoppingVO [s_no=" + s_no + ", um_no=" + um_no + ", p_pno=" + p_pno + ", s_quantity=" + s_quantity
				+ ", s_date=" + s_date + ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword
				+ ", uploadFile=" + uploadFile + "]";
	}
	
	
	
	
	
	
	
	
	


}