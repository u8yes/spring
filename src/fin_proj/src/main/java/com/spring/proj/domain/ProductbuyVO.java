package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductbuyVO { // JavaBean
	private int o_odno;
	private String p_pno;
	private int o_pquantity;
	private Date o_date;
	public int getO_odno() {
		return o_odno;
	}
	public void setO_odno(int o_odno) {
		this.o_odno = o_odno;
	}
	public String getP_pno() {
		return p_pno;
	}
	public void setP_pno(String p_pno) {
		this.p_pno = p_pno;
	}
	public int getO_pquantity() {
		return o_pquantity;
	}
	public void setO_pquantity(int o_pquantity) {
		this.o_pquantity = o_pquantity;
	}
	public Date getO_date() {
		return o_date;
	}
	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}
	@Override
	public String toString() {
		return "ProductbuyVO [o_odno=" + o_odno + ", p_pno=" + p_pno + ", o_pquantity=" + o_pquantity + ", o_date="
				+ o_date + "]";
	}
	

	
}
