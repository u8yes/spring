package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {	// javaBean
	private int seq; 
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private int cnt;
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
	
	
}
