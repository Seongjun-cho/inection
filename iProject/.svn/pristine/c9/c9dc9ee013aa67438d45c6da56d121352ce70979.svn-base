package com.inection.action;

import java.util.List;

import com.inection.dao.FaqDao;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.FaqVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * 
 *  @author wonjongtae & leekyunggun
 *  @since  2013.9.2
 *  @category 게시판 액션
 *  
 *  */

public class FAQ_Action implements Action, Preparable, ModelDriven<FaqVO>{

	private List<FaqVO> faqList = null;
	private FaqVO faqVO = null;
	private PageNavigation paging = null; // 페이징
	private SessionCheck sc = new SessionCheck();
	public List<FaqVO> getFaqList() {
		return faqList;
	}
	public FaqVO getFaqVO() {
		return faqVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		faqVO = new FaqVO();
	}
	
	@Override
	public FaqVO getModel() {
		return faqVO;
	}
	
	/**
	 * 게시판 목록조회 / 검색$
	 * */
	@Override
	public String execute() throws Exception {
		String page = faqVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		
		faqVO.setStartRow(paging.getStartRow());
		faqVO.setEndRow(paging.getEndRow());

		paging.setTotalCount(FaqDao.getDao().getFaqListCnt());
		faqList = FaqDao.getDao().getFaqList(faqVO);

		return SUCCESS;
	}//Finish execute()
	
	/**
	 * 게시판 상세보기
	 * */
	public String getFaqDetail() throws Exception{
		int faqNO = faqVO.getSseq();

		faqVO = FaqDao.getDao().getFaqDetail(faqNO);
		
		return SUCCESS;
	}//Finish getFaqDetail()
	
	/** 
	 * 글쓰기 / 수정 
	 * */
	public String setFaqInput() throws Exception{
		int faqNO = faqVO.getSseq();

		if(faqVO.getInputType().equals("update")){ // 수정
			faqVO = FaqDao.getDao().getFaqDetail(faqNO);			
			faqVO.setInputType("update");
		}else{
			faqVO.setInputType("insert");
		}
		return SUCCESS;
	}//Finish setFaqInput()
	
	/**
	 * 게시판 글쓰기 / 수정완료 
	 * */
	public String setFaqInputSubmit() throws Exception{
		String inputType = faqVO.getInputType();
		int result = 0;
		if(sc.haveSession()){
			if(inputType.equals("update")){
				result = FaqDao.getDao().setFaqUpdate(faqVO);
			}else if(inputType.equals("insert")){
				result = FaqDao.getDao().getFaqInput(faqVO);
			}
			
			
			switch (result) {
			case 1: // 글쓰기 완료
				return SUCCESS;
			default: // 글쓰기 실패
				return ERROR;
			}	
		}else{
			return ERROR;
		}
		
	}//Finish getFaqInput()
	
	/**
	 * 글 삭제
	 * */
	 public String setFaqDelete() throws Exception{
		int result = 0;

		result = FaqDao.getDao().setFaqDelete(faqVO.getSseq());			

		switch (result) {
		case 1: // 삭제 완료
			return SUCCESS;
		default: // 삭제 실패
			return ERROR;
		}	
	}//Finish setFaqDelete()
	
}//Finish this Class