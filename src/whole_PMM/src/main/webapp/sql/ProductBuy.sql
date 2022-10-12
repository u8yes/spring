
/* 주문상품 */
CREATE TABLE productbuy (
	o_odno NUMBER(3) NOT NULL, /* 주문상품번호 */
	p_pno NUMBER(3), /* 상품코드번호 */
	o_pquantity NUMBER(3), /* 주문 수량 */
	s_no NUMBER(3), /* 장바구니번호 */
	o_pno1 VARCHAR2(50), /* 주문상품1 */
	o_pno2 VARCHAR2(50), /* 주문상품2 */
	o_pno3 VARCHAR2(50), /* 주문상품3 */
	o_pno1qu NUMBER(3), /* 주문상품1 수량 */
	o_pno2qu NUMBER(3), /* 주문상품2 수량 */
	o_pno3qu NUMBER(3), /* 주문상품3 수량 */
	um_no NUMBER(3), /* 회원번호 */
	o_date DATE DEFAULT SYSDATE /* 등록일시 */
);

COMMENT ON TABLE productbuy IS '주문상품';

COMMENT ON COLUMN productbuy.o_odno IS '주문상품번호';

COMMENT ON COLUMN productbuy.p_pno IS '상품코드번호';

COMMENT ON COLUMN productbuy.o_pquantity IS '주문 수량';

COMMENT ON COLUMN productbuy.s_no IS '장바구니번호';

COMMENT ON COLUMN productbuy.o_pno1 IS '주문상품1';

COMMENT ON COLUMN productbuy.o_pno2 IS '주문상품2';

COMMENT ON COLUMN productbuy.o_pno3 IS '주문상품3';

COMMENT ON COLUMN productbuy.o_pno1qu IS '주문상품1 수량';

COMMENT ON COLUMN productbuy.o_pno2qu IS '주문상품2 수량';

COMMENT ON COLUMN productbuy.o_pno3qu IS '주문상품3 수량';

COMMENT ON COLUMN productbuy.um_no IS '회원번호';

COMMENT ON COLUMN productbuy.o_date IS '등록일시';

CREATE UNIQUE INDEX PK_productbuy
	ON productbuy (
		o_odno ASC
	);

ALTER TABLE productbuy
	ADD
		CONSTRAINT PK_productbuy
		PRIMARY KEY (
			o_odno
		);
		
		
		
		
	

		
insert into productbuy (o_odno,p_pno,o_pquantity,s_no,o_pno1,o_pno2,o_pno3,o_pno1qu,o_pno2qu,o_pno3qu,um_no) 
values(1,1,1,1,1,1,1,1,1,1,1);

select * from productbuy;



delete from productbuy where o_odno = 1;



drop table productbuy purge;



