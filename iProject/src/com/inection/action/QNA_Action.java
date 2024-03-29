package com.inection.action;

import java.util.List;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.digester.SetTopRule;

import com.inection.dao.QnADao;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.QnaVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * 
 *  @author wonjongtae & leekyunggun
 *  @since  2013.9.2
 *  @category 寃뚯떆���≪뀡
 *  
 *  */

public class QNA_Action implements Action, Preparable, ModelDriven<QnaVO>{
	private final static Logger logger = Logger.getLogger(QNA_Action.class);
	private List<QnaVO> qnaList = null;
	private QnaVO qnaVO = null;
	private PageNavigation paging = null; // �섏씠吏�
	private SessionCheck sc = new SessionCheck();
	
	public List<QnaVO> getQnaList() {
		return qnaList;
	}
	public QnaVO getQnaVO() {
		return qnaVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		qnaVO = new QnaVO();
	}
	
	@Override
	public QnaVO getModel() {
		return qnaVO;
	}
	
	/**
	 * 寃뚯떆��紐⑸줉議고쉶 / 寃�깋$
	 * */
	@Override
	public String execute() throws Exception {
		
		String page = qnaVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		qnaVO.setStartRow(paging.getStartRow());
		qnaVO.setEndRow(paging.getEndRow());
		paging.setTotalCount(QnADao.getDao().getQnaListCnt(qnaVO));
		qnaList = QnADao.getDao().getQnaList(qnaVO);
		
		return SUCCESS;	
		
	}//Finish execute()
	
	/**
	 * 寃뚯떆���곸꽭蹂닿린
	 * */
	public String getQnaDetail() throws Exception{
		
		qnaList = QnADao.getDao().getQnaDetailList(qnaVO);
		
		int qnaNO = qnaVO.getSseq();
		
		qnaVO = QnADao.getDao().getQnaDetail(qnaNO);
		
		return SUCCESS;
	}//Finish getQnaDetail()
	
	/** 
	 * 湲�벐湲�/ �섏젙 
	 * */
	public String setQnaInput() throws Exception{
	try {
				
			int qnaNO = qnaVO.getSseq();
			if(qnaVO.getInputType().equals("update")){ // �섏젙
				qnaVO = QnADao.getDao().getQnaDetail(qnaNO);			
				qnaVO.setInputType("update");
			}else{
				qnaVO.setInputType("insert");
			}
		} catch (Exception e) {
			logger.info("연결예외발생");
		}
		return SUCCESS;
	}//Finish setQnaInput()
	
	/**
	 * 寃뚯떆��湲�벐湲�/ �섏젙�꾨즺 
	 * */
	public String setQnaInputSubmit() throws Exception{
		String inputType = qnaVO.getInputType();
		int result = 0;
		if(inputType.equals("update")){
			result = QnADao.getDao().setQnaUpdate(qnaVO); 
		}else if(inputType.equals("insert")){
			result = QnADao.getDao().getQnaInput(qnaVO);
		}
		
		switch (result) {
		case 1: // 湲�벐湲��꾨즺
			return SUCCESS;
		default: // 湲�벐湲��ㅽ뙣
			return ERROR;
		}		
	}//Finish getQnaInput()
	
	/**
	 * 湲���젣
	 * */
	 public String setQnaDelete() throws Exception{
		int result = 0;

		result = QnADao.getDao().setQnaDelete(qnaVO.getSseq());			

		switch (result) {
		case 1: // ��젣 �꾨즺
			return SUCCESS;
		default: // ��젣 �ㅽ뙣
			return ERROR;
		}	
	}//Finish setQnaDelete()
	
}//Finish this Class