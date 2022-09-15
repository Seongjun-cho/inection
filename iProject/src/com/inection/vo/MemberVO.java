package com.inection.vo;

import com.inection.util.ConventionCheckUtil;

public class MemberVO {

	/**
	 * 
	 *  @since 2013.9.2
	 *  @author wonjongtae & leekyunggun
	 *  @category 로그인 기능을 사용하기 위한 vo 선언
	 *  
	 *  */
	
	String id, pw, name, phone, company, tel, email ;
	ConventionCheckUtil checkUtil = new ConventionCheckUtil();
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		id = checkUtil.sqlFilter(id);
		id = checkUtil.clearXSS(id);
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		pw = checkUtil.sqlFilter(pw);
		pw = checkUtil.clearXSS(pw);
		this.pw = pw;
	}

	

}
