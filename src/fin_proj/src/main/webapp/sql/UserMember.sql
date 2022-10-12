CREATE table usermember(
	um_mid				varchar2(20)	primary key,
	um_ars			varchar2(10),
	um_grade		number(2),
	um_password			varchar2(20),
	um_ymd			varchar2(20),
	um_gender			varchar2(10),
	um_tel			number(8),
	um_addr			varchar2(100),
	um_email			varchar2(50),
	um_emailcheck			number(2),
	um_snscheck			number(5),
	um_regdate			date default sysdate,
	um_cpno			varchar2(50),
	um_msno			varchar2(50)
	
);


CREATE TABLE brandmember(
bm_bno NUMBER(5) primary key,
bm_bid VARCHAR2(20),
bm_bpassword VARCHAR2(20),
bm_bmanage VARCHAR2(20),
bm_mgemail VARCHAR2(50),
bm_tel NUMBER(8),
bm_ars VARCHAR2(20),
bm_regdate date default sysdate
);


CREATE TABLE COMMENTS(
c_no number(5) primary key,
c_bdno number(5),
c_mid varchar2(20),
c_content varchar2(1000),
c_del number(2),
c_regdate date default sysdate
);

CREATE TABLE community(
cm_bdno number(5) primary key,
cm_mid varchar2(20),
cm_title varchar2(50),
cm_content varchar2(1000),
cm_cunt number(5),
cm_del number(2),
cm_regdate date default sysdate,
cm_update date default sysdate
);

CREATE TABLE membership(
ms_msno number(10) primary key,
ms_grade number(2),
ms_event varchar2(1000),
ms_mid varchar2(20)
);

CREATE TABLE coupon(
cp_cpno varchar2(50) primary key,
cp_name varchar2(50),
cp_content varchar2(1000),
cp_image varchar2(50),
cp_regdate date default sysdate,
cp_enddate date default sysdate
);


SELECT COUNT(um_mid) FROM usermember  WHERE um_mid = '2';
select * from usermember;
select * from brandmember;
select * from comments;
select * from community;
select * from membership;
select * from coupon;
DROP TABLE usermember;
DROP TABLE brandmember;
DROP TABLE comments;
DROP TABLE community;
DROP TABLE membership;
DROP TABLE coupon;



SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

SET @tables = NULL;
 SELECT GROUP_CONCAT(table_schema, '.', table_name) INTO @tables
   FROM information_schema.tables 
   WHERE table_schema = 'xe'; -- specify DB name here.
 SET @tables = CONCAT('DROP TABLE ', @tables);
 PREPARE stmt FROM @tables;
 EXECUTE stmt;
 DEALLOCATE PREPARE stmt;
 
 
 SELECT *
  FROM all_tab_comments
 WHERE table_type = 'TABLE'