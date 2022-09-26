create table brand(
		seq	number(5)	primary key,
		title	varchar2(200),
		writer	varchar2(200),
		content	varchar2(2000),
		font_name         varchar2(100),
		color_name       varchar2(100),
		brand_uploadFile	varchar2(100),
		regdate	date	default	sysdate,
		cnt	number(5)	default	0
);

select * from brand order by seq desc;

drop table brand;
