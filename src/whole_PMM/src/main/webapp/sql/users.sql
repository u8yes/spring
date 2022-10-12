/* 선생님과 한 실습임 프로젝트랑 상관없음. */

drop table users purge;

create table users(
	id		    varchar2(20)		primary key,
	password 	varchar2(20),
	name 		varchar2(20),
	role		varchar2(5)
);

insert into users values('admin', 'admin', '관리자', 'Admin');
insert into users values('hongkd', '1234', '홍길동', 'User');

select * from users;