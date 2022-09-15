package com.inection.vo;

import com.inection.util.ConventionCheckUtil;

public class QnaVO {

	/**
	 * 
	 * @since 2013.9.2
	 * @author wonjongtae & leekyunggun
	 * @category 게시판 기능을 사용하기 위한 vo 선언
	 * 
	 * */

	int sseq, startRow, endRow, RNUM;
	String gb, subject, content, regdate, email, phone, q_id, curPage, searchType, searchString, inputType;
	
	ConventionCheckUtil checkUtil = new ConventionCheckUtil();
	
	
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	public int getRNUM() {
		return RNUM;
	}
	public void setRNUM(int rNUM) {
		RNUM = rNUM;
	}
	public String getGb() {
		return gb;
	}
	public void setGb(String gb) {
		this.gb = gb;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
//		subject = checkUtil.sqlFilter(subject);
//		subject = checkUtil.clearXSS(subject);
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
//		content = checkUtil.sqlFilter(subject);
//		content = checkUtil.clearXSS(subject);
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
//		regdate = checkUtil.sqlFilter(subject);
//		regdate = checkUtil.clearXSS(subject);
		this.regdate = regdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
//		email = checkUtil.sqlFilter(subject);
//		email = checkUtil.clearXSS(subject);
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
//		phone = checkUtil.sqlFilter(subject);
//		phone = checkUtil.clearXSS(subject);
		this.phone = phone;
	}
	public String getQ_id() {
		return q_id;
	}
	public void setQ_id(String q_id) {
//		q_id = checkUtil.sqlFilter(subject);
//		q_id = checkUtil.clearXSS(subject);
		this.q_id = q_id;
	}
	public String getCurPage() {
		return curPage;
	}
	public void setCurPage(String curPage) {
//		curPage = checkUtil.sqlFilter(subject);
//		curPage = checkUtil.clearXSS(subject);
		this.curPage = curPage;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
//		searchType = checkUtil.sqlFilter(subject);
//		searchType = checkUtil.clearXSS(subject);
		this.searchType = searchType;
	}
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
//		searchString = checkUtil.sqlFilter(subject);
//		searchString = checkUtil.clearXSS(subject);
		this.searchString = searchString;
	}
	public String getInputType() {
		return inputType;
	}
	public void setInputType(String inputType) {
//		inputType = checkUtil.sqlFilter(subject);
//		inputType = checkUtil.clearXSS(subject);
		this.inputType = inputType;
	}
	
}
