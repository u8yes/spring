package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BrandVO {	// javaBean
	private int b_no; 
	private String b_corp;
	private String b_corp_addr;
	private String b_desc;
	private String b_font_name;
	private String b_color_name;
	private String b_image;
	private Date b_regdate;
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	
}
