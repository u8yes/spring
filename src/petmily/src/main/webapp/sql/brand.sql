create table brand(
		b_no	number(5)	primary key,
		b_corp	varchar2(200) unique,
		b_corp_addr	varchar2(255),
		b_desc	varchar2(2000),
		b_font_name        varchar2(100),
		b_color_name       varchar2(100),
		b_image		varchar2(100),
		b_regdate	date	default	sysdate
);

select * from brand order by b_no desc;

drop table brand;
