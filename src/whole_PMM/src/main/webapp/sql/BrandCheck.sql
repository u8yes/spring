create table BrandCheck(
		ab_no	number(5)	primary key,
		bm_no	number(5)
);

select * from BrandCheck order by ab_no desc;

drop table BrandCheck;