create table code(
		p_pno			number(10) primary key,
		dc_pcno			number(10),
		c_name			varchar2(100),
		c_ex			varchar2(100)
);


select * from code order by p_pno desc;

drop table code;


