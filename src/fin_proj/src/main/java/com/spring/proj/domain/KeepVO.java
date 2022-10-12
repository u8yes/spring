package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class KeepVO { // JavaBean
	private String k_no;
	private String um_no;
	private String p_pno;
	private String bm_no;
	private Date k_date;
	public String getK_no() {
		return k_no;
	}
	public void setK_no(String k_no) {
		this.k_no = k_no;
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
	public Date getK_date() {
		return k_date;
	}
	public void setK_date(Date k_date) {
		this.k_date = k_date;
	}
	@Override
	public String toString() {
		return "KeepVO [k_no=" + k_no + ", um_no=" + um_no + ", p_pno=" + p_pno + ", bm_no=" + bm_no + ", k_date="
				+ k_date + "]";
	}



	
}
