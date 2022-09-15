package com.inection.action;

import java.util.List;

import com.inection.dao.NoticeDao;
import com.inection.dao.QnADao;
import com.inection.vo.NoticeVO;
import com.inection.vo.QnaVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * 
 * @author wonjongtae & leekyunggun
 * @since 2013.9.2
 * @category 硫붿씤
 * 
 * */

public class MainAction implements Action, Preparable, ModelDriven<NoticeVO> {

	// VO �꽑�뼵
	public NoticeVO noticeVO = null;
	private QnaVO qnaVO = null;

	// List �꽑�뼵
	public List<NoticeVO> noticeList = null;
	private List<QnaVO> qnaList = null;

	public NoticeVO getNoticeVO() {
		return noticeVO;
	}
	public QnaVO getQnaVO() {
		return qnaVO;
	}
	public List<NoticeVO> getNoticeList() {
		return noticeList;
	}
	public List<QnaVO> getQnaList() {
		return qnaList;
	}

	@Override
	public void prepare() throws Exception {
		noticeVO = new NoticeVO();
		qnaVO = new QnaVO();
	}
	@Override
	public NoticeVO getModel() {
		return noticeVO;
	}

	/**
	 * 硫붿씤(寃뚯떆�뙋) 紐⑸줉議고쉶 / 寃��깋
	 * */
	@Override
	public String execute() throws Exception {
		
		noticeList = NoticeDao.getDao().getNoticeList_Main();
		qnaList = QnADao.getDao().getQnaList_Main();
		
		return SUCCESS;
	}// Finish execute()

}// Finish this Class