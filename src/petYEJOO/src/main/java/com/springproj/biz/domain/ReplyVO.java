package com.springproj.biz.domain;

import java.sql.Date;

public class ReplyVO {

	private String r_no;
	private String cm_bdno;
	private String um_no;
	private String r_content;
	private String r_del;
	private Date r_date;
	
	private String searchCondition;
	private String searchKeyword;
	
	public String getR_no() {
		return r_no;
	}
	public void setR_no(String r_no) {
		this.r_no = r_no;
	}
	public String getCm_bdno() {
		return cm_bdno;
	}
	public void setCm_bdno(String cm_bdno) {
		this.cm_bdno = cm_bdno;
	}
	public String getUm_no() {
		return um_no;
	}
	public void setUm_no(String um_no) {
		this.um_no = um_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_del() {
		return r_del;
	}
	public void setR_del(String r_del) {
		this.r_del = r_del;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
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
		return "CommentsVO [r_no=" + r_no + ", cm_bdno=" + cm_bdno + ", um_no=" + um_no + ", r_content=" + r_content
				+ ", r_del=" + r_del + ", r_date=" + r_date + "]";
	}
	
}
