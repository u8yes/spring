create table board(
	seq		number(5)	primary key,
	title 	varchar2(200),
	writer	varchar2(20),
	content	varchar2(2000),
	regdate	date	default		sysdate,
	cnt		number(5)	default		0
);

select * from BOARD order by seq desc;

insert into BOARD(seq,title,writer,content) values(1,1,1,1);

delete from board;

INSERT INTO BOARD SELECT BOARD_SEQ.NEXTVAL, TITLE, WRITER, CONTENT, REGDATE, CNT FROM BOARD;

drop table board purge;

SELECT b.* FROM (
				SELECT ROWNUM RN, A.* FROM (
					SELECT * 
					FROM BOARD 
				ORDER BY seq DESC ) A ) b
		WHERE RN BETWEEN 0 AND 10;
		
		
		
		
		