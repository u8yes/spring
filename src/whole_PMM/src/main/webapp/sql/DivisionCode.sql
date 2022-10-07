
/* 코드분류 */
CREATE TABLE divisionCode (
	dc_pcno VARCHAR2(50) NOT NULL, /* 코드분류번호 */
	dc_name VARCHAR2(100), /* 코드분류명 */
	dc_ex VARCHAR2(500) /* 코드분류설명 */
);

COMMENT ON TABLE divisionCode IS '코드분류';

COMMENT ON COLUMN divisionCode.dc_pcno IS '코드분류번호';

COMMENT ON COLUMN divisionCode.dc_name IS '코드분류명';

COMMENT ON COLUMN divisionCode.dc_ex IS '코드분류설명';

CREATE UNIQUE INDEX PK_divisionCode
	ON divisionCode (
		dc_pcno ASC
	);

ALTER TABLE divisionCode
	ADD
		CONSTRAINT PK_divisionCode
		PRIMARY KEY (
			dc_pcno
		);



select * from divisionCode;

drop table divisionCode;

