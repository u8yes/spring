package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BrandThemeVO {	// javaBean
	
	private int bm_no;
	private int bt_no;
	private String bt_color;
	private String bt_color_desc;
	private String bt_font;
	private String bt_font_desc;
	private String bt_logo;
	private Date bt_regidate;
		
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	
}
