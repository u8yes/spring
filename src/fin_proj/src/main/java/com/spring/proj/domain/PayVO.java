package com.spring.proj.domain;

import java.sql.Date;

public class PayVO { // JavaBean
	private int ob_payno;
	private String o_odno;
	private String ob_type;
	private String ms_grade;
	private String cpa_no;
	private String pa_no;
	private String da_no;
	private int ob_price;
	private Date ob_date;
	public int getOb_payno() {
		return ob_payno;
	}
	public void setOb_payno(int ob_payno) {
		this.ob_payno = ob_payno;
	}
	public String getO_odno() {
		return o_odno;
	}
	public void setO_odno(String o_odno) {
		this.o_odno = o_odno;
	}
	public String getOb_type() {
		return ob_type;
	}
	public void setOb_type(String ob_type) {
		this.ob_type = ob_type;
	}
	public String getMs_grade() {
		return ms_grade;
	}
	public void setMs_grade(String ms_grade) {
		this.ms_grade = ms_grade;
	}
	public String getCpa_no() {
		return cpa_no;
	}
	public void setCpa_no(String cpa_no) {
		this.cpa_no = cpa_no;
	}
	public String getPa_no() {
		return pa_no;
	}
	public void setPa_no(String pa_no) {
		this.pa_no = pa_no;
	}
	public String getDa_no() {
		return da_no;
	}
	public void setDa_no(String da_no) {
		this.da_no = da_no;
	}
	public int getOb_price() {
		return ob_price;
	}
	public void setOb_price(int ob_price) {
		this.ob_price = ob_price;
	}
	public Date getOb_date() {
		return ob_date;
	}
	public void setOb_date(Date ob_date) {
		this.ob_date = ob_date;
	}
	@Override
	public String toString() {
		return "PayVO [ob_payno=" + ob_payno + ", o_odno=" + o_odno + ", ob_type=" + ob_type + ", ms_grade=" + ms_grade
				+ ", cpa_no=" + cpa_no + ", pa_no=" + pa_no + ", da_no=" + da_no + ", ob_price=" + ob_price
				+ ", ob_date=" + ob_date + "]";
	}


}
