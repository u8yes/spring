package com.spring.proj.domain.pointAp;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class PointApVO { // JavaBean
	private int pa_no;
	private String pp_payno;
	private int um_no;
	private int pa_point;
	private String pa_status;
	private Date pa_date;
	public int getPa_no() {
		return pa_no;
	}
	public void setPa_no(int pa_no) {
		this.pa_no = pa_no;
	}
	public String getPp_payno() {
		return pp_payno;
	}
	public void setPp_payno(String pp_payno) {
		this.pp_payno = pp_payno;
	}
	public int getUm_no() {
		return um_no;
	}
	public void setUm_no(int um_no) {
		this.um_no = um_no;
	}
	public int getPa_point() {
		return pa_point;
	}
	public void setPa_point(int pa_point) {
		this.pa_point = pa_point;
	}
	public String getPa_status() {
		return pa_status;
	}
	public void setPa_status(String pa_status) {
		this.pa_status = pa_status;
	}
	public Date getPa_date() {
		return pa_date;
	}
	public void setPa_date(Date pa_date) {
		this.pa_date = pa_date;
	}
	@Override
	public String toString() {
		return "PointApVO [pa_no=" + pa_no + ", pp_payno=" + pp_payno + ", um_no=" + um_no + ", pa_point=" + pa_point
				+ ", pa_status=" + pa_status + ", pa_date=" + pa_date + "]";
	}

	
}
