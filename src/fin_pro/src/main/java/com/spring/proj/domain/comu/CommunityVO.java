package com.spring.proj.domain.comu;

import java.sql.Date;

public class CommunityVO {

   private int cm_bdno;
   private String cm_writer;
   private String cm_title;
   private String cm_desc;
   private int cm_cnt;
   private String cm_del;
   private Date cm_regdate;
   private Date cm_update;
   
   private String searchCondition;
   private String searchKeyword;
public int getCm_bdno() {
	return cm_bdno;
}
public void setCm_bdno(int cm_bdno) {
	this.cm_bdno = cm_bdno;
}
public String getCm_writer() {
	return cm_writer;
}
public void setCm_writer(String cm_writer) {
	this.cm_writer = cm_writer;
}
public String getCm_title() {
	return cm_title;
}
public void setCm_title(String cm_title) {
	this.cm_title = cm_title;
}
public String getCm_desc() {
	return cm_desc;
}
public void setCm_desc(String cm_desc) {
	this.cm_desc = cm_desc;
}
public int getCm_cnt() {
	return cm_cnt;
}
public void setCm_cnt(int cm_cnt) {
	this.cm_cnt = cm_cnt;
}
public String getCm_del() {
	return cm_del;
}
public void setCm_del(String cm_del) {
	this.cm_del = cm_del;
}
public Date getCm_regdate() {
	return cm_regdate;
}
public void setCm_regdate(Date cm_regdate) {
	this.cm_regdate = cm_regdate;
}
public Date getCm_update() {
	return cm_update;
}
public void setCm_update(Date cm_update) {
	this.cm_update = cm_update;
}
public String getSearchCondition() {
	return searchCondition;
}
public void setSearchCondition(String searchCondition) {
	this.searchCondition = searchCondition;
}
public String getSearchKeyword() {
	return searchKeyword;
}
public void setSearchKeyword(String searchKeyword) {
	this.searchKeyword = searchKeyword;
}
   
@Override
public String toString() {
   return "CommunityVO [cm_bdno=" + cm_bdno + ", cm_writer=" + cm_writer +", cm_title=" + cm_title + ", cm_desc="
         + cm_desc + ", cm_cnt=" + cm_cnt + ", cm_del=" + cm_del + ", cm_regdate=" + cm_regdate
         + ", cm_update=" + cm_update + "]";
}
   
   
}