
/* 브랜드 테마 */
CREATE TABLE brandTheme (
	bm_no VARCHAR2(20) NOT NULL, /* 브랜드번호 */
	bt_color VARCHAR2(20), /* 색 */
	bt_logo VARCHAR2(200), /* 로고이미지 */
	bt_font VARCHAR2(20), /* 폰트 */
	bt_date DATE DEFAULT SYSDATE /* 등록일 */
);

COMMENT ON TABLE brandTheme IS '브랜드 테마';

COMMENT ON COLUMN brandTheme.bm_no IS '브랜드번호';

COMMENT ON COLUMN brandTheme.bt_color IS '색';

COMMENT ON COLUMN brandTheme.bt_logo IS '로고이미지';

COMMENT ON COLUMN brandTheme.bt_font IS '폰트';

COMMENT ON COLUMN brandTheme.bt_date IS '등록일';

CREATE UNIQUE INDEX PK_brandTheme
	ON brandTheme (
		bm_no ASC
	);

ALTER TABLE brandTheme
	ADD
		CONSTRAINT PK_brandTheme
		PRIMARY KEY (
			bm_no
		);


ALTER TABLE brandTheme
	ADD
		CONSTRAINT FK_brandMember_TO_brandTheme
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);
		
		


select * from BrandTheme order by bm_no desc;

delete from BRANDTHEME where bm_no = 1;

drop table BrandTheme;