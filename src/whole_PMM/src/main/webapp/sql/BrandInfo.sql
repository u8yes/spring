
/* 브랜드 정보 */
CREATE TABLE brandInfo (
	bm_no VARCHAR2(20) NOT NULL, /* 브랜드번호 */
	bi_biznum VARCHAR2(50), /* 사업자번호 */
	bi_name VARCHAR2(50), /* 업체명 */
	bi_tel VARCHAR2(50), /* 업체연락처 */
	bi_repr VARCHAR2(20), /* 대표자 이름 */
	bi_commnum VARCHAR2(50), /* 통신매입번호 */
	bi_addr VARCHAR2(100), /* 업체주소 */
	bi_desc VARCHAR2(500), /* 설명글 */
	bi_bizlic VARCHAR2(100), /* 사업자등록증 */
	bi_shop VARCHAR2(100), /* 운영중쇼핑몰 */
	bi_insta VARCHAR2(100), /* SNS(인스) */
	bi_sns VARCHAR2(100), /* SNS(기타) */
	bi_fax VARCHAR2(50), /* 팩스번호 */
	bi_date DATE default sysdate/* 등록일 */
);

COMMENT ON TABLE brandInfo IS '브랜드 정보';

COMMENT ON COLUMN brandInfo.bm_no IS '브랜드번호';

COMMENT ON COLUMN brandInfo.bi_biznum IS '사업자번호';

COMMENT ON COLUMN brandInfo.bi_name IS '업체명';

COMMENT ON COLUMN brandInfo.bi_tel IS '업체연락처';

COMMENT ON COLUMN brandInfo.bi_repr IS '대표자 이름';

COMMENT ON COLUMN brandInfo.bi_commnum IS '통신매입번호';

COMMENT ON COLUMN brandInfo.bi_addr IS '업체주소';

COMMENT ON COLUMN brandInfo.bi_desc IS '설명글';

COMMENT ON COLUMN brandInfo.bi_bizlic IS '사업자등록증';

COMMENT ON COLUMN brandInfo.bi_shop IS '운영중쇼핑몰';

COMMENT ON COLUMN brandInfo.bi_insta IS 'SNS(인스)';

COMMENT ON COLUMN brandInfo.bi_sns IS 'SNS(기타)';

COMMENT ON COLUMN brandInfo.bi_fax IS '팩스번호';

COMMENT ON COLUMN brandInfo.bi_date IS '등록일';

CREATE UNIQUE INDEX PK_brandInfo
	ON brandInfo (
		bm_no ASC
	);

ALTER TABLE brandInfo
	ADD
		CONSTRAINT PK_brandInfo
		PRIMARY KEY (
			bm_no
		);



select * from BrandInfo order by bm_no desc;

drop table BrandInfo purge;

