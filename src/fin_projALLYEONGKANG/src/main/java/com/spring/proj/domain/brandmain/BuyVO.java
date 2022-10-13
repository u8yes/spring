package com.spring.proj.domain.brandmain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;





public class BuyVO { // JavaBean
	private int po_no;
	private int o_odno;
	private int po_total;
	private int pa_no;
	private int cpa_no;
	private int d_dno;
	private String po_drequest;
	private int	   po_price;
	private String po_ptype;
	private String po_name;
	private String po_number;
	private String po_addr;
	private String po_status;
	private Date po_regdate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	public int getPo_no() {
		return po_no;
	}
	public void setPo_no(int po_no) {
		this.po_no = po_no;
	}
	public int getO_odno() {
		return o_odno;
	}
	public void setO_odno(int o_odno) {
		this.o_odno = o_odno;
	}
	public int getPo_total() {
		return po_total;
	}
	public void setPo_total(int po_total) {
		this.po_total = po_total;
	}
	public int getPa_no() {
		return pa_no;
	}
	public void setPa_no(int pa_no) {
		this.pa_no = pa_no;
	}
	public int getCpa_no() {
		return cpa_no;
	}
	public void setCpa_no(int cpa_no) {
		this.cpa_no = cpa_no;
	}
	public int getD_dno() {
		return d_dno;
	}
	public void setD_dno(int d_dno) {
		this.d_dno = d_dno;
	}
	public String getPo_drequest() {
		return po_drequest;
	}
	public void setPo_drequest(String po_drequest) {
		this.po_drequest = po_drequest;
	}
	public int getPo_price() {
		return po_price;
	}
	public void setPo_price(int po_price) {
		this.po_price = po_price;
	}
	public String getPo_ptype() {
		return po_ptype;
	}
	public void setPo_ptype(String po_ptype) {
		this.po_ptype = po_ptype;
	}
	public String getPo_name() {
		return po_name;
	}
	public void setPo_name(String po_name) {
		this.po_name = po_name;
	}
	public String getPo_number() {
		return po_number;
	}
	public void setPo_number(String po_number) {
		this.po_number = po_number;
	}
	public String getPo_addr() {
		return po_addr;
	}
	public void setPo_addr(String po_addr) {
		this.po_addr = po_addr;
	}
	public String getPo_status() {
		return po_status;
	}
	public void setPo_status(String po_status) {
		this.po_status = po_status;
	}
	public Date getPo_regdate() {
		return po_regdate;
	}
	public void setPo_regdate(Date po_regdate) {
		this.po_regdate = po_regdate;
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
			
			
	
	
			
}
