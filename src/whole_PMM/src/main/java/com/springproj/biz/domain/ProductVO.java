package com.springproj.biz.domain;

import java.sql.Date;


import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO { // JavaBean
	private String p_pno;
	private String bm_no;
	private String p_name;
	private String p_detail;
	private int p_price;
	private int p_disprice;
	private String p_start;
	private String p_end;
	private String p_delivery;
	private String p_as;
	private String p_ox;
	private String p_pimg;
	private String p_dimg;
	private int p_deldis;
	private int p_count;
	private Date p_regdate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	//파일 업로드 추가
	private MultipartFile uploadFile;
	private MultipartFile uploadFile2;
	
}