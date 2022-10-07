package com.springproj.biz.domain;

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
	private int bi_no;
	private String bi_biznum;
	private String bi_compname;
	private String bi_comptel;
	private String bi_repr;
	private String bi_compurnum;
	private String bi_addr;
	private String bi_desc;
	private String bi_bizlic;
	private String bi_shop;
	private String bi_snsinsta;
	private String bi_snsaso;
	private String bi_fax;
	private String bi_img;
	private Date bi_regidate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
}
