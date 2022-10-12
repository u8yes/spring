package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class ProductBuyVO {	// javaBean
	private String o_odno;
	private String p_pno;
	private int o_pquantity;
	private String s_no;
	private String o_pno1;
	private String o_pno2;
	private String o_pno3;
	private int o_pno1qu;
	private int o_pno2qu;
	private int o_pno3qu;
	private String um_no;
	private Date o_date;

	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	
}
