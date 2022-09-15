package com.inection.vo;

import com.inection.util.ConventionCheckUtil;

public class RecruitVO {

	/**
	 * 
	 * @since 2013.9.2
	 * @author wonjongtae & leekyunggun
	 * @category 게시판 기능을 사용하기 위한 vo 선언
	 * 
	 * */

	int sseq, startRow, endRow, RNUM;
	String subject, content, regdate, searchType, searchString, inputType, curPage;
	
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
		this.regdate = regdate;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		searchType = checkUtil.sqlFilter(searchType);
		searchType = checkUtil.clearXSS(searchType);
		this.searchType = searchType;
	}
	public String getSearchString() {
		return searchString;
	}
	public void setSearchString(String searchString) {
		searchString = checkUtil.sqlFilter(searchString);
		searchString = checkUtil.clearXSS(searchString);
		this.searchString = searchString;
	}
	public String getInputType() {
		return inputType;
	}
	public void setInputType(String inputType) {
		inputType = checkUtil.sqlFilter(inputType);
		inputType = checkUtil.clearXSS(inputType);
		this.inputType = inputType;
	}
	public String getCurPage() {
		return curPage;
	}
	public void setCurPage(String curPage) { 
		curPage = checkUtil.sqlFilter(curPage);
		curPage = checkUtil.clearXSS(curPage);
		this.curPage = curPage;
	}
	
}
