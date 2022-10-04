package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BrandInfoVO {	// javaBean
	private int bm_no;
	private int bi_no;
	private String bi_biznum;
	private String bi_compname;
	private String bi_comptel;
	private String bi_repr;
	private String bi_compurnum;
	private String bi_addr;
	private String bi_desc;
	private String bi_bizlic;
	private String bi_shop;
	private String bi_snsinsta;
	private String bi_snsaso;
	private String bi_fax;
	private String bi_img;
	private Date bi_regidate;
	
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
	public int getBi_no() {
		return bi_no;
	}
	public void setBi_no(int bi_no) {
		this.bi_no = bi_no;
	}
	public String getBi_biznum() {
		return bi_biznum;
	}
	public void setBi_biznum(String bi_biznum) {
		this.bi_biznum = bi_biznum;
	}
	public String getBi_compname() {
		return bi_compname;
	}
	public void setBi_compname(String bi_compname) {
		this.bi_compname = bi_compname;
	}
	public String getBi_comptel() {
		return bi_comptel;
	}
	public void setBi_comptel(String bi_comptel) {
		this.bi_comptel = bi_comptel;
	}
	public String getBi_repr() {
		return bi_repr;
	}
	public void setBi_repr(String bi_repr) {
		this.bi_repr = bi_repr;
	}
	public String getBi_compurnum() {
		return bi_compurnum;
	}
	public void setBi_compurnum(String bi_compurnum) {
		this.bi_compurnum = bi_compurnum;
	}
	public String getBi_addr() {
		return bi_addr;
	}
	public void setBi_addr(String bi_addr) {
		this.bi_addr = bi_addr;
	}
	public String getBi_desc() {
		return bi_desc;
	}
	public void setBi_desc(String bi_desc) {
		this.bi_desc = bi_desc;
	}
	public String getBi_bizlic() {
		return bi_bizlic;
	}
	public void setBi_bizlic(String bi_bizlic) {
		this.bi_bizlic = bi_bizlic;
	}
	public String getBi_shop() {
		return bi_shop;
	}
	public void setBi_shop(String bi_shop) {
		this.bi_shop = bi_shop;
	}
	public String getBi_snsinsta() {
		return bi_snsinsta;
	}
	public void setBi_snsinsta(String bi_snsinsta) {
		this.bi_snsinsta = bi_snsinsta;
	}
	public String getBi_snsaso() {
		return bi_snsaso;
	}
	public void setBi_snsaso(String bi_snsaso) {
		this.bi_snsaso = bi_snsaso;
	}
	public String getBi_fax() {
		return bi_fax;
	}
	public void setBi_fax(String bi_fax) {
		this.bi_fax = bi_fax;
	}
	public String getBi_img() {
		return bi_img;
	}
	public void setBi_img(String bi_img) {
		this.bi_img = bi_img;
	}
	public Date getBi_regidate() {
		return bi_regidate;
	}
	public void setBi_regidate(Date bi_regidate) {
		this.bi_regidate = bi_regidate;
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
		return "BrandInfoVO [bm_no=" + bm_no + ", bi_no=" + bi_no + ", bi_biznum=" + bi_biznum + ", bi_compname="
				+ bi_compname + ", bi_comptel=" + bi_comptel + ", bi_repr=" + bi_repr + ", bi_compurnum=" + bi_compurnum
				+ ", bi_addr=" + bi_addr + ", bi_desc=" + bi_desc + ", bi_bizlic=" + bi_bizlic + ", bi_shop=" + bi_shop
				+ ", bi_snsinsta=" + bi_snsinsta + ", bi_snsaso=" + bi_snsaso + ", bi_fax=" + bi_fax + ", bi_img="
				+ bi_img + ", bi_regidate=" + bi_regidate + ", searchCondition=" + searchCondition + ", searchKeyword="
				+ searchKeyword + ", uploadFile=" + uploadFile + "]";
	}
	
	
}
