create table BrandInfo(
		bm_no			number(5) primary key,
		bi_no			number(5),
		bi_biznum		varchar2(50),
		bi_compname		varchar2(100),
		bi_comptel		varchar2(50),
		bi_repr			varchar2(100),
		bi_compurnum	varchar2(100),
		bi_addr			varchar2(300),
		bi_desc			varchar2(2000),
		bi_bizlic		varchar2(50),
		bi_shop			varchar2(50),
		bi_snsinsta		varchar2(100),
		bi_snsaso		varchar2(100),
		bi_fax			varchar2(30),
		bi_img			varchar2(300),
		bi_regidate	date	default sysdate
);


select * from BrandInfo order by bi_no desc;

drop table BrandInfo;

