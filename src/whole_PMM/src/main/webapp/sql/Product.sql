insert into product (p_pno,bm_no,p_name,p_detail,p_price,p_disprice,p_delivery,p_as,p_ox,p_pimg,p_dimg,p_deldis,p_count) 
values(1,1,1,1,1,1,1,1,1,1,1,1,1);

/* 상품 */
CREATE TABLE PRODUCT (
	p_pno NUMBER(3) NOT NULL, /* 상품코드번호 */
	bm_no NUMBER(3), /* 브랜드번호 */
	p_name VARCHAR2(200), /* 상품명 */
	p_detail VARCHAR2(1000), /* 상품상세정보 */
	p_price NUMBER(7), /* 정가 */
	p_disprice NUMBER(7), /* 판매가 */
	p_start VARCHAR2(200), /* 판매시작일 */
	p_end VARCHAR2(200), /* 판매종료일 */
	p_delivery VARCHAR2(200), /* 배송제약사항 */
	p_as VARCHAR2(10), /* A/S가능여부 */
	p_ox VARCHAR2(10), /* 반품가능여부 */
	p_pimg VARCHAR2(200), /* 제품이미지 */
	p_dimg VARCHAR2(200), /* 상세이미지 */
	p_deldis NUMBER(2), /* 배송할인 */
	p_count NUMBER(4), /* 수량 */
	p_regdate DATE DEFAULT SYSDATE /* 등록일시 */
);

COMMENT ON TABLE PRODUCT IS '상품';

COMMENT ON COLUMN PRODUCT.p_pno IS '상품코드번호';

COMMENT ON COLUMN PRODUCT.bm_no IS '브랜드번호';

COMMENT ON COLUMN PRODUCT.p_name IS '상품명';

COMMENT ON COLUMN PRODUCT.p_detail IS '상품상세정보';

COMMENT ON COLUMN PRODUCT.p_price IS '정가';

COMMENT ON COLUMN PRODUCT.p_disprice IS '판매가';

COMMENT ON COLUMN PRODUCT.p_start IS '판매시작일';

COMMENT ON COLUMN PRODUCT.p_end IS '판매종료일';

COMMENT ON COLUMN PRODUCT.p_delivery IS '배송제약사항';

COMMENT ON COLUMN PRODUCT.p_as IS 'A/S가능여부';

COMMENT ON COLUMN PRODUCT.p_ox IS '반품가능여부';

COMMENT ON COLUMN PRODUCT.p_pimg IS '제품이미지';

COMMENT ON COLUMN PRODUCT.p_dimg IS '상세이미지';

COMMENT ON COLUMN PRODUCT.p_deldis IS '배송할인';

COMMENT ON COLUMN PRODUCT.p_count IS '수량';

COMMENT ON COLUMN PRODUCT.p_regdate IS '등록일시';

CREATE UNIQUE INDEX PK_PRODUCT
	ON PRODUCT (
		p_pno ASC
	);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			p_pno
		);



		
select * from PRODUCT;







delete from PRODUCT where p_pno = 1;
