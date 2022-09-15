package com.inection.action;

import java.util.List;

import org.apache.log4j.Logger;

import com.inection.dao.QnADao;
import com.inection.dao.RecruitDao;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.RecruitVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * 
 *  @author wonjongtae & leekyunggun
 *  @since  2013.9.2
 *  @category 寃뚯떆���≪뀡
 *  
 *  */

public class Recruit_Action implements Action, Preparable, ModelDriven<RecruitVO>{
	private final static Logger logger = Logger.getLogger(Recruit_Action.class);

	private List<RecruitVO> recruitList = null;
	private RecruitVO recruitVO = null;
	private PageNavigation paging = null; // �섏씠吏�
	private SessionCheck sc = new SessionCheck();
	public List<RecruitVO> getRecruitList() {
		return recruitList;
	}
	public RecruitVO getRecruitVO() {
		return recruitVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		recruitVO = new RecruitVO();
	}
	
	@Override
	public RecruitVO getModel() {
		return recruitVO;
	}
	
	/**
	 * 寃뚯떆��紐⑸줉議고쉶 / 寃�깋$
	 * */
	@Override
	public String execute() throws Exception {
		String page = recruitVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		
		recruitVO.setStartRow(paging.getStartRow());
		recruitVO.setEndRow(paging.getEndRow());

		paging.setTotalCount(RecruitDao.getDao().getRecruitListCnt(recruitVO));
		recruitList = RecruitDao.getDao().getRecruitList(recruitVO);

		return SUCCESS;
	}//Finish execute()
	
	/**
	 * 寃뚯떆���곸꽭蹂닿린
	 * */
	public String getRecruitDetail() throws Exception{
		
		recruitList = RecruitDao.getDao().getRecruitDetailList(recruitVO);
		
		int recruitNO = recruitVO.getSseq();
		
		recruitVO = RecruitDao.getDao().getRecruitDetail(recruitNO);
		
		return SUCCESS;
	}//Finish getRecruitDetail()
	
	/** 
	 * 湲�벐湲�/ �섏젙 
	 * */
	public String setRecruitInput() throws Exception{
		try {
			
			int recruitNO = recruitVO.getSseq();
			if(recruitVO.getInputType().equals("update")){ // �섏젙
				recruitVO = RecruitDao.getDao().getRecruitDetail(recruitNO);			
				recruitVO.setInputType("update");
			}else{
				recruitVO.setInputType("insert");
			}
		} catch (Exception e) {
			logger.info("연결예외발생");
		}
		return SUCCESS;
	}//Finish setRecruitInput()
	
	/**
	 * 寃뚯떆��湲�벐湲�/ �섏젙�꾨즺 
	 * */
	public String setRecruitInputSubmit() throws Exception{
		String inputType = recruitVO.getInputType();

		int result = 0;
		if(sc.haveSession() && ActionContext.getContext().getSession().get("user_id").toString().equals("inection")){
			if(inputType.equals("update")){
				result = RecruitDao.getDao().setRecruitUpdate(recruitVO);
			}else if(inputType.equals("insert")){
				result = RecruitDao.getDao().getRecruitInput(recruitVO);
			}
			
			
			switch (result) {
			case 1: // 湲�벐湲��꾨즺
				return SUCCESS;
			default: // 湲�벐湲��ㅽ뙣
				return ERROR;
			}	
		}else{
			return ERROR;
		}
		
	}//Finish getRecruitInput()
	
	/**
	 * 湲���젣
	 * */
	 public String setRecruitDelete() throws Exception{
		int result = 0;

		result = RecruitDao.getDao().setRecruitDelete(recruitVO.getSseq());			

		switch (result) {
		case 1: // ��젣 �꾨즺
			return SUCCESS;
		default: // ��젣 �ㅽ뙣
			return ERROR;
		}	
	}//Finish setRecruitDelete()
	
}//Finish this Class