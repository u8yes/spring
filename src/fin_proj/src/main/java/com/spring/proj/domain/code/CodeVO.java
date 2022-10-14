package com.spring.proj.domain.code;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CodeVO {	// javaBean
	private int p_pno;
	private int dc_pcno;
	private String c_name;
	private String c_ex;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	
}
