/* 커뮤니티 */
CREATE TABLE community (
	cm_bdno NUMBER(3) NOT NULL, /* 게시물번호 */
	cm_writer VARCHAR2(20), /* 작성자 */
	cm_title VARCHAR2(50), /* 제목 */
	cm_desc VARCHAR2(500), /* 본문 */
	cm_cnt NUMBER(3) DEFAULT 0, /* 조회수 */
	cm_del VARCHAR2(5) DEFAULT '0', /* 삭제여부 */
	cm_regdate DATE DEFAULT SYSDATE, /* 등록일시 */
	cm_update DATE DEFAULT SYSDATE /* 수정일시 */
);

COMMENT ON TABLE community IS '커뮤니티';

COMMENT ON COLUMN community.cm_bdno IS '게시물번호';

COMMENT ON COLUMN community.cm_writer IS '작성자';

COMMENT ON COLUMN community.cm_title IS '제목';

COMMENT ON COLUMN community.cm_desc IS '본문';

COMMENT ON COLUMN community.cm_cnt IS '조회수';

COMMENT ON COLUMN community.cm_del IS '삭제여부';

COMMENT ON COLUMN community.cm_regdate IS '등록일시';

COMMENT ON COLUMN community.cm_update IS '수정일시';

CREATE UNIQUE INDEX PK_community
	ON community (
		cm_bdno ASC
	);

ALTER TABLE community
	ADD
		CONSTRAINT PK_community
		PRIMARY KEY (
			cm_bdno
		);

/* 댓글 */
CREATE TABLE reply (
	r_no NUMBER(3) NOT NULL, /* 댓글번호 */
	cm_bdno NUMBER(3), /* 게시물번호 */
	r_content VARCHAR2(500), /* 댓글본문 */
	r_del VARCHAR2(10) DEFAULT '0', /* 삭제여부 */
	r_date DATE DEFAULT SYSDATE, /* 등록일시 */
	r_writer VARCHAR2(20) /* 작성자 */
);

COMMENT ON TABLE reply IS '댓글';

COMMENT ON COLUMN reply.r_no IS '댓글번호';

COMMENT ON COLUMN reply.cm_bdno IS '게시물번호';

COMMENT ON COLUMN reply.r_content IS '댓글본문';

COMMENT ON COLUMN reply.r_del IS '삭제여부';

COMMENT ON COLUMN reply.r_date IS '등록일시';

COMMENT ON COLUMN reply.r_writer IS '작성자';

CREATE UNIQUE INDEX PK_reply
	ON reply (
		r_no ASC
	);

ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply
		PRIMARY KEY (
			r_no
		);





/* 장바구니 */
CREATE TABLE basket (
	s_no NUMBER(3) NOT NULL, /* 장바구니번호 */
	um_no NUMBER(3), /* 회원번호 */
	p_pno NUMBER(3), /* 상품코드번호 */
	s_quantity NUMBER(3), /* 주문 수량 */
	s_date DATE DEFAULT SYSDATE /* 등록일시 */
);

COMMENT ON TABLE basket IS '장바구니';

COMMENT ON COLUMN basket.s_no IS '장바구니번호';

COMMENT ON COLUMN basket.um_no IS '회원번호';

COMMENT ON COLUMN basket.p_pno IS '상품코드번호';

COMMENT ON COLUMN basket.s_quantity IS '주문 수량';

COMMENT ON COLUMN basket.s_date IS '등록일시';

CREATE UNIQUE INDEX PK_basket
	ON basket (
		s_no ASC
	);

ALTER TABLE basket
	ADD
		CONSTRAINT PK_basket
		PRIMARY KEY (
			s_no
		);

/* 찜 */
CREATE TABLE keep (
	k_no NUMBER(3) NOT NULL, /* 찜번호 */
	um_no NUMBER(3), /* 회원번호 */
	p_pno NUMBER(3), /* 상품코드번호 */
	bm_no NUMBER(3), /* 브랜드번호 */
	k_date DATE DEFAULT SYSDATE /* 찜한날 */
);

COMMENT ON TABLE keep IS '찜';

COMMENT ON COLUMN keep.k_no IS '찜번호';

COMMENT ON COLUMN keep.um_no IS '회원번호';

COMMENT ON COLUMN keep.p_pno IS '상품코드번호';

COMMENT ON COLUMN keep.bm_no IS '브랜드번호';

