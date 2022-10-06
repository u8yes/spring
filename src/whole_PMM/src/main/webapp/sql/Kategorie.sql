create table kategorie(
		g_cno				number(10) primary key,
		c_name				varchar2(100),
		g_ex				varchar2(100),
		g_register			varchar2(100),
		g_date		date	default sysdate
);


      
select * from kategorie;


drop table  kategorie;




