create table BrandTheme(
		bm_no	number(5)	primary key,
		bt_no	number(5),
		bt_color			varchar2(100),
		bt_color_desc		varchar2(100),
		bt_logo				varchar2(100),
		bt_font				varchar2(100),
		bt_font_desc		varchar2(100),
		bt_regidate	date default sysdate
);

select * from BrandTheme order by bt_no desc;

