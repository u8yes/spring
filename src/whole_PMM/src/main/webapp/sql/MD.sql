create table MD(
		md_no	number(5)	primary key,
		md_bno	number(5),
		md_pno	number(5),
		md_regidate	date	default	sysdate
);


select * from MD order by md_no desc;



