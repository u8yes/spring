
select * from userMember;

/* User */
CREATE TABLE userMember (
	um_no VARCHAR2(50) NOT NULL, /* 회원번호 */
	um_mid VARCHAR2(20) NOT NULL, /* 회원아이디 */
	um_ars VARCHAR2(10) NOT NULL, /* 닉네임 */
	um_grade VARCHAR2(10), /* 회원등급 */
	um_password VARCHAR2(20) NOT NULL, /* 비밀번호 */
	um_ymd VARCHAR2(20), /* 생년월일 */
	um_gender VARCHAR2(10), /* 성별 */
	um_tel VARCHAR2(50), /* 휴대전화 */
	um_addr VARCHAR2(100), /* 주소 */
	um_email VARCHAR2(50), /* 이메일 */
	um_emailch NUMBER(1), /* 이메일수신여부 */
	um_snsch NUMBER(1), /* SNS수신여부 */
	um_regdate DATE default sysdate, /* 회원가입일시 */
	ms_grade VARCHAR2(10) /* 맴버십등급 */
);

CREATE UNIQUE INDEX PK_userMember
	ON userMember (
		um_no ASC
	);

CREATE UNIQUE INDEX UIX_userMember
	ON userMember (
		um_mid ASC
	);

ALTER TABLE userMember
	ADD
		CONSTRAINT PK_userMember
		PRIMARY KEY (
			um_no
		);

ALTER TABLE userMember
	ADD
		CONSTRAINT UK_userMember
		UNIQUE (
			um_mid
		);