COMMENT ON COLUMN keep.k_date IS '찜한날';

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
	ms_grade NUMBER(3) NOT NULL, /* 멤버십등급 */
	ms_desc VARCHAR2(100), /* 혜택설명 */
	ms_sale VARCHAR2(30) /* 할인률 */
);

insert into membership(ms_grade,ms_desc,ms_sale) values(1,1,1); select * from MEMBERSHIP;

COMMENT ON TABLE membership IS '멤버십';

COMMENT ON COLUMN membership.ms_grade IS '멤버십등급';

COMMENT ON COLUMN membership.ms_desc IS '혜택설명';

COMMENT ON COLUMN membership.ms_sale IS '할인률';

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
	cp_cpno NUMBER(3) NOT NULL, /* 쿠폰번호 */
	cp_name VARCHAR2(50), /* 쿠폰명 */
	cp_content VARCHAR2(1000), /* 쿠폰내용 */
	cp_image VARCHAR2(500), /* 이미지 */
	cp_regdate DATE DEFAULT SYSDATE, /* 등록일자 */
	cp_enddate DATE  /* 마감날짜 */
);

COMMENT ON TABLE coupon IS '쿠폰';

COMMENT ON COLUMN coupon.cp_cpno IS '쿠폰번호';

COMMENT ON COLUMN coupon.cp_name IS '쿠폰명';

COMMENT ON COLUMN coupon.cp_content IS '쿠폰내용';

COMMENT ON COLUMN coupon.cp_image IS '이미지';

COMMENT ON COLUMN coupon.cp_regdate IS '등록일자';

COMMENT ON COLUMN coupon.cp_enddate IS '마감날짜';

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
	pp_payno NUMBER(3) NOT NULL, /* 포인트번호 */
	pp_name VARCHAR2(50), /* 포인트명 */
	pp_desc VARCHAR2(200), /* 포인트설명 */
	pp_date DATE DEFAULT SYSDATE /* 등록일시 */
);

COMMENT ON TABLE point IS '포인트';

COMMENT ON COLUMN point.pp_payno IS '포인트번호';

COMMENT ON COLUMN point.pp_name IS '포인트명';

COMMENT ON COLUMN point.pp_desc IS '포인트설명';

COMMENT ON COLUMN point.pp_date IS '등록일시';

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
	rv_no NUMBER(3) NOT NULL, /* 리뷰번호 */
	p_pno NUMBER(3), /* 상품코드번호 */
	um_no NUMBER(3), /* 회원번호 */
	rv_status VARCHAR2(5) DEFAULT '0', /* 리뷰상태 */
	rv_content VARCHAR2(500), /* 후기내용 */
	rv_star NUMBER(2), /* 별점 */
	rv_date DATE DEFAULT SYSDATE, /* 등록일 */
	cm_no NUMBER(3) /* 댓글번호 */
);

COMMENT ON TABLE review IS '리뷰';

COMMENT ON COLUMN review.rv_no IS '리뷰번호';

COMMENT ON COLUMN review.p_pno IS '상품코드번호';

COMMENT ON COLUMN review.um_no IS '회원번호';

COMMENT ON COLUMN review.rv_status IS '리뷰상태';

COMMENT ON COLUMN review.rv_content IS '후기내용';

COMMENT ON COLUMN review.rv_star IS '별점';

COMMENT ON COLUMN review.rv_date IS '등록일';

COMMENT ON COLUMN review.cm_no IS '댓글번호';

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


/* 브랜드문의 */
CREATE TABLE ask (
	a_no NUMBER(3) NOT NULL, /* 문의번호 */
	a_title VARCHAR2(200), /* 문의명 */
	a_content VARCHAR2(1000), /* 문의내용 */
	um_no NUMBER(3), /* 회원번호 */
	bm_no NUMBER(3), /* 브랜드번호 */
	a_pmm VARCHAR2(20), /* PMM */
	a_date DATE DEFAULT SYSDATE, /* 문의날짜 */
	a_status VARCHAR2(10), /* 문의상태 */
	ar_no NUMBER(3) /* 답변번호 */
);

COMMENT ON TABLE ask IS '브랜드문의';

COMMENT ON COLUMN ask.a_no IS '문의번호';

COMMENT ON COLUMN ask.a_title IS '문의명';

COMMENT ON COLUMN ask.a_content IS '문의내용';

