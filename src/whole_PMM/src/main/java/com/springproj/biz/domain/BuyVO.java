package com.springproj.biz.domain;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BuyVO { // JavaBean
	private String po_no;
	private String o_odno;
	private int    po_total;
	private String pa_no;
	private String cpa_no;
	private String d_dno;
	private String po_drequest;
	private int	   po_price;
	private String po_ptype;
	private String po_name;
	private String po_number;
	private String po_addr;
	private String po_status;
	private Date po_regdate;
}
