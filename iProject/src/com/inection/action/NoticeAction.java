package com.inection.action;

import java.io.File;

import org.apache.log4j.Logger;

import java.util.List;
import java.util.StringTokenizer;

import com.inection.config.FactoryService;
import com.inection.dao.NoticeDao;
import com.inection.util.Cons;
import com.inection.util.FileService;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.NoticeVO;
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

public class NoticeAction implements Action, Preparable, ModelDriven<NoticeVO>{

	private List<NoticeVO> list = null;
	private NoticeVO noticeVO = null;
	private PageNavigation paging = null; // �섏씠吏�
	private SessionCheck sc = new SessionCheck();
	Cons cons = new Cons();
	
	private final static Logger logger = Logger.getLogger(NoticeAction.class);
	
	public List<NoticeVO> getList() {
		return list;
	}
	
	public NoticeVO getNoticeVO() {
		return noticeVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		noticeVO = new NoticeVO();
	}
	
	@Override
	public NoticeVO getModel() {
		return noticeVO;
	}
	
	/**
	 * 寃뚯떆��紐⑸줉議고쉶 / 寃�깋
	 * */
	@Override
	public String execute() throws Exception {
		String page = noticeVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		noticeVO.setStartRow(paging.getStartRow());
		noticeVO.setEndRow(paging.getEndRow());

		paging.setTotalCount(NoticeDao.getDao().getNoticeListCnt(noticeVO));
		list = NoticeDao.getDao().getNoticeList(noticeVO);
		
		return SUCCESS;
	}//Finish execute()
	
	/**
	 * 寃뚯떆���곸꽭蹂닿린
	 * */
	public String getNoticeDetail() throws Exception{
		try {
			
			list = NoticeDao.getDao().getNoticeDetailList(noticeVO);
			
			int noticeNO = noticeVO.getSseq();
			noticeVO = NoticeDao.getDao().getNoticeDetail(noticeNO);
			
			if(noticeVO.getIsfile().equals("Y")){ // �뚯씪���덈뒗寃쎌슦
				String reName = noticeVO.getFilerename();
				
				StringTokenizer tokenizer = new StringTokenizer(reName,".");

				noticeVO.setFilerename(tokenizer.nextToken());
				noticeVO.setFileType(tokenizer.nextToken());
			}
			
		} catch (Exception e) {
			logger.info("연결예외발생");
		}
		
		return SUCCESS;
	}//Finish getNoticeDetail()
	
	/** 
	 * 湲�벐湲�/ �섏젙 / 由ы뵆�ш린 援щ텇
	 * */
	public String setNoticeInput() throws Exception{
		//TODO : 湲�벐湲�
		try {
			
			int noticeNO = noticeVO.getSseq();
			if(noticeVO.getInputType().equals("update")){ // �섏젙
				noticeVO = NoticeDao.getDao().getNoticeDetail(noticeNO);			
				noticeVO.setInputType("update");
			}else{
				noticeVO.setInputType("insert");
			}
		} catch (Exception e) {
			logger.info("연결예외발생");
		}
		
		return SUCCESS;
	}//Finish setNoticeInput()
	
	/**
	 * 寃뚯떆��湲�벐湲�/ �섏젙�꾨즺 / 由ы뵆 �꾨즺
	 * */
	public String setNoticeInputSubmit() throws Exception{
		String inputType = noticeVO.getInputType();
		int result = 0;
		try {
			if (!noticeVO.getFile().equals("") || !noticeVO.getFile().equals("null")) {
				String realfilename = noticeVO.getFileFileName();
				noticeVO.setFilename(realfilename);
				System.out.println(realfilename + " 확인 중");
				String filename = noticeVO.getFile().toString();//jsp form �먯꽌 諛쏆븘��빞�섎뒗 �꾩넚���뚯씪
				System.out.println(filename +  " 확인 중2");
				File uploadFilename = new File(filename); //�щ━���뚯씪 (jsp�먯꽌 湲곸뼱 ��빞��
				System.out.println(uploadFilename +  " 확인 중3");
				FileService fileService = new FileService();
				noticeVO.setIsfile("Y");			
				noticeVO.setFilerename(fileService.saveFile(uploadFilename, cons.path, realfilename)); //�꾩뿉 蹂�닔 ���ㅼ뼱媛��뚯씪���뺤씤 �좉쾬
				noticeVO.setFile_path(cons.path);
			}else{
				noticeVO.setIsfile("N");
				noticeVO.setFilename("");
				noticeVO.setFilerename("");
				noticeVO.setFile_path("");
			}
		} catch (Exception e) {
			logger.info("연결예외발생");
		}

		if(sc.haveSession() && ActionContext.getContext().getSession().get("user_id").toString().equals("inection")){
			if(inputType.equals("update")){
				result = NoticeDao.getDao().setNoticeUpdate(noticeVO);
			}else if(inputType.equals("insert")){
				result = NoticeDao.getDao().getNoticeInput(noticeVO);
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
		
	}//Finish getNoticeInput()
	
	
	/**
	 * 湲���젣
	 * */
	 public String setNoticeDelete() throws Exception{
		int result = 0;

		result = NoticeDao.getDao().setNoticeDelete(noticeVO.getSseq());			

		noticeVO.setStatusMessage("DELETE");
		switch (result) {
		case 1: // ��젣 �꾨즺
			return SUCCESS;
		default: // ��젣 �ㅽ뙣
			return ERROR;
		}	
	}//Finish setNoticeDelete()
	
}//Finish this Class