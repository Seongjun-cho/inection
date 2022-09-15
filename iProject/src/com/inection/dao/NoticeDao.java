package com.inection.dao;
/** 
 * 
 * @author wonjongtae & leekyunggun
 * @since  2013.09.02
 * @category 게시판 부분 
 * 
 * */

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.inection.config.FactoryService;
import com.inection.vo.NoticeVO;


public class NoticeDao {

	private static NoticeDao noticeDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized NoticeDao getDao() {
		if (noticeDao == null)
			noticeDao = new NoticeDao();
		return noticeDao;
	}//Finish getDao
	
	// TODO 메인에 올리는 게시판 목록
	public List<NoticeVO> getNoticeList_Main() {
		List<NoticeVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();

		list = session.selectList("getNoticeList_Main");
		
		session.close();
		return list;
	}//Finish getNoticeList_Main
	// TODO 메인에 올리는 게시판 목록 finish

	/** 게시판 목록조회 */
	public List<NoticeVO> getNoticeList(NoticeVO noticeVO) {
		List<NoticeVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getNoticeList",noticeVO);

		session.close();
		return list;
	}//Finish getNoticeList
	
	public List<NoticeVO> getNoticeDetailList(NoticeVO noticeVO) {
		List<NoticeVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getNoticeDetailList",noticeVO);

		session.close();
		return list;
	}//Finish getNoticeList
	
	/** 게시판 목록 카운트 */
	public int getNoticeListCnt(NoticeVO noticeVO) {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.selectOne("getNoticeListCnt",noticeVO);

		session.close();
		return result;
	}//Finish getNoticeListCnt
	
	/** 게시판 상세보기 */
	public NoticeVO getNoticeDetail(int noticeNo){
		int result = 0;
		NoticeVO noticeVO = null;
		SqlSession session = FactoryService.getFactory().openSession();

		noticeVO = session.selectOne("getNoticeDetail",noticeNo);
		noticeVO.setCnt(noticeVO.getCnt()+1); // 조회수 증가
		result = session.update("setNoticeCNT",noticeVO);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return noticeVO;
	}//Finish getNoticeDetail
	
	/** 게시판 글쓰기 */
	public int getNoticeInput(NoticeVO noticeVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.insert("getNoticeInput",noticeVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish getNoticeInput
	
	/** 게시판 수정 */
	public int setNoticeUpdate(NoticeVO noticeVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.update("setNoticeUpdate",noticeVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setNoticeUpdate
	
	
	/** 게시판 삭제 */
	public int setNoticeDelete(int noticeNo){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.delete("setNoticeDelete",noticeNo);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return result;
	}//Finish setNoticeDelete
	
	
	
}//Finish this class