package com.spring.proj.domain.brandmain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BrandInfoVO {	// javaBean
	private int bm_no;
	private String bi_biznum;
	private String bi_name;
	private String bi_tel;
	private String bi_repr;
	private String bi_commnum;
	private String bi_addr;
	private String bi_desc;
	private String bi_bizlic;
	private String bi_shop;
	private String bi_insta;
	private String bi_sns;
	private String bi_fax;
	private Date bi_date;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
}
