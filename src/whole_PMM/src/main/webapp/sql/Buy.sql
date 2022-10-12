
/* 주문 */
CREATE TABLE buy (
	po_no VARCHAR2(20) NOT NULL, /* 주문번호 */
	o_odno VARCHAR2(20), /* 주문상품번호 */
	po_total NUMBER(7), /* 총가격 */
	pa_no VARCHAR2(10), /* 포인트적용 */
	cpa_no VARCHAR2(10), /* 쿠폰적용번호 */
	d_dno VARCHAR2(30), /* 배송업체번호 */
	po_drequest VARCHAR2(500), /* 배송요청사항 */
	po_price NUMBER(7), /* 결제금액 */
	po_ptype VARCHAR2(100), /* 결제수단코드 */
	po_name VARCHAR2(50), /* 수령자명 */
	po_number VARCHAR2(50), /* 수령자전화번호 */
	po_addr VARCHAR2(200), /* 수령자 주소 */
	po_status VARCHAR2(20), /* 주문상태 */
	po_regdate DATE DEFAULT SYSDATE /* 주문일시 */
);

COMMENT ON TABLE buy IS '주문';

COMMENT ON COLUMN buy.po_no IS '주문번호';

COMMENT ON COLUMN buy.o_odno IS '주문상품번호';

COMMENT ON COLUMN buy.po_total IS '총가격';

COMMENT ON COLUMN buy.pa_no IS '포인트적용';

COMMENT ON COLUMN buy.cpa_no IS '쿠폰적용번호';

COMMENT ON COLUMN buy.d_dno IS '배송업체번호';

COMMENT ON COLUMN buy.po_drequest IS '배송요청사항';

COMMENT ON COLUMN buy.po_price IS '결제금액';

COMMENT ON COLUMN buy.po_ptype IS '결제수단코드';

COMMENT ON COLUMN buy.po_name IS '수령자명';

COMMENT ON COLUMN buy.po_number IS '수령자전화번호';

COMMENT ON COLUMN buy.po_addr IS '수령자 주소';

COMMENT ON COLUMN buy.po_status IS '주문상태';

COMMENT ON COLUMN buy.po_regdate IS '주문일시';

CREATE UNIQUE INDEX PK_buy
	ON buy (
		po_no ASC
	);

ALTER TABLE buy
	ADD
		CONSTRAINT PK_buy
		PRIMARY KEY (
			po_no
		);


ALTER TABLE buy
	ADD
		CONSTRAINT FK_productbuy_TO_buy
		FOREIGN KEY (
			o_odno
		)
		REFERENCES productbuy (
			o_odno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_delivery_TO_buy
		FOREIGN KEY (
			d_dno
		)
		REFERENCES delivery (
			d_dno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_pointAp_TO_buy
		FOREIGN KEY (
			pa_no
		)
		REFERENCES pointAp (
			pa_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_couponAp_TO_buy
		FOREIGN KEY (
			cpa_no
		)
		REFERENCES couponAp (
			cpa_no
		);

		
		
		
		

select * from buy;

drop table buy purge;