/* 커뮤니티 */
CREATE TABLE COMMUNITY (
	cm_bdno VARCHAR2(50) NOT NULL, /* 게시물번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	cm_title VARCHAR2(50), /* 제목 */
	cm_content VARCHAR2(500), /* 본문 */
	cm_cunt NUMBER(3), /* 조회수 */
	cm_del VARCHAR2(5), /* 삭제여부 */
	cm_regdate DATE, /* 등록일시 */
	cm_update DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_COMMUNITY
	ON COMMUNITY (
		cm_bdno ASC
	);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT PK_COMMUNITY
		PRIMARY KEY (
			cm_bdno
		);

/* 댓글 */
CREATE TABLE COMMENTS (
	c_no VARCHAR2(50) NOT NULL, /* 일렬번호 */
	cm_bdno VARCHAR2(50), /* 게시물번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	c_content VARCHAR2(500), /* 댓글본문 */
	c_del VARCHAR2(10), /* 삭제여부 */
	c_regdate DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_COMMENT
	ON COMMENT (
		c_no ASC
	);

ALTER TABLE COMMENT
	ADD
		CONSTRAINT PK_COMMENT
		PRIMARY KEY (
			c_no
		);

/* 상품 */
CREATE TABLE PRODUCT (
	p_pno VARCHAR2(50) NOT NULL, /* 상품코드번호 */
	p_name VARCHAR2(200), /* 상품명 */
	p_detail VARCHAR2(1000), /* 상품상세정보 */
	p_price NUMBER(10), /* 판매단가 */
	p_start DATE, /* 판매시작일 */
	p_end DATE, /* 판매종료일 */
	p_delivery VARCHAR2(200), /* 배송제약사항 */
	p_as VARCHAR2(10), /* A/S가능여부 */
	p_ox VARCHAR2(10), /* 반품가능여부 */
	p_pimg VARCHAR2(200), /* 제품이미지 */
	p_dimg VARCHAR2(200), /* 상세이미지 */
	p_deldis NUMBER(2), /* 배송할인 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	p_count NUMBER(3), /* 수량 */
	g_cno VARCHAR2(20), /* 카테고리번호 */
	p_regdate DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_PRODUCT
	ON PRODUCT (
		p_pno ASC
	);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT PK_PRODUCT
		PRIMARY KEY (
			p_pno
		);

/* 주문 */
CREATE TABLE buy (
	po_no VARCHAR2(20) NOT NULL, /* 주문번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	ob_payno VARCHAR2(20), /* 결제번호 */
	po_name VARCHAR2(50), /* 수령자명 */
	po_number VARCHAR2(50), /* 수령자전화번호 */
	po_addr VARCHAR2(200), /* 수령자 주소 */
	d_dno VARCHAR2(30), /* 배송업처번호 */
	po_drequest VARCHAR2(500), /* 배송요청사항 */
	po_status VARCHAR2(20), /* 주문상태 */
	po_regdate DATE, /* 주문일시 */
	o_odno VARCHAR2(20), /* 주문상품번호 */
	s_no VARCHAR2(50) /* 장바구니번호 */
);

CREATE UNIQUE INDEX PK_buy
	ON buy (
		po_no ASC
	);

ALTER TABLE buy
	ADD
		CONSTRAINT PK_buy
		PRIMARY KEY (
			po_no
		);

/* 결제 */
CREATE TABLE pay (
	ob_payno VARCHAR2(20) NOT NULL, /* 결제번호 */
	o_odno VARCHAR2(20), /* 주문번호 */
	ob_type VARCHAR2(100), /* 결제수단코드 */
	ms_grade VARCHAR2(10), /* 멤버십등급 */
	cpa_no VARCHAR2(10), /* 쿠폰적용번호 */
	pa_no VARCHAR2(10), /* 포인트적용 */
	da_no VARCHAR2(30), /* 배송적용번호  */
	ob_price NUMBER(10), /* 결제금액 */
	ob_date DATE /* 결제일 */
);

CREATE UNIQUE INDEX PK_pay
	ON pay (
		ob_payno ASC
	);

ALTER TABLE pay
	ADD
		CONSTRAINT PK_pay
		PRIMARY KEY (
			ob_payno
		);

/* 배송업체 */
CREATE TABLE delivery (
	d_dno VARCHAR2(30) NOT NULL, /* 배송업처번호 */
	d_cpname VARCHAR2(200), /* 업체명 */
	d_odno VARCHAR2(50), /* 사업자등록번호 */
	d_rpnname VARCHAR2(50), /* 대표자명 */
	d_tel VARCHAR2(50), /* 대표전화번호 */
	d_addr VARCHAR2(100), /* 주소 */
	d_register VARCHAR2(50), /* 등록자 */
	d_regdate DATE, /* 등록일시 */
	d_price NUMBER(30) /* 배송가격 */
);

CREATE UNIQUE INDEX PK_delivery
	ON delivery (
		d_dno ASC
	);

ALTER TABLE delivery
	ADD
		CONSTRAINT PK_delivery
		PRIMARY KEY (
			d_dno
		);

/* 주문상품 */
CREATE TABLE productbuy (
	o_odno VARCHAR2(20) NOT NULL, /* 주문상품번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	o_pquantity NUMBER(3), /* 주문 수량 */
	o_date DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_productbuy
	ON productbuy (
		o_odno ASC
	);

ALTER TABLE productbuy
	ADD
		CONSTRAINT PK_productbuy
		PRIMARY KEY (
			o_odno
		);

/* 카테고리 */
CREATE TABLE kategorie (
	g_cno VARCHAR2(20) NOT NULL, /* 카테고리번호 */
	g_name VARCHAR2(200), /* 카테고리명 */
	g_ex VARCHAR2(500), /* 카테고리 설명 */
	g_register VARCHAR2(30), /* 등록자 */
	g_date DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_kategorie
	ON kategorie (
		g_cno ASC
	);

ALTER TABLE kategorie
	ADD
		CONSTRAINT PK_kategorie
		PRIMARY KEY (
			g_cno
		);

/* 코드 */
CREATE TABLE code (
	p_pno VARCHAR2(50) NOT NULL, /* 상품코드번호 */
	c_name VARCHAR2(200), /* 코드명 */
	c_ex VARCHAR2(500), /* 코드설명 */
	dc_pcno VARCHAR2(50) /* 코드분류번호 */
);

CREATE UNIQUE INDEX PK_code
	ON code (
		p_pno ASC
	);

ALTER TABLE code
	ADD
		CONSTRAINT PK_code
		PRIMARY KEY (
			p_pno
		);

/* 코드분류 */
CREATE TABLE divisionCode (
	dc_pcno VARCHAR2(50) NOT NULL, /* 코드분류번호 */
	dc_name VARCHAR2((100), /* 코드분류명 */
	dc_ex VARCHAR2((500) /* 코드분류설명 */
);

CREATE UNIQUE INDEX PK_divisionCode
	ON divisionCode (
		dc_pcno ASC
	);

ALTER TABLE divisionCode
	ADD
		CONSTRAINT PK_divisionCode
		PRIMARY KEY (
			dc_pcno
		);

/* 장바구니 */
CREATE TABLE shoppingBasket (
	s_no VARCHAR2(50) NOT NULL, /* 장바구니번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	s_quantity NUMBER(3), /* 주문 수량 */
	s_date DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_shoppingBasket
	ON shoppingBasket (
		s_no ASC
	);

ALTER TABLE shoppingBasket
	ADD
		CONSTRAINT PK_shoppingBasket
		PRIMARY KEY (
			s_no
		);

/* 찜 */
CREATE TABLE keep (
	k_no VARCHAR2(50) NOT NULL, /* 찜번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	k_date DATE, /* 찜한날 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	bm_no VARCHAR2(20) /* 브랜드번호 */
);

CREATE UNIQUE INDEX PK_keep
	ON keep (
		k_no ASC
	);

ALTER TABLE keep
	ADD
		CONSTRAINT PK_keep
		PRIMARY KEY (
			k_no
		);

/* 멤버십 */
CREATE TABLE membership (
	ms_grade VARCHAR2(10) NOT NULL, /* 멤버십등급 */
	ms_desc VARCHAR2(100), /* 혜택설명 */
	ms_sale VARCHAR2(30) /* 할인률 */
);

CREATE UNIQUE INDEX PK_membership
	ON membership (
		ms_grade ASC
	);

ALTER TABLE membership
	ADD
		CONSTRAINT PK_membership
		PRIMARY KEY (
			ms_grade
		);

/* 쿠폰 */
CREATE TABLE coupon (
	cp_cpno VARCHAR2(10) NOT NULL, /* 쿠폰번호 */
	cp_name VARCHAR2( 50), /* 쿠폰명 */
	cp_content VARCHAR2(500), /* 쿠폰내용 */
	cp_image VARCHAR2(500), /* 이미지 */
	cp_regdate DATE, /* 등록일자 */
	cp_enddate DATE /* 마감날짜 */
);

CREATE UNIQUE INDEX PK_coupon
	ON coupon (
		cp_cpno ASC
	);

ALTER TABLE coupon
	ADD
		CONSTRAINT PK_coupon
		PRIMARY KEY (
			cp_cpno
		);

/* 포인트 */
CREATE TABLE point (
	pp_payno VARCHAR2(20) NOT NULL, /* 포인트번호 */
	pp_name VARCHAR2(50), /* 포인트명 */
	pp_desc VARCHAR2(200), /* 포인트설명 */
	pp_date DATE /* 등록일시 */
);

CREATE UNIQUE INDEX PK_point
	ON point (
		pp_payno ASC
	);

ALTER TABLE point
	ADD
		CONSTRAINT PK_point
		PRIMARY KEY (
			pp_payno
		);

/* 리뷰 */
CREATE TABLE review (
	rv_no VARCHAR2( 50) NOT NULL, /* 리뷰번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	rv_content VARCHAR2(500), /* 후기내용 */
	rv_star NUMBER(2), /* 별점 */
	rv_date DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_review
	ON review (
		rv_no ASC
	);

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			rv_no
		);

/* MD */
CREATE TABLE md (
	md_no VARCHAR2(50) NOT NULL, /* MD번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	md_date DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_md
	ON md (
		md_no ASC
	);

ALTER TABLE md
	ADD
		CONSTRAINT PK_md
		PRIMARY KEY (
			md_no
		);

/* 문의 */
CREATE TABLE ask (
	a_no VARCHAR2(50) NOT NULL, /* 문의번호 */
	a_title VARCHAR2(200), /* 문의명 */
	a_content VARCHAR2(2000), /* 문의내용 */
	um_no VARCHAR2(50), /* 회원번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	a_date DATE, /* 문의날짜 */
	a_status VARCHAR2(10) /* 문의상태 */
);

CREATE UNIQUE INDEX PK_ask
	ON ask (
		a_no ASC
	);

ALTER TABLE ask
	ADD
		CONSTRAINT PK_ask
		PRIMARY KEY (
			a_no
		);

/* 브랜드 */
CREATE TABLE brandMember (
	bm_no VARCHAR2(20) NOT NULL, /* 브랜드번호 */
	bm_id VARCHAR2(20) NOT NULL, /* 아이디 */
	bm_password VARCHAR2(20) NOT NULL, /* 비번 */
	bm_manager VARCHAR2(20), /* 담당자 */
	bm_email VARCHAR2(50), /* 담당자 이메일 */
	bm_tel VARCHAR2(50), /* 담당자 번호 */
	bm_ars VARCHAR2(20), /* 호칭 */
	bm_agree VARCHAR2(5) /* 승인여부 */
);

CREATE UNIQUE INDEX PK_brandMember
	ON brandMember (
		bm_no ASC
	);

ALTER TABLE brandMember
	ADD
		CONSTRAINT PK_brandMember
		PRIMARY KEY (
			bm_no
		);

/* 브랜드 테마 */
CREATE TABLE brandTheme (
	bm_no VARCHAR2(20) NOT NULL, /* 브랜드번호 */
	bt_color VARCHAR2(20), /* 색 */
	bt_logo VARCHAR2(200), /* 로고이미지 */
	bt_font VARCHAR2(20), /* 폰트 */
	bt_date DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_brandTheme
	ON brandTheme (
		bm_no ASC
	);

ALTER TABLE brandTheme
	ADD
		CONSTRAINT PK_brandTheme
		PRIMARY KEY (
			bm_no
		);

/* 브랜드 정보 */
CREATE TABLE brandInfo (
	bm_no VARCHAR2(20) NOT NULL, /* 브랜드번호 */
	bi_biznum VARCHAR2(50), /* 사업자번호 */
	bi_name VARCHAR2(50), /* 업체명 */
	bi_tel VARCHAR2(50), /* 업체연락처 */
	bi_repr VARCHAR2(20), /* 대표자 이름 */
	bi_commnum VARCHAR2(50), /* 통신매입번호 */
	bi_addr VARCHAR2(100), /* 업체주소 */
	bi_desc VARCHAR2(500), /* 설명글 */
	bi_bizlic VARCHAR2(100), /* 사업자등록증 */
	bi_shop VARCHAR2(100), /* 운영중쇼핑몰 */
	bi_insta VARCHAR2(100), /* SNS(인스) */
	bi_sns VARCHAR2(100), /* SNS(기타) */
	bi_fax VARCHAR2(50), /* 팩스번호 */
	bi_date DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_brandInfo
	ON brandInfo (
		bm_no ASC
	);

ALTER TABLE brandInfo
	ADD
		CONSTRAINT PK_brandInfo
		PRIMARY KEY (
			bm_no
		);

/* 리뷰댓글 */
CREATE TABLE comments (
	cm_no VARCHAR2(50) NOT NULL, /* 댓글번호 */
	rv_no VARCHAR2( 50), /* 리뷰번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	cm_content VARCHAR2(200), /* 등록내용 */
	cm_date DATE /* 등록일 */
);

CREATE UNIQUE INDEX PK_comments
	ON comments (
		cm_no ASC
	);

ALTER TABLE comments
	ADD
		CONSTRAINT PK_comments
		PRIMARY KEY (
			cm_no
		);

/* 문의 댓글 */
CREATE TABLE askReview (
	ar_no NUMBER(3) NOT NULL, /* 답변번호 */
	a_no VARCHAR2(50), /* 문의번호 */
	um_no VARCHAR2(50), /* 회원번호 */
	bm_no VARCHAR2(20), /* 브랜드번호 */
	ar_content VARCHAR2(200), /* 댓글내용 */
	ar_date DATE, /* 상담일시 */
	ar_status NUMBER(1) /* 상담상태 */
);

CREATE UNIQUE INDEX PK_askReview
	ON askReview (
		ar_no ASC
	);

ALTER TABLE askReview
	ADD
		CONSTRAINT PK_askReview
		PRIMARY KEY (
			ar_no
		);

/* 포인트 적용 */
CREATE TABLE pointAp (
	pa_no VARCHAR2(10) NOT NULL, /* 포인트적용 */
	pp_payno VARCHAR2(20) NOT NULL, /* 포인트번호 */
	um_no VARCHAR2(50) NOT NULL, /* 회원번호 */
	pa_point NUMBER(50), /* 포인트 */
	pa_date DATE /* 적립일 */
);

CREATE UNIQUE INDEX PK_pointAp
	ON pointAp (
		pa_no ASC
	);

ALTER TABLE pointAp
	ADD
		CONSTRAINT PK_pointAp
		PRIMARY KEY (
			pa_no
		);

/* 쿠폰적용 */
CREATE TABLE couponAp (
	cpa_no VARCHAR2(10) NOT NULL, /* 쿠폰적용번호 */
	cp_cpno VARCHAR2(10), /* 쿠폰번호 */
	um_no VARCHAR2(50) /* 회원번호 */
);

CREATE UNIQUE INDEX PK_couponAp
	ON couponAp (
		cpa_no ASC
	);

ALTER TABLE couponAp
	ADD
		CONSTRAINT PK_couponAp
		PRIMARY KEY (
			cpa_no
		);

/* 입점문의 */
CREATE TABLE brandCheck (
	ab_no VARCHAR2(20) NOT NULL, /* 입점문의 번호 */
	bm_no VARCHAR2(20) /* 브랜드번호 */
);

CREATE UNIQUE INDEX PK_brandCheck
	ON brandCheck (
		ab_no ASC
	);

ALTER TABLE brandCheck
	ADD
		CONSTRAINT PK_brandCheck
		PRIMARY KEY (
			ab_no
		);

/* 배송적용 */
CREATE TABLE deliveryAp (
	da_no VARCHAR2(30) NOT NULL, /* 배송적용번호  */
	d_dno VARCHAR2(30), /* 배송업처번호 */
	p_pno VARCHAR2(50), /* 상품코드번호 */
	da_date DATE /* 적용일 */
);

CREATE UNIQUE INDEX PK_deliveryAp
	ON deliveryAp (
		da_no ASC
	);

ALTER TABLE deliveryAp
	ADD
		CONSTRAINT PK_deliveryAp
		PRIMARY KEY (
			da_no
		);

ALTER TABLE userMember
	ADD
		CONSTRAINT FK_membership_TO_userMember
		FOREIGN KEY (
			ms_grade
		)
		REFERENCES membership (
			ms_grade
		);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT FK_userMember_TO_COMMUNITY
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE COMMENT
	ADD
		CONSTRAINT FK_COMMUNITY_TO_COMMENT
		FOREIGN KEY (
			cm_bdno
		)
		REFERENCES COMMUNITY (
			cm_bdno
		);

ALTER TABLE COMMENT
	ADD
		CONSTRAINT FK_userMember_TO_COMMENT
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_kategorie_TO_PRODUCT
		FOREIGN KEY (
			g_cno
		)
		REFERENCES kategorie (
			g_cno
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_code_TO_PRODUCT
		FOREIGN KEY (
			p_pno
		)
		REFERENCES code (
			p_pno
		);

ALTER TABLE PRODUCT
	ADD
		CONSTRAINT FK_brandMember_TO_PRODUCT
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_delivery_TO_buy
		FOREIGN KEY (
			d_dno
		)
		REFERENCES delivery (
			d_dno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_userMember_TO_buy
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_pay_TO_buy
		FOREIGN KEY (
			ob_payno
		)
		REFERENCES pay (
			ob_payno
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_productbuy_TO_buy
		FOREIGN KEY (
			o_odno
		)
		REFERENCES productbuy (
			o_odno
		);

ALTER TABLE pay
	ADD
		CONSTRAINT FK_pointAp_TO_pay
		FOREIGN KEY (
			pa_no
		)
		REFERENCES pointAp (
			pa_no
		);

ALTER TABLE pay
	ADD
		CONSTRAINT FK_membership_TO_pay
		FOREIGN KEY (
			ms_grade
		)
		REFERENCES membership (
			ms_grade
		);

ALTER TABLE pay
	ADD
		CONSTRAINT FK_couponAp_TO_pay
		FOREIGN KEY (
			cpa_no
		)
		REFERENCES couponAp (
			cpa_no
		);

ALTER TABLE pay
	ADD
		CONSTRAINT FK_deliveryAp_TO_pay
		FOREIGN KEY (
			da_no
		)
		REFERENCES deliveryAp (
			da_no
		);

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_PRODUCT_TO_productbuy
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE code
	ADD
		CONSTRAINT FK_divisionCode_TO_code
		FOREIGN KEY (
			dc_pcno
		)
		REFERENCES divisionCode (
			dc_pcno
		);

ALTER TABLE shoppingBasket
	ADD
		CONSTRAINT FK_userMember_TO_shoppingBasket
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE shoppingBasket
	ADD
		CONSTRAINT FK_PRODUCT_TO_shoppingBasket
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_userMember_TO_keep
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_PRODUCT_TO_keep
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE keep
	ADD
		CONSTRAINT FK_brandMember_TO_keep
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_brandMember_TO_review
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_PRODUCT_TO_review
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE review
	ADD
		CONSTRAINT FK_userMember_TO_review
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE md
	ADD
		CONSTRAINT FK_brandMember_TO_md
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE md
	ADD
		CONSTRAINT FK_PRODUCT_TO_md
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE ask
	ADD
		CONSTRAINT FK_userMember_TO_ask
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE ask
	ADD
		CONSTRAINT FK_brandMember_TO_ask
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE brandTheme
	ADD
		CONSTRAINT FK_brandMember_TO_brandTheme
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE brandInfo
	ADD
		CONSTRAINT FK_brandMember_TO_brandInfo
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_brandMember_TO_comments
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_review_TO_comments
		FOREIGN KEY (
			rv_no
		)
		REFERENCES review (
			rv_no
		);

ALTER TABLE askReview
	ADD
		CONSTRAINT FK_ask_TO_askReview
		FOREIGN KEY (
			a_no
		)
		REFERENCES ask (
			a_no
		);

ALTER TABLE askReview
	ADD
		CONSTRAINT FK_userMember_TO_askReview
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE askReview
	ADD
		CONSTRAINT FK_brandMember_TO_askReview
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE pointAp
	ADD
		CONSTRAINT FK_userMember_TO_pointAp
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE pointAp
	ADD
		CONSTRAINT FK_point_TO_pointAp
		FOREIGN KEY (
			pp_payno
		)
		REFERENCES point (
			pp_payno
		);

ALTER TABLE couponAp
	ADD
		CONSTRAINT FK_coupon_TO_couponAp
		FOREIGN KEY (
			cp_cpno
		)
		REFERENCES coupon (
			cp_cpno
		);

ALTER TABLE couponAp
	ADD
		CONSTRAINT FK_userMember_TO_couponAp
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE brandCheck
	ADD
		CONSTRAINT FK_brandMember_TO_brandCheck
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);

ALTER TABLE deliveryAp
	ADD
		CONSTRAINT FK_delivery_TO_deliveryAp
		FOREIGN KEY (
			d_dno
		)
		REFERENCES delivery (
			d_dno
		);

ALTER TABLE deliveryAp
	ADD
		CONSTRAINT FK_PRODUCT_TO_deliveryAp
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);