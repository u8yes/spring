package com.spring.proj.domain.brand;

import lombok.Data;

@Data
public class BrandInfoVO {
	
	
	private int bm_no; /* 브랜드번호 */
	private String bi_biznum;  /* 사업자번호 */
	private String bi_name;  /* 업체명 */
	private String bi_tel; /* 업체연락처 */
	private String bi_repr; /* 대표자 이름 */
	private String bi_commnum; /* 통신매입번호 */
	private String bi_addr;  /* 업체주소 */
	private String bi_desc;  /* 설명글 */
	private String bi_bizlic; /* 사업자등록증 */
	private String bi_shop; /* 운영중쇼핑몰 */
	private String bi_insta;  /* SNS(인스) */
	private String bi_sns;  /* SNS(기타) */
	private String bi_fax;  /* 팩스번호 */
	private int um_grade; /* 브랜드번호 */
	

}
