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
import com.inection.vo.ReferenceVO;


public class ReferenceDao {

	private static ReferenceDao referenceDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized ReferenceDao getDao() {
		if (referenceDao == null)
			referenceDao = new ReferenceDao();
		return referenceDao;
	}//Finish getDao
	
	// TODO 메인에 올리는 게시판 목록
	public List<ReferenceVO> getReferenceList_Main() {
		List<ReferenceVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getReferenceList_Main");
		
		session.close();
		return list;
	}//Finish getReferenceList_Main
	// TODO 메인에 올리는 게시판 목록 finish

	/** 게시판 목록조회 */
	public List<ReferenceVO> getReferenceList(ReferenceVO referenceVO) {
		List<ReferenceVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getReferenceList",referenceVO);

		session.close();
		return list;
	}//Finish getReferenceList
	
	/** 게시판 상세보기 목록조회 */
	public List<ReferenceVO> getReferenceDetailList(ReferenceVO referenceVO) {
		List<ReferenceVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getReferenceDetailList",referenceVO);

		session.close();
		return list;
	}//Finish getReferenceList
	
	/** 게시판 목록 카운트 */
	public int getReferenceListCnt(ReferenceVO referenceVO) {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.selectOne("getReferenceListCnt",referenceVO);

		session.close();
		return result;
	}//Finish getReferenceListCnt
	
	/** 게시판 상세보기 */
	public ReferenceVO getReferenceDetail(int referenceNo){
		int result = 0;
		ReferenceVO referenceVO = null;
		SqlSession session = FactoryService.getFactory().openSession();

		referenceVO = session.selectOne("getReferenceDetail",referenceNo);
		referenceVO.setCnt(referenceVO.getCnt()+1); // 조회수 증가
		result = session.update("setReferenceCNT",referenceVO);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return referenceVO;
	}//Finish getReferenceDetail
	
	/** 게시판 글쓰기 */
	public int getReferenceInput(ReferenceVO referenceVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.insert("getReferenceInput",referenceVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish getReferenceInput
	
	/** 게시판 수정 */
	public int setReferenceUpdate(ReferenceVO referenceVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.update("setReferenceUpdate",referenceVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setReferenceUpdate
	
	
	/** 게시판 삭제 */
	public int setReferenceDelete(int referenceNo){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.delete("setReferenceDelete",referenceNo);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return result;
	}//Finish setReferenceDelete
	
	
	
}//Finish this class