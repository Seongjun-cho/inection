package com.inection.vo;

import com.inection.util.ConventionCheckUtil;

public class FaqVO {

	/**
	 * 
	 * @since 2013.9.2
	 * @author wonjongtae & leekyunggun
	 * @category 게시판 기능을 사용하기 위한 vo 선언
	 * 
	 * */

	int sseq, startRow, endRow, RNUM;
	String question, answer, regdate, curPage, inputType;
	
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
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		question = checkUtil.sqlFilter(question);
		question = checkUtil.clearXSS(question);
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		answer = checkUtil.sqlFilter(answer);
		answer = checkUtil.clearXSS(answer);
		this.answer = answer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
//		regdate = checkUtil.sqlFilter(regdate);
//		regdate = checkUtil.clearXSS(regdate);
		this.regdate = regdate;
	}
	public String getCurPage() {
		return curPage;
	}
	public void setCurPage(String curPage) {
		curPage = checkUtil.sqlFilter(curPage);
		curPage = checkUtil.clearXSS(curPage);
		this.curPage = curPage;
	}
	public String getInputType() {
		return inputType;
	}
	public void setInputType(String inputType) {
		inputType = checkUtil.sqlFilter(inputType);
		inputType = checkUtil.clearXSS(inputType);
		this.inputType = inputType;
	}
	
	
	
}
