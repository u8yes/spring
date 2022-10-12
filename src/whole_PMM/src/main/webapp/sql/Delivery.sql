		
/* 배송업체 */
CREATE TABLE delivery (
	d_dno VARCHAR2(30) NOT NULL, /* 배송업처번호 */
	d_cpname VARCHAR2(200), /* 업체명 */
	d_odno VARCHAR2(50), /* 사업자등록번호 */
	d_rpnname VARCHAR2(50), /* 대표자명 */
	d_tel VARCHAR2(50), /* 대표전화번호 */
	d_addr VARCHAR2(100), /* 주소 */
	d_register VARCHAR2(50), /* 등록자 */
	d_price NUMBER(30) /* 배송가격 */
	d_regdate DATE DEFAULT SYSDATE, /* 등록일시 */
);

COMMENT ON TABLE delivery IS '배송업체';

COMMENT ON COLUMN delivery.d_dno IS '배송업처번호';

COMMENT ON COLUMN delivery.d_cpname IS '업체명';

COMMENT ON COLUMN delivery.d_odno IS '사업자등록번호';

COMMENT ON COLUMN delivery.d_rpnname IS '대표자명';

COMMENT ON COLUMN delivery.d_tel IS '대표전화번호';

COMMENT ON COLUMN delivery.d_addr IS '주소';

COMMENT ON COLUMN delivery.d_register IS '등록자';

COMMENT ON COLUMN delivery.d_regdate IS '등록일시';

COMMENT ON COLUMN delivery.d_price IS '배송가격';

CREATE UNIQUE INDEX PK_delivery
	ON delivery (
		d_dno ASC
	);

ALTER TABLE delivery
	ADD
		CONSTRAINT PK_delivery
		PRIMARY KEY (
			d_dno
		);

	

	
	
	
insert into delivery(d_dno,d_cpname,d_odno,d_rpnname,d_tel,d_addr,d_register,d_price) values(1,1,1,1,1,1,1,1);
		
select * from delivery;







