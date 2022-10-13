CREATE TABLE askReview (
	ar_no		VARCHAR2(50)	primary key, /* 답변번호 */
	a_no		VARCHAR2(50), /* 문의번호 */
	um_no		VARCHAR2(50), /* 회원번호 */
	bm_no		VARCHAR2(20), /* 브랜드번호 */
	ar_content	VARCHAR2(200), /* 댓글내용 */
	ar_date		DATE	default		sysdate, /* 상담일시 */
	ar_status	VARCHAR2(10) /* 상담상태 */
);

select * from ASKREVIEW order by ar_no desc;