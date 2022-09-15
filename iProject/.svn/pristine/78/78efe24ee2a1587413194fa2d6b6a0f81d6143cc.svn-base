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
import com.inection.vo.FaqVO;


public class FaqDao {

	private static FaqDao faqDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized FaqDao getDao() {
		if (faqDao == null)
			faqDao = new FaqDao();
		return faqDao;
	}//Finish getDao
	
	/** 게시판 목록조회 */
	public List<FaqVO> getFaqList(FaqVO faqVO) {
		List<FaqVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getFaqList",faqVO);

		session.close();
		return list;
	}//Finish getFaqList	
	
	/** 게시판 목록 카운트 */
	public int getFaqListCnt() {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.selectOne("getFaqListCnt");

		session.close();
		return result;
	}//Finish getFaqListCnt
	
	/** 게시판 상세보기 */
	public FaqVO getFaqDetail(int faqNo){
		FaqVO faqVO = null;
		SqlSession session = FactoryService.getFactory().openSession();

		faqVO = session.selectOne("getFaqDetail",faqNo);
		
		session.commit();
		session.close();
		return faqVO;
	}//Finish getFaqDetail
	
	/** 게시판 글쓰기 */
	public int getFaqInput(FaqVO faqVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.insert("getFaqInput",faqVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish getFaqInput
	
	/** 게시판 수정 */
	public int setFaqUpdate(FaqVO faqVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.update("setFaqUpdate",faqVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setFaqUpdate
	
	/** 게시판 삭제 */
	public int setFaqDelete(int faqNo){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.delete("setFaqDelete",faqNo);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return result;
	}//Finish setFaqDelete
	
}//Finish this class