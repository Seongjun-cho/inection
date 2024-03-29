package com.inection.action;

import java.util.List;

import org.apache.ibatis.session.SqlSessionException;

import com.inection.dao.BoardDao;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.BoardVO;
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

public class BoardAction implements Action, Preparable, ModelDriven<BoardVO>{


	private List<BoardVO> list = null;
	private BoardVO boardVO = null;
	private PageNavigation paging = null; // �섏씠吏�
	
	public List<BoardVO> getList() {
		return list;
	}
	
	public BoardVO getBoardVO() {
		return boardVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		boardVO = new BoardVO();
	}
	
	@Override
	public BoardVO getModel() {
		return boardVO;
	}
	
	/**
	 * 寃뚯떆��紐⑸줉議고쉶 / 寃�깋
	 * */
	@Override
	public String execute() throws Exception {
		String page = boardVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		boardVO.setStartRow(paging.getStartRow());
		boardVO.setEndRow(paging.getEndRow());
		
		paging.setTotalCount(BoardDao.getDao().getBoardListCnt(boardVO));
		list = BoardDao.getDao().getBoardList(boardVO);

		return SUCCESS;
	}//Finish execute()
	
	/**
	 * 寃뚯떆���곸꽭蹂닿린
	 * */
	public String getBoardDetail() throws SqlSessionException{
		int boardNO = boardVO.getSseq();
		
		boardVO = BoardDao.getDao().getBoardDetail(boardNO);
		
		return SUCCESS;
	}//Finish getBoardDetail()
	
	/** 
	 * 湲�벐湲�/ �섏젙 / 由ы뵆�ш린 援щ텇
	 * */
	public String setBoardInput() throws Exception{
		int boardNO = boardVO.getSseq();

		if(boardVO.getInputType().equals("update")){ // �섏젙
			boardVO = BoardDao.getDao().getBoardDetail(boardNO);			
			boardVO.setInputType("update");
		}else if(boardVO.getInputType().equals("reply")){ // 由ы뵆
			boardVO = BoardDao.getDao().getBoardDetail(boardNO);
			boardVO.setInputType("reply");
		}else{
			boardVO.setInputType("insert");
		}
		return SUCCESS;
	}//Finish setBoardInput()
	
	/**
	 * 寃뚯떆��湲�벐湲�/ �섏젙�꾨즺 / 由ы뵆 �꾨즺
	 * */
	public String setBoardInputSubmit() throws Exception{
		String inputType = boardVO.getInputType();
		int result = 0;
		if(inputType.equals("update")){
			result = BoardDao.getDao().setBoardUpdate(boardVO); 
		}else if(inputType.equals("reply")){
			result = BoardDao.getDao().setBoardReply(boardVO);
		}else if(inputType.equals("insert")){
			result = BoardDao.getDao().getBoardInput(boardVO);
		}
		
		
		switch (result) {
		case 1: // 湲�벐湲��꾨즺
			return SUCCESS;
		default: // 湲�벐湲��ㅽ뙣
			return ERROR;
		}	
	}//Finish getBoardInput()
	
	/**
	 * 湲���젣
	 * */
	 public String setBoardDelete() throws Exception{
		int result = 0;

		result = BoardDao.getDao().setBoardDelete(boardVO.getSseq());			

		boardVO.setStatusMessage("DELETE");
		switch (result) {
		case 1: // ��젣 �꾨즺
			return SUCCESS;
		default: // ��젣 �ㅽ뙣
			return ERROR;
		}	
	}//Finish setBoardDelete()
	
}//Finish this Class