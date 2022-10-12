package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DeliveryVO { // JavaBean
	private String d_dno;
	private String d_cpname;
	private String d_odno;
	private String d_rpnname;
	private String d_tel;
	private String d_addr;
	private String d_register;
	private int d_price;
	private Date d_regdate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
}

