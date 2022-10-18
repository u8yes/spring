package com.spring.proj.domain.buy;

import java.sql.Date;


public class BuyVO  { // JavaBean
	private int po_no;
	private int o_odno;
	private int po_total;
	private int pa_no;
	private int cpa_no;
	private int d_dno;
	private String po_drequest;
	private int po_price;
	private String po_ptype;
	private String po_name;
	private String po_number;
	private String po_addr;
	private String po_status;
	private Date po_regdate;
	private int pa_point;
	private int d_price;
	private int p_pno;
	

	public int getP_pno() {
		return p_pno;
	}
	public void setP_pno(int p_pno) {
		this.p_pno = p_pno;
	}
	private String p_name;
	private int p_price;
	private int o_pquantity;
	private int cp_cpno;
	private String um_email;
	private String um_addr;
	private String um_ars;
	
	
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
	public int getPa_point() {
		return pa_point;
	}
	public void setPa_point(int pa_point) {
		this.pa_point = pa_point;
	}
	
	
	
	
	
	
	public int getD_price() {
		return d_price;
	}
	public void setD_price(int d_price) {
		this.d_price = d_price;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getO_pquantity() {
		return o_pquantity;
	}
	public void setO_pquantity(int o_pquantity) {
		this.o_pquantity = o_pquantity;
	}
	public int getCp_cpno() {
		return cp_cpno;
	}
	public void setCp_cpno(int cp_cpno) {
		this.cp_cpno = cp_cpno;
	}
	public String getUm_email() {
		return um_email;
	}
	public void setUm_email(String um_email) {
		this.um_email = um_email;
	}
	public String getUm_addr() {
		return um_addr;
	}
	public void setUm_addr(String um_addr) {
		this.um_addr = um_addr;
	}
	public String getUm_ars() {
		return um_ars;
	}
	public void setUm_ars(String um_ars) {
		this.um_ars = um_ars;
	}
	@Override
	public String toString() {
		return "BuyVO [po_no=" + po_no + ", o_odno=" + o_odno + ", po_total=" + po_total + ", pa_no=" + pa_no
				+ ", cpa_no=" + cpa_no + ", d_dno=" + d_dno + ", po_drequest=" + po_drequest + ", po_price=" + po_price
				+ ", po_ptype=" + po_ptype + ", po_name=" + po_name + ", po_number=" + po_number + ", po_addr="
				+ po_addr + ", po_status=" + po_status + ", po_regdate=" + po_regdate + ", pa_point=" + pa_point
				+ ", d_price=" + d_price + ", p_name=" + p_name + ", p_price=" + p_price + ", o_pquantity="
				+ o_pquantity + ", cp_cpno=" + cp_cpno + ", um_email=" + um_email + ", um_addr=" + um_addr + ", um_ars="
				+ um_ars + "]";
	}

	
	

}
