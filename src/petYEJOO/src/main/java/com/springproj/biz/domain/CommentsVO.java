package com.springproj.biz.domain;

import java.sql.Date;

public class CommentsVO {

	private String cm_no;
	private String rv_no;
	private String bm_no;
	private String cm_content;
	private Date cm_date;
	
	private String searchCondition;
	private String searchKeyword;
	
	public String getCm_no() {
		return cm_no;
	}
	public void setCm_no(String cm_no) {
		this.cm_no = cm_no;
	}
	public String getRv_no() {
		return rv_no;
	}
	public void setRv_no(String rv_no) {
		this.rv_no = rv_no;
	}
	public String getBm_no() {
		return bm_no;
	}
	public void setBm_no(String bm_no) {
		this.bm_no = bm_no;
	}
	public String getCm_content() {
		return cm_content;
	}
	public void setCm_content(String cm_content) {
		this.cm_content = cm_content;
	}
	public Date getCm_date() {
		return cm_date;
	}
	public void setCm_date(Date cm_date) {
		this.cm_date = cm_date;
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
	
	@Override
	public String toString() {
		return "CommentsVO [cm_no=" + cm_no + ", rv_no=" + rv_no + ", bm_no=" + bm_no + ", cm_content=" + cm_content
				+ ", cm_date=" + cm_date + "]";
	}
	
}
