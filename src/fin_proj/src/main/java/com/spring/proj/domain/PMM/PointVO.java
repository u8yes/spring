package com.spring.proj.domain.PMM;

import java.sql.Date;

public class PointVO {  //JavaBean
	
	private int pp_payno;
	private String pp_name;
	private String pp_desc;
	private Date pp_date;
	
	

	public int getPp_payno() {
		return pp_payno;
	}



	public void setPp_payno(int pp_payno) {
		this.pp_payno = pp_payno;
	}



	public String getPp_name() {
		return pp_name;
	}



	public void setPp_name(String pp_name) {
		this.pp_name = pp_name;
	}



	public String getPp_desc() {
		return pp_desc;
	}



	public void setPp_desc(String pp_desc) {
		this.pp_desc = pp_desc;
	}



	public Date getPp_date() {
		return pp_date;
	}



	public void setPp_date(Date pp_date) {
		this.pp_date = pp_date;
	}



	@Override
	public String toString() {
		String data = "PointVO [pp_payno=" + pp_payno + ", pp_name=" + pp_name + 
				", pp_desc=" + pp_desc + ", pp_date="
				+ pp_date + "]";
		 
		 return data;
	}	
	
}