COMMENT ON COLUMN ask.um_no IS '회원번호';

COMMENT ON COLUMN ask.bm_no IS '브랜드번호';

COMMENT ON COLUMN ask.a_pmm IS 'PMM';

COMMENT ON COLUMN ask.a_date IS '문의날짜';

COMMENT ON COLUMN ask.a_status IS '문의상태';

COMMENT ON COLUMN ask.ar_no IS '답변번호';

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
	bm_no NUMBER(3) NOT NULL, /* 브랜드번호 */
	bm_id VARCHAR2(20) NOT NULL, /* 아이디 */
	bm_password VARCHAR2(20) NOT NULL, /* 비번 */
	bm_manager VARCHAR2(20), /* 담당자 */
	bm_email VARCHAR2(50), /* 담당자 이메일 */
	bm_tel VARCHAR2(50), /* 담당자 번호 */
	bm_ars VARCHAR2(20), /* 호칭 */
	bm_agree VARCHAR2(5) DEFAULT '0'  /* 승인여부 */
);

COMMENT ON TABLE brandMember IS '브랜드';

COMMENT ON COLUMN brandMember.bm_no IS '브랜드번호';

COMMENT ON COLUMN brandMember.bm_id IS '아이디';

COMMENT ON COLUMN brandMember.bm_password IS '비번';

COMMENT ON COLUMN brandMember.bm_manager IS '담당자';

COMMENT ON COLUMN brandMember.bm_email IS '담당자 이메일';

COMMENT ON COLUMN brandMember.bm_tel IS '담당자 번호';

COMMENT ON COLUMN brandMember.bm_ars IS '호칭';

COMMENT ON COLUMN brandMember.bm_agree IS '승인여부';

CREATE UNIQUE INDEX PK_brandMember
	ON brandMember (
		bm_no ASC
	);

CREATE UNIQUE INDEX UIX_brandMember
	ON brandMember (
		bm_id ASC
	);

ALTER TABLE brandMember
	ADD
		CONSTRAINT PK_brandMember
		PRIMARY KEY (
			bm_no
		);

ALTER TABLE brandMember
	ADD
		CONSTRAINT UK_brandMember
		UNIQUE (
			bm_id
		);


/* 리뷰댓글 */
CREATE TABLE comments (
	cm_no NUMBER(3) NOT NULL, /* 댓글번호 */
	cm_content VARCHAR2(200), /* 등록내용 */
	cm_date DATE DEFAULT SYSDATE, /* 등록일 */
	cm_id VARCHAR2(20), /* 상담자 */
	cm_status VARCHAR2(5) /* 댓글 상태 */
);

COMMENT ON TABLE comments IS '리뷰댓글';

COMMENT ON COLUMN comments.cm_no IS '댓글번호';

COMMENT ON COLUMN comments.cm_content IS '등록내용';

COMMENT ON COLUMN comments.cm_date IS '등록일';

COMMENT ON COLUMN comments.cm_id IS '상담자';

COMMENT ON COLUMN comments.cm_status IS '댓글 상태';

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
	ar_content VARCHAR2(200), /* 댓글내용 */
	ar_date DATE DEFAULT SYSDATE, /* 상담일시 */
	ar_status VARCHAR2(5), /* 댓글 상태 */
	ar_id VARCHAR2(20) /* 상담자 */
);

COMMENT ON TABLE askReview IS '문의 댓글';

COMMENT ON COLUMN askReview.ar_no IS '답변번호';

COMMENT ON COLUMN askReview.ar_content IS '댓글내용';

COMMENT ON COLUMN askReview.ar_date IS '상담일시';

COMMENT ON COLUMN askReview.ar_status IS '댓글 상태';

COMMENT ON COLUMN askReview.ar_id IS '상담자';

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
	pa_no NUMBER(3) NOT NULL, /* 포인트적용 */
	pp_payno NUMBER(3) NOT NULL, /* 포인트번호 */
	um_no NUMBER(3) NOT NULL, /* 회원번호 */
	pa_point NUMBER(5), /* 포인트 */
	pa_status VARCHAR2(3), /* 적용상태 */
	pa_date DATE DEFAULT SYSDATE /* 적립일 */
);

COMMENT ON TABLE pointAp IS '포인트 적용';

COMMENT ON COLUMN pointAp.pa_no IS '포인트적용';

