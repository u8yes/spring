package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class BrandThemeVO {	// javaBean
	private int bt_no;
	private int bt_bno;
	private String bt_color;
	private String bt_color_desc;
	private String bt_logo;
	private String bt_font;
	private String bt_font_desc;
	private Date   bt_regidate;
	
	public int getBt_no() {
		return bt_no;
	}
	public void setBt_no(int bt_no) {
		this.bt_no = bt_no;
	}
	public int getBt_bno() {
		return bt_bno;
	}
	public void setBt_bno(int bt_bno) {
		this.bt_bno = bt_bno;
	}
	public String getBt_color() {
		return bt_color;
	}
	public void setBt_color(String bt_color) {
		this.bt_color = bt_color;
	}
	public String getBt_color_desc() {
		return bt_color_desc;
	}
	public void setBt_color_desc(String bt_color_desc) {
		this.bt_color_desc = bt_color_desc;
	}
	public String getBt_logo() {
		return bt_logo;
	}
	public void setBt_logo(String bt_logo) {
		this.bt_logo = bt_logo;
	}
	public String getBt_font() {
		return bt_font;
	}
	public void setBt_font(String bt_font) {
		this.bt_font = bt_font;
	}
	public String getBt_font_desc() {
		return bt_font_desc;
	}
	public void setBt_font_desc(String bt_font_desc) {
		this.bt_font_desc = bt_font_desc;
	}
	public Date getBt_regidate() {
		return bt_regidate;
	}
	public void setBt_regidate(Date bt_regidate) {
		this.bt_regidate = bt_regidate;
	}
	
	@Override
	public String toString() {
		return "BrandThemeVO [bt_no=" + bt_no + ", bt_bno=" + bt_bno + ", bt_color=" + bt_color + ", bt_color_desc="
				+ bt_color_desc + ", bt_logo=" + bt_logo + ", bt_font=" + bt_font + ", bt_font_desc=" + bt_font_desc
				+ ", bt_regidate=" + bt_regidate + "]";
	}
	
	
	
}
