package com.springproj.biz.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class BuyVO { // JavaBean
	private int po_no;
	private int o_odno;
	private int po_total;
	private int pa_no;
	private int cpa_no;
	private int d_dno;
	private String po_drequest;
	private int	   po_price;
	private String po_ptype;
	private String po_name;
	private String po_number;
	private String po_addr;
	private String po_status;
	private Date po_regdate;
	
	// 검색 기능 추가
	private String searchCondition;
	private String searchKeyword;
	// 파일 업로드 추가
	private MultipartFile uploadFile;
}