COMMENT ON COLUMN pointAp.pp_payno IS '포인트번호';

COMMENT ON COLUMN pointAp.um_no IS '회원번호';

COMMENT ON COLUMN pointAp.pa_point IS '포인트';

COMMENT ON COLUMN pointAp.pa_status IS '적용상태';

COMMENT ON COLUMN pointAp.pa_date IS '적립일';

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
	cpa_no NUMBER(3) NOT NULL, /* 쿠폰적용번호 */
	cp_cpno NUMBER(3), /* 쿠폰번호 */
	um_no NUMBER(3), /* 회원번호 */
	cpa_date DATE DEFAULT SYSDATE, /* 적립일 */
	cpa_status VARCHAR2(3) /* 적용상태 */
);

COMMENT ON TABLE couponAp IS '쿠폰적용';

COMMENT ON COLUMN couponAp.cpa_no IS '쿠폰적용번호';

COMMENT ON COLUMN couponAp.cp_cpno IS '쿠폰번호';

COMMENT ON COLUMN couponAp.um_no IS '회원번호';

COMMENT ON COLUMN couponAp.cpa_date IS '적립일';

COMMENT ON COLUMN couponAp.cpa_status IS '적용상태';

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

/* User */
CREATE TABLE userMember (
	um_no NUMBER(3) NOT NULL, /* 회원번호 */
	um_mid VARCHAR2(20), /* 회원아이디 */
	um_ars VARCHAR2(20) NOT NULL, /* 닉네임 */
	um_grade VARCHAR2(10), /* 회원등급 */
	um_password VARCHAR2(20) NOT NULL, /* 비밀번호 */
	um_ymd VARCHAR2(20), /* 생년월일 */
	um_gender VARCHAR2(10), /* 성별 */
	um_addr VARCHAR2(100), /* 주소 */
	um_email VARCHAR2(50), /* 이메일 */
	um_tel VARCHAR2(50), /* 휴대전화 */
	um_snsch VARCHAR2(5), /* SNS수신여부 */
	um_emailch VARCHAR2(5), /* 이메일수신여부 */
	um_regdate DATE DEFAULT SYSDATE, /* 회원가입일시 */
	ms_grade NUMBER(3) /* 멤버십등급 */
);

COMMENT ON TABLE userMember IS 'User';

COMMENT ON COLUMN userMember.um_no IS '회원번호';

COMMENT ON COLUMN userMember.um_mid IS '회원아이디';

COMMENT ON COLUMN userMember.um_ars IS '닉네임';

COMMENT ON COLUMN userMember.um_grade IS '회원등급';

COMMENT ON COLUMN userMember.um_password IS '비밀번호';

COMMENT ON COLUMN userMember.um_ymd IS '생년월일';

COMMENT ON COLUMN userMember.um_gender IS '성별';

COMMENT ON COLUMN userMember.um_addr IS '주소';

COMMENT ON COLUMN userMember.um_email IS '이메일';

COMMENT ON COLUMN userMember.um_tel IS '휴대전화';

COMMENT ON COLUMN userMember.um_snsch IS 'SNS수신여부';

COMMENT ON COLUMN userMember.um_emailch IS '이메일수신여부';

COMMENT ON COLUMN userMember.um_regdate IS '회원가입일시';

COMMENT ON COLUMN userMember.ms_grade IS '멤버십등급';

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

/* 입점문의 */
CREATE TABLE askenter (
	ae_no NUMBER(3) NOT NULL, /* 문의 번호 */
	ae_name VARCHAR2(50), /* 업체명 */
	ae_tel VARCHAR2(20), /* 업체연락처 */
	ae_email VARCHAR2(50), /* 이메일주소 */
	ae_title VARCHAR2(50), /* 문의 제목 */
	ae_content VARCHAR2(500), /* 문의 내용 */
	ae_file VARCHAR2(500), /* 첨부파일 */
	ae_pw VARCHAR2(20), /* 비밀번호 */
	ae_date DATE DEFAULT SYSDATE /* 문의 날 */
);

COMMENT ON TABLE askenter IS '입점문의';

COMMENT ON COLUMN askenter.ae_no IS '문의 번호';

COMMENT ON COLUMN askenter.ae_name IS '업체명';

COMMENT ON COLUMN askenter.ae_tel IS '업체연락처';

COMMENT ON COLUMN askenter.ae_email IS '이메일주소';

