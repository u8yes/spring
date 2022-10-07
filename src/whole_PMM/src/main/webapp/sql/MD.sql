
/* MD */
CREATE TABLE md (
	md_no VARCHAR2(50) NOT NULL, /* MD번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	md_date DATE /* 등록일 */
);

COMMENT ON TABLE md IS 'MD';

COMMENT ON COLUMN md.md_no IS 'MD번호';

COMMENT ON COLUMN md.bm_no IS '브랜드번호';

COMMENT ON COLUMN md.p_pno IS '상품코드번호';

COMMENT ON COLUMN md.md_date IS '등록일';

CREATE UNIQUE INDEX PK_md
	ON md (
		md_no ASC
	);

ALTER TABLE md
	ADD
		CONSTRAINT PK_md
		PRIMARY KEY (
			md_no
		);


select * from MD;

drop table md;

