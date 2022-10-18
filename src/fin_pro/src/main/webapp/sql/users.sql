CREATE table users(
	id				varchar2(20)	primary key,
	password		varchar2(20),
	name			varchar2(20),
	role			varchar2(5)
);

insert into users values('admin','admin','관리자','Admin');
insert into users values('hongkd','1234','홍길동','User');


delete  from brandmember;
select * from brandinfo;
select * from tab;
drop table emp;
drop table bonus;
drop table brandmember;
drop table dept;
drop table salgrade;
ALTER TABLE buy add p_pno number(3);