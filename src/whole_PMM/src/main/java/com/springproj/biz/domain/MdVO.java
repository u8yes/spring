package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MdVO {	// javaBean
	private int md_no;
	private int md_bno;
	private int md_pno;
	private Date md_regidate;
	
	public int getMd_no() {
		return md_no;
	}
	public void setMd_no(int md_no) {
		this.md_no = md_no;
	}
	public int getMd_bno() {
		return md_bno;
	}
	public void setMd_bno(int md_bno) {
		this.md_bno = md_bno;
	}
	public int getMd_pno() {
		return md_pno;
	}
	public void setMd_pno(int md_pno) {
		this.md_pno = md_pno;
	}
	public Date getMd_regidate() {
		return md_regidate;
	}
	public void setMd_regidate(Date md_regidate) {
		this.md_regidate = md_regidate;
	}
	
	@Override
	public String toString() {
		return "MdVO [md_no=" + md_no + ", md_bno=" + md_bno + ", md_pno=" + md_pno + ", md_regidate=" + md_regidate
				+ "]";
	}
	
		
	
}
