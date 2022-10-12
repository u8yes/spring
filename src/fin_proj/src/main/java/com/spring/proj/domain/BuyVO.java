package com.spring.proj.domain;

import java.sql.Date;

public class BuyVO { // JavaBean
	private int po_no;
	private String um_no;
	private String ob_payno;
	private String po_name;
	private String po_number;
	private String po_addr;
	private String d_dno;
	private String po_drequest;
	private String po_status;
	private String o_odno;
	private String s_no;
	private Date po_regdate;
	public int getPo_no() {
		return po_no;
	}
	public void setPo_no(int po_no) {
		this.po_no = po_no;
	}
	public String getUm_no() {
		return um_no;
	}
	public void setUm_no(String um_no) {
		this.um_no = um_no;
	}
	public String getOb_payno() {
		return ob_payno;
	}
	public void setOb_payno(String ob_payno) {
		this.ob_payno = ob_payno;
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
	public String getD_dno() {
		return d_dno;
	}
	public void setD_dno(String d_dno) {
		this.d_dno = d_dno;
	}
	public String getPo_drequest() {
		return po_drequest;
	}
	public void setPo_drequest(String po_drequest) {
		this.po_drequest = po_drequest;
	}
	public String getPo_status() {
		return po_status;
	}
	public void setPo_status(String po_status) {
		this.po_status = po_status;
	}
	public String getO_odno() {
		return o_odno;
	}
	public void setO_odno(String o_odno) {
		this.o_odno = o_odno;
	}
	public String getS_no() {
		return s_no;
	}
	public void setS_no(String s_no) {
		this.s_no = s_no;
	}
	public Date getPo_regdate() {
		return po_regdate;
	}
	public void setPo_regdate(Date po_regdate) {
		this.po_regdate = po_regdate;
	}
	@Override
	public String toString() {
		return "BuyVO [po_no=" + po_no + ", um_no=" + um_no + ", ob_payno=" + ob_payno + ", po_name=" + po_name
				+ ", po_number=" + po_number + ", po_addr=" + po_addr + ", d_dno=" + d_dno + ", po_drequest="
				+ po_drequest + ", po_status=" + po_status + ", o_odno=" + o_odno + ", s_no=" + s_no + ", po_regdate="
				+ po_regdate + "]";
	}


	
}
