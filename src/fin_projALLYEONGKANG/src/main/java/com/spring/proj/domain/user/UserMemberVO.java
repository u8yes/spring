package com.spring.proj.domain.user;

import java.util.Date;

public class UserMemberVO {
	
	private int um_no;
	private String um_mid;		
	private String um_ars;		
	private int um_grade;		
	private String um_password;			
	private String um_ymd;			
	private String um_gender;			
	private String um_tel;			
	private String um_addr;			
	private String um_email;			
	private int um_emailch;			
	private int um_snsch;			
	private Date um_regdate;				
	private int ms_grade;
	
	
	private String searchCondition;
	private String searchKeyword;
	
	
	
	
	
	
	public int getUm_no() {
		return um_no;
	}
	public void setUm_no(int um_no) {
		this.um_no = um_no;
	}
	public int getMs_grade() {
		return ms_grade;
	}
	public void setMs_grade(int ms_grade) {
		this.ms_grade = ms_grade;
	}
	public String getUm_mid() {
		return um_mid;
	}
	public void setUm_mid(String um_mid) {
		this.um_mid = um_mid;
	}
	public String getUm_ars() {
		return um_ars;
	}
	public void setUm_ars(String um_ars) {
		this.um_ars = um_ars;
	}
	public int getUm_grade() {
		return um_grade;
	}
	public void setUm_grade(int um_grade) {
		this.um_grade = um_grade;
	}
	public String getUm_password() {
		return um_password;
	}
	public void setUm_password(String um_password) {
		this.um_password = um_password;
	}
	public String getUm_ymd() {
		return um_ymd;
	}
	public void setUm_ymd(String um_ymd) {
		this.um_ymd = um_ymd;
	}
	public String getUm_gender() {
		return um_gender;
	}
	public void setUm_gender(String um_gender) {
		this.um_gender = um_gender;
	}
	public String getUm_tel() {
		return um_tel;
	}
	public void setUm_tel(String um_tel) {
		this.um_tel = um_tel;
	}
	public String getUm_addr() {
		return um_addr;
	}
	public void setUm_addr(String um_addr) {
		this.um_addr = um_addr;
	}
	public String getUm_email() {
		return um_email;
	}
	public void setUm_email(String um_email) {
		this.um_email = um_email;
	}
	public int getUm_emailch() {
		return um_emailch;
	}
	public void setUm_emailch(int um_emailch) {
		this.um_emailch = um_emailch;
	}
	public int getUm_snsch() {
		return um_snsch;
	}
	public void setUm_snsch(int um_snsch) {
		this.um_snsch = um_snsch;
	}
	public Date getUm_regdate() {
		return um_regdate;
	}
	public void setUm_regdate(Date um_regdate) {
		this.um_regdate = um_regdate;
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
		return "UserMemberVO [um_no=" + um_no + ", um_mid=" + um_mid + ", um_ars=" + um_ars + ", um_grade=" + um_grade
				+ ", um_password=" + um_password + ", um_ymd=" + um_ymd + ", um_gender=" + um_gender + ", um_tel="
				+ um_tel + ", um_addr=" + um_addr + ", um_email=" + um_email + ", um_emailch=" + um_emailch
				+ ", um_snsch=" + um_snsch + ", um_regdate=" + um_regdate + ", ms_grade=" + ms_grade + "]";
	}
	
	
	
	
	
	
	

}
