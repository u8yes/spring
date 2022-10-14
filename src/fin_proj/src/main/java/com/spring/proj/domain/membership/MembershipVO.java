package com.spring.proj.domain.membership;

public class MembershipVO {
	private String ms_grade; // 멤버십 등급 0=비멤버쉽 1=심사대기 2=멤버십
	private String ms_desc; //멤버십 혜택설명
	private String ms_sale; //할인율
	public String getMs_grade() {
		return ms_grade;
	}
	public void setMs_grade(String ms_grade) {
		this.ms_grade = ms_grade;
	}
	public String getMs_desc() {
		return ms_desc;
	}
	public void setMs_desc(String ms_desc) {
		this.ms_desc = ms_desc;
	}
	public String getMs_sale() {
		return ms_sale;
	}
	public void setMs_sale(String ms_sale) {
		this.ms_sale = ms_sale;
	}
	@Override
	public String toString() {
		return "membershipVO [ms_grade=" + ms_grade + ", ms_desc=" + ms_desc + ", ms_sale=" + ms_sale + "]";
	}

}
