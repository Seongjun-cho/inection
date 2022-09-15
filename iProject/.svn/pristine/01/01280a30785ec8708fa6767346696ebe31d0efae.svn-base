package com.inection.vo;

import java.io.File;

import com.inection.util.ConventionCheckUtil;

public class ReferenceVO {

	/**
	 * 
	 * @since 2013.9.2
	 * @author wonjongtae & leekyunggun
	 * @category 게시판 기능을 사용하기 위한 vo 선언
	 * 
	 * */

	int sseq, cnt, groupNo, orderNo, nested, startRow, endRow, RNUM;
	
	String subject, content, regdate, writer, isfile, filename, fileType, excelFile,
	filerename, file_path, searchType, searchString, inputType, curPage, statusMessage;
	
	private File   file;  
	private String fileFileName;  
	private long   fileFileSize;
	private String fileContentType; 
	
	ConventionCheckUtil checkUtil = new ConventionCheckUtil();
	
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getNested() {
		return nested;
	}
	public void setNested(int nested) {
		this.nested = nested;
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
		subject = checkUtil.sqlFilter(subject);
		subject = checkUtil.clearXSS(subject);
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		content = checkUtil.sqlFilter(content);
		content = checkUtil.clearXSS(content);
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
//		regdate = checkUtil.sqlFilter(regdate);
//		regdate = checkUtil.clearXSS(regdate);
		this.regdate = regdate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		writer = checkUtil.sqlFilter(writer);
		writer = checkUtil.clearXSS(writer);
		this.writer = writer;
	}
	public String getIsfile() {
		return isfile;
	}
	public void setIsfile(String isfile) {
		isfile = checkUtil.sqlFilter(isfile);
		isfile = checkUtil.clearXSS(isfile);
		this.isfile = isfile;
	}
//	public String getFilename() {
//		return filename;
//	}
//	public void setFilename(String filename) {
////		filename = checkUtil.sqlFilter(filename);
////		filename = checkUtil.clearXSS(filename);
//		this.filename = filename;
//	}
	public String getFilerename() {
		return filerename;
	}
	public void setFilerename(String filerename) {
		filerename = checkUtil.sqlFilter(filerename);
		filerename = checkUtil.clearXSS(filerename);
		this.filerename = filerename;
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		file_path = checkUtil.sqlFilter(file_path); 
		file_path = checkUtil.clearXSS(file_path);
		this.file_path = file_path;
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
	public String getStatusMessage() {
		return statusMessage;
	}
	public void setStatusMessage(String statusMessage) {
		statusMessage = checkUtil.sqlFilter(statusMessage);
		statusMessage = checkUtil.clearXSS(statusMessage);
		this.statusMessage = statusMessage;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public long getFileFileSize() {
		return fileFileSize;
	}
	public void setFileFileSize(long fileFileSize) {
		this.fileFileSize = fileFileSize;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getExcelFile() {
		return excelFile;
	}
	public void setExcelFile(String excelFile) {
		excelFile = checkUtil.sqlFilter(excelFile);
		excelFile = checkUtil.clearXSS(excelFile);
		this.excelFile = excelFile;
	}
	
	//TODO : 파일 관련된 부분 수정 기존 스트링 방식으로 되어 있어서 문제가 되었기 때문에 아래로 고침 전부다 수정하게 되면 위에 꺼는 지워주기 
	
	
}//Finish This Class