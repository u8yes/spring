CREATE TABLE review (
	rv_no		VARCHAR2(50)	primary key, /* 리뷰번호 */
	um_no		VARCHAR2(50), /* 회원번호 */
	p_pno		VARCHAR2(50), /* 상품코드번호 */
	bm_no		VARCHAR2(20), /* 브랜드번호 */
	rv_content	VARCHAR2(500), /* 후기내용 */
	rv_star		NUMBER(2), /* 별점 */
	rv_date		DATE	default		sysdate/* 등록일 */
);

select * from REVIEW order by rv_no desc;