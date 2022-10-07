
/* 코드 */
CREATE TABLE code (
	p_pno VARCHAR2(50) NOT NULL, /* 상품코드번호 */
	dc_pcno VARCHAR2(50), /* 코드분류번호 */
	c_name VARCHAR2(200), /* 코드명 */
	c_ex VARCHAR2(500) /* 코드설명 */
);

COMMENT ON TABLE code IS '코드';

COMMENT ON COLUMN code.p_pno IS '상품코드번호';

COMMENT ON COLUMN code.dc_pcno IS '코드분류번호';

COMMENT ON COLUMN code.c_name IS '코드명';

COMMENT ON COLUMN code.c_ex IS '코드설명';

CREATE UNIQUE INDEX PK_code
	ON code (
		p_pno ASC
	);

ALTER TABLE code
	ADD
		CONSTRAINT PK_code
		PRIMARY KEY (
			p_pno
		);


		
select * from code order by p_pno desc;

drop table code;


