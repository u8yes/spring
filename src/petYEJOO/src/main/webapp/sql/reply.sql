CREATE TABLE reply (
	r_no		VARCHAR2(50)	primary key, /* 일렬번호 */
	cm_bdno		VARCHAR2(50), /* 게시물번호 */
	um_no		VARCHAR2(50), /* 회원번호 */
	r_content	VARCHAR2(500), /* 댓글본문 */
	r_del		VARCHAR2(10), /* 삭제여부 */
	r_date		DATE	default		sysdate/* 등록일시 */
);

select * from REPLY order by r_no desc;