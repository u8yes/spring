package com.springproj.biz.domain;

import java.sql.Date;

public class ReviewVO {
	
	private String rv_no;
	private String um_no;
	private String p_pno;
	private String bm_no;
	private String rv_content;
	private int rv_star;
	private Date rv_date;
	
	private String searchCondition;
	private String searchKeyword;
	
	public String getRv_no() {
		return rv_no;
	}
	public void setRv_no(String rv_no) {
		this.rv_no = rv_no;
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
	public String getBm_no() {
		return bm_no;
	}
	public void setBm_no(String bm_no) {
		this.bm_no = bm_no;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public int getRv_star() {
		return rv_star;
	}
	public void setRv_star(int rv_star) {
		this.rv_star = rv_star;
	}
	public Date getRv_date() {
		return rv_date;
	}
	public void setRv_date(Date rv_date) {
		this.rv_date = rv_date;
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
		return "ReviewVO [rv_no=" + rv_no + ", um_no=" + um_no + ", p_pno=" + p_pno + ", bm_no=" + bm_no
				+ ", rv_content=" + rv_content + ", rv_star=" + rv_star + ", rv_date=" + rv_date + "]";
	}
	
}