COMMENT ON COLUMN askenter.ae_title IS '문의 제목';

COMMENT ON COLUMN askenter.ae_content IS '문의 내용';

COMMENT ON COLUMN askenter.ae_file IS '첨부파일';

COMMENT ON COLUMN askenter.ae_pw IS '비밀번호';

COMMENT ON COLUMN askenter.ae_date IS '문의 날';

CREATE UNIQUE INDEX PK_askenter
	ON askenter (
		ae_no ASC
	);

ALTER TABLE askenter
	ADD
		CONSTRAINT PK_askenter
		PRIMARY KEY (
			ae_no
		);

/* 입점문의 답변 */
CREATE TABLE askAnswer (
	ae_no NUMBER(3) NOT NULL, /* 문의 번호 */
	bm_no NUMBER(3), /* 브랜드번호 */
	aa_content VARCHAR2(500), /* 문의 답변 */
	aa_status VARCHAR2(10), /* 답변상태 */
	aa_date DATE  DEFAULT SYSDATE /* 답변날짜 */
);

COMMENT ON TABLE askAnswer IS '입점문의 답변';

COMMENT ON COLUMN askAnswer.ae_no IS '문의 번호';

COMMENT ON COLUMN askAnswer.bm_no IS '브랜드번호';

COMMENT ON COLUMN askAnswer.aa_content IS '문의 답변';

COMMENT ON COLUMN askAnswer.aa_status IS '답변상태';

COMMENT ON COLUMN askAnswer.aa_date IS '답변날짜';

CREATE UNIQUE INDEX PK_askAnswer
	ON askAnswer (
		ae_no ASC
	);

ALTER TABLE askAnswer
	ADD
		CONSTRAINT PK_askAnswer
		PRIMARY KEY (
			ae_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_community_TO_reply
		FOREIGN KEY (
			cm_bdno
		)
		REFERENCES community (
			cm_bdno
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
		CONSTRAINT FK_productbuy_TO_buy
		FOREIGN KEY (
			o_odno
		)
		REFERENCES productbuy (
			o_odno
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
		CONSTRAINT FK_pointAp_TO_buy
		FOREIGN KEY (
			pa_no
		)
		REFERENCES pointAp (
			pa_no
		);

ALTER TABLE buy
	ADD
		CONSTRAINT FK_couponAp_TO_buy
		FOREIGN KEY (
			cpa_no
		)
		REFERENCES couponAp (
			cpa_no
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

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_userMember_TO_productbuy
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE productbuy
	ADD
		CONSTRAINT FK_basket_TO_productbuy
		FOREIGN KEY (
			s_no
		)
		REFERENCES basket (
			s_no
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

ALTER TABLE code
	ADD
		CONSTRAINT FK_PRODUCT_TO_code
		FOREIGN KEY (
			p_pno
		)
		REFERENCES PRODUCT (
			p_pno
		);

ALTER TABLE basket
	ADD
		CONSTRAINT FK_userMember_TO_basket
		FOREIGN KEY (
			um_no
		)
		REFERENCES userMember (
			um_no
		);

ALTER TABLE basket
	ADD
		CONSTRAINT FK_PRODUCT_TO_basket
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

ALTER TABLE review
	ADD
		CONSTRAINT FK_comments_TO_review
		FOREIGN KEY (
			cm_no
		)
		REFERENCES comments (
			cm_no
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
		CONSTRAINT FK_askReview_TO_ask
		FOREIGN KEY (
			ar_no
		)
		REFERENCES askReview (
			ar_no
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

ALTER TABLE pointAp
	ADD
		CONSTRAINT FK_point_TO_pointAp
		FOREIGN KEY (
			pp_payno
		)
		REFERENCES point (
			pp_payno
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

ALTER TABLE userMember
	ADD
		CONSTRAINT FK_membership_TO_userMember
		FOREIGN KEY (
			ms_grade
		)
		REFERENCES membership (
			ms_grade
		);

ALTER TABLE askAnswer
	ADD
		CONSTRAINT FK_askenter_TO_askAnswer
		FOREIGN KEY (
			ae_no
		)
		REFERENCES askenter (
			ae_no
		);

ALTER TABLE askAnswer
	ADD
		CONSTRAINT FK_brandMember_TO_askAnswer
		FOREIGN KEY (
			bm_no
		)
		REFERENCES brandMember (
			bm_no
		);