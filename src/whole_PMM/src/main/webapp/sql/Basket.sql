
/* 장바구니 */
CREATE TABLE basket (
	s_no NUMBER(3) NOT NULL, /* 장바구니번호 */
	um_no NUMBER(3), /* 회원번호 */
	p_pno NUMBER(3), /* 상품코드번호 */
	s_quantity NUMBER(3), /* 주문 수량 */
	s_date DATE DEFAULT SYSDATE /* 등록일시 */
);


insert into basket (s_no,um_no,p_pno,s_quantity) values(2,2,2,2);
select * from basket;

COMMENT ON TABLE basket IS '장바구니';

COMMENT ON COLUMN basket.s_no IS '장바구니번호';

COMMENT ON COLUMN basket.um_no IS '회원번호';

COMMENT ON COLUMN basket.p_pno IS '상품코드번호';

COMMENT ON COLUMN basket.s_quantity IS '주문 수량';

COMMENT ON COLUMN basket.s_date IS '등록일시';

CREATE UNIQUE INDEX PK_basket
	ON basket (
		s_no ASC
	);

ALTER TABLE basket
	ADD
		CONSTRAINT PK_basket
		PRIMARY KEY (
			s_no
		);

		
		
		
select * from basket order by s_no desc;


drop table basket purge;



