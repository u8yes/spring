create table MD(
		md_no	number(5)	primary key,
		bm_no	number(5),
		p_pno	number(5),
		md_regidate	date	default	sysdate
);


select * from MD;

drop table md;

