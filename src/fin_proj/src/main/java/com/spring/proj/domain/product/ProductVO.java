package com.spring.proj.domain.product;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductVO { // JavaBean
	private String p_pno;
	private String p_name;
	private String p_detail;
	private int p_price;
	private String p_start;
	private String p_end;
	private String p_delivery;
	private String p_as;
	private String p_ox;
	private String p_pimg;
	private String p_dimg;
	private int p_deldis;
	private String bm_no;
	private int p_count;
	private String p_disprice;
	private Date p_regdate;
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	//파일 업로드 추가
	private MultipartFile uploadFile;
	private MultipartFile uploadFile2;
	public String getP_pno() {
		return p_pno;
	}
	public void setP_pno(String p_pno) {
		this.p_pno = p_pno;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_detail() {
		return p_detail;
	}
	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_start() {
		return p_start;
	}
	public void setP_start(String p_start) {
		this.p_start = p_start;
	}
	public String getP_end() {
		return p_end;
	}
	public void setP_end(String p_end) {
		this.p_end = p_end;
	}
	public String getP_delivery() {
		return p_delivery;
	}
	public void setP_delivery(String p_delivery) {
		this.p_delivery = p_delivery;
	}
	public String getP_as() {
		return p_as;
	}
	public void setP_as(String p_as) {
		this.p_as = p_as;
	}
	public String getP_ox() {
		return p_ox;
	}
	public void setP_ox(String p_ox) {
		this.p_ox = p_ox;
	}
	public String getP_pimg() {
		return p_pimg;
	}
	public void setP_pimg(String p_pimg) {
		this.p_pimg = p_pimg;
	}
	public String getP_dimg() {
		return p_dimg;
	}
	public void setP_dimg(String p_dimg) {
		this.p_dimg = p_dimg;
	}
	public int getP_deldis() {
		return p_deldis;
	}
	public void setP_deldis(int p_deldis) {
		this.p_deldis = p_deldis;
	}
	public String getBm_no() {
		return bm_no;
	}
	public void setBm_no(String bm_no) {
		this.bm_no = bm_no;
	}
	public int getP_count() {
		return p_count;
	}
	public void setP_count(int p_count) {
		this.p_count = p_count;
	}
	
	public String getP_disprice() {
		return p_disprice;
	}
	public void setP_disprice(String p_disprice) {
		this.p_disprice = p_disprice;
	}
	public Date getP_regdate() {
		return p_regdate;
	}
	public void setP_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
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
	public MultipartFile getUploadFile2() {
		return uploadFile2;
	}
	public void setUploadFile2(MultipartFile uploadFile2) {
		this.uploadFile2 = uploadFile2;
	}
	@Override
	public String toString() {
		return "ProductVO [p_pno=" + p_pno + ", p_name=" + p_name + ", p_detail=" + p_detail + ", p_price=" + p_price
				+ ", p_start=" + p_start + ", p_end=" + p_end + ", p_delivery=" + p_delivery + ", p_as=" + p_as
				+ ", p_ox=" + p_ox + ", p_pimg=" + p_pimg + ", p_dimg=" + p_dimg + ", p_deldis=" + p_deldis + ", bm_no="
				+ bm_no + ", p_count=" + p_count + ", p_disprice=" + p_disprice + ", p_regdate=" + p_regdate
				+ ", searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", uploadFile="
				+ uploadFile + ", uploadFile2=" + uploadFile2 + "]";
	}
	
	
	
	
	


}