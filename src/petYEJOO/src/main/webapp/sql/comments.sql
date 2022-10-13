CREATE TABLE comments (
	cm_no		VARCHAR2(50)	primary key, /* 댓글번호 */
	rv_no		VARCHAR2(50), /* 리뷰번호 */
	bm_no		VARCHAR2(20), /* 브랜드번호 */
	cm_content	VARCHAR2(200), /* 등록내용 */
	cm_date		DATE	default		sysdate /* 등록일 */
);

select * from COMMENTS order by cm_no desc;