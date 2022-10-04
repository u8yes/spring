package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MdVO {	// javaBean
	private int md_no;
	private int bm_no;
	private int p_no;
	private Date md_regidate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	public int getMd_no() {
		return md_no;
	}
	public void setMd_no(int md_no) {
		this.md_no = md_no;
	}
	public int getBm_no() {
		return bm_no;
	}
	public void setBm_no(int bm_no) {
		this.bm_no = bm_no;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public Date getMd_regidate() {
		return md_regidate;
	}
	public void setMd_regidate(Date md_regidate) {
		this.md_regidate = md_regidate;
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
		return "MdVO [md_no=" + md_no + ", bm_no=" + bm_no + ", p_no=" + p_no + ", md_regidate=" + md_regidate
				+ ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", uploadFile="
				+ uploadFile + "]";
	}
	
	
}
