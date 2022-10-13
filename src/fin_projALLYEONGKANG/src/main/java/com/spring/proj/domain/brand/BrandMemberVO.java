package com.spring.proj.domain.brand;

public class BrandMemberVO {
	
	
	
 private String bm_no; 
 private String	bm_id ;
 private String	bm_password ;
 private String	bm_manager ;
 private String	bm_email;
 private String	bm_tel ;
 private String	bm_ars;
 private String	bm_agree;

 
	private String searchBrandCondition;
	private String searchBrandKeyword;
	
	
	public String getBm_no() {
		return bm_no;
	}
	public void setBm_no(String bm_no) {
		this.bm_no = bm_no;
	}
	public String getBm_id() {
		return bm_id;
	}
	public void setBm_id(String bm_id) {
		this.bm_id = bm_id;
	}
	public String getBm_password() {
		return bm_password;
	}
	public void setBm_password(String bm_password) {
		this.bm_password = bm_password;
	}
	public String getBm_manager() {
		return bm_manager;
	}
	public void setBm_manager(String bm_manager) {
		this.bm_manager = bm_manager;
	}
	public String getBm_email() {
		return bm_email;
	}
	public void setBm_email(String bm_email) {
		this.bm_email = bm_email;
	}
	public String getBm_tel() {
		return bm_tel;
	}
	public void setBm_tel(String bm_tel) {
		this.bm_tel = bm_tel;
	}
	public String getBm_ars() {
		return bm_ars;
	}
	public void setBm_ars(String bm_ars) {
		this.bm_ars = bm_ars;
	}
	public String getBm_agree() {
		return bm_agree;
	}
	public void setBm_agree(String bm_agree) {
		this.bm_agree = bm_agree;
	}
	public String getSearchBrandCondition() {
		return searchBrandCondition;
	}
	public void setSearchBrandCondition(String searchCondition) {
		this.searchBrandCondition = searchCondition;
	}
	public String getSearchBrandKeyword() {
		return searchBrandKeyword;
	}
	public void setSearchBrandKeyword(String searchKeyword) {
		this.searchBrandKeyword = searchKeyword;
	}
	
	
	@Override
	public String toString() {
		return "BrandMemberVO [bm_no=" + bm_no + ", bm_id=" + bm_id + ", bm_password=" + bm_password + ", bm_manager="
				+ bm_manager + ", bm_email=" + bm_email + ", bm_tel=" + bm_tel + ", bm_ars=" + bm_ars + ", bm_agree="
				+ bm_agree + ", searchBrandCondition=" + searchBrandCondition + ", searchBrandKeyword=" + searchBrandKeyword + "]";
	}

	
	
}