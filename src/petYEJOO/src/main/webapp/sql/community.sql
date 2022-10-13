CREATE TABLE community (
	cm_bdno		VARCHAR2(50)	primary key, /* 게시물번호 */
	um_no		VARCHAR2(50), /* 회원번호 */
	cm_title	VARCHAR2(50), /* 제목 */
	cm_desc		VARCHAR2(500), /* 본문 */
	cm_cnt		NUMBER(3)	default		0, /* 조회수 */
	cm_del		VARCHAR2(5), /* 삭제여부 */
	cm_regdate	DATE	default		sysdate, /* 등록일시 */
	cm_update	DATE	default		sysdate /* 수정일시 */
);

select * from COMMUNITY order by cm_bdno desc;