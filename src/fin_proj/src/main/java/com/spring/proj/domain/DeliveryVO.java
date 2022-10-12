package com.spring.proj.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class DeliveryVO { // JavaBean
	private int d_dno;
	private String d_cpname;
	private String d_odno;
	private String d_rpnname;
	private String d_tel;
	private String d_addr;
	private String d_register;
	private int d_price;
	private Date d_regdate;
	public int getD_dno() {
		return d_dno;
	}
	public void setD_dno(int d_dno) {
		this.d_dno = d_dno;
	}
	public String getD_cpname() {
		return d_cpname;
	}
	public void setD_cpname(String d_cpname) {
		this.d_cpname = d_cpname;
	}
	public String getD_odno() {
		return d_odno;
	}
	public void setD_odno(String d_odno) {
		this.d_odno = d_odno;
	}
	public String getD_rpnname() {
		return d_rpnname;
	}
	public void setD_rpnname(String d_rpnname) {
		this.d_rpnname = d_rpnname;
	}
	public String getD_tel() {
		return d_tel;
	}
	public void setD_tel(String d_tel) {
		this.d_tel = d_tel;
	}
	public String getD_addr() {
		return d_addr;
	}
	public void setD_addr(String d_addr) {
		this.d_addr = d_addr;
	}
	public String getD_register() {
		return d_register;
	}
	public void setD_register(String d_register) {
		this.d_register = d_register;
	}
	public int getD_price() {
		return d_price;
	}
	public void setD_price(int d_price) {
		this.d_price = d_price;
	}
	public Date getD_regdate() {
		return d_regdate;
	}
	public void setD_regdate(Date d_regdate) {
		this.d_regdate = d_regdate;
	}
	@Override
	public String toString() {
		return "DeliveryVO [d_dno=" + d_dno + ", d_cpname=" + d_cpname + ", d_odno=" + d_odno + ", d_rpnname="
				+ d_rpnname + ", d_tel=" + d_tel + ", d_addr=" + d_addr + ", d_register=" + d_register + ", d_price="
				+ d_price + ", d_regdate=" + d_regdate + "]";
	}


	
	
}
