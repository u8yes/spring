CREATE TABLE ask (
	a_no		VARCHAR2(50)	primary key, /* 문의번호 */
	a_title		VARCHAR2(200), /* 문의명 */
	a_content	VARCHAR2(2000), /* 문의내용 */
	um_no 		VARCHAR2(50), /* 회원번호 */
	bm_no 		VARCHAR2(20), /* 브랜드번호 */
	a_date 		DATE	default		sysdate, /* 문의날짜 */
	a_status 	VARCHAR2(10) /* 문의상태 */
);

select * from ASK order by a_no desc;

/* 이 아래줄 부분으로 작업 부탁드립니다. */

/* 브랜드문의 */
CREATE TABLE ask (
	a_no NUMBER(3) NOT NULL, /* 문의번호 pk */
	a_title VARCHAR2(200), /* 문의명 */
	a_content VARCHAR2(1000), /* 문의내용 */
	um_no NUMBER(3), /* 회원번호 fk */
	bm_no NUMBER(3), /* 브랜드번호 fk */
	a_pmm VARCHAR2(20), /* PMM */
	a_date DATE DEFAULT SYSDATE, /* 문의날짜 */
	a_status VARCHAR2(10), /* 문의상태 */
	ar_no NUMBER(3) /* 답변번호 fk */
);

ALTER TABLE ask ADD CONSTRAINT PK_ask PRIMARY KEY (a_no);

delete from ASK;

drop table ask;

SELECT * FROM ASK;