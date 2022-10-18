package com.spring.proj.domain.ask;

import java.sql.Date;

public class AskVO {
	
	private int a_no;
	private String a_title;
	private String a_content;
	private int um_no;
	private int bm_no;
	private String a_pmm;
	private Date a_date;
	private String a_status;
	private int ar_no;
	
	private String searchCondition;
	private String searchKeyword;
	
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public int getUm_no() {
		return um_no;
	}
	public void setUm_no(int um_no) {
		this.um_no = um_no;
	}
	public int getBm_no() {
		return bm_no;
	}
	public void setBm_no(int bm_no) {
		this.bm_no = bm_no;
	}
	public String getA_pmm() {
		return a_pmm;
	}
	public void setA_pmm(String a_pmm) {
		this.a_pmm = a_pmm;
	}
	public Date getA_date() {
		return a_date;
	}
	public void setA_date(Date a_date) {
		this.a_date = a_date;
	}
	public String getA_status() {
		return a_status;
	}
	public void setA_status(String a_status) {
		this.a_status = a_status;
	}
	public int getAr_no() {
		return ar_no;
	}
	public void setAr_no(int ar_no) {
		this.ar_no = ar_no;
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
		return "AskVO [a_no=" + a_no + ", a_title=" + a_title + ", a_content=" + a_content + ", um_no=" + um_no
				+ ", bm_no=" + bm_no + ", a_pmm=" + a_pmm + ", a_date=" + a_date + ", a_status=" + a_status + ", ar_no="
				+ ar_no + "]";
	}

}
