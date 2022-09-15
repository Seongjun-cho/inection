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
import com.inection.vo.RecruitVO;


public class RecruitDao {

	private static RecruitDao recruitDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized RecruitDao getDao() {
		if (recruitDao == null)
			recruitDao = new RecruitDao();
		return recruitDao;
	}//Finish getDao
	
	// TODO 메인에 올리는 게시판 목록
	public List<RecruitVO> getRecruitList_Main() {
		List<RecruitVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getRecruitList_Main");

		session.close();
		return list;
	}//Finish getRecruitList_Main
	// TODO 메인에 올리는 게시판 목록 finish

	/** 게시판 목록조회 */
	public List<RecruitVO> getRecruitList(RecruitVO recruitVO) {
		List<RecruitVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getRecruitList",recruitVO);

		session.close();
		return list;
	}//Finish getRecruitList	
	
	/** 게시판 목록 카운트 */
	public int getRecruitListCnt(RecruitVO recruitVO) {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.selectOne("getRecruitListCnt",recruitVO);

		session.close();
		return result;
	}//Finish getRecruitListCnt
	
	/** 게시판 상세보기 */
	public RecruitVO getRecruitDetail(int recruitNo){
		RecruitVO recruitVO = null;
		SqlSession session = FactoryService.getFactory().openSession();

		recruitVO = session.selectOne("getRecruitDetail",recruitNo);
		
		session.commit();
		session.close();
		return recruitVO;
	}//Finish getRecruitDetail
	
	public List<RecruitVO> getRecruitDetailList(RecruitVO recruitVO) {
		List<RecruitVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getRecruitDetailList",recruitVO);

		session.close();
		return list;
	}//Finish getRecruitList	
	
	
	
	/** 게시판 글쓰기 */
	public int getRecruitInput(RecruitVO recruitVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.insert("getRecruitInput",recruitVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish getRecruitInput
	
	/** 게시판 수정 */
	public int setRecruitUpdate(RecruitVO recruitVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.update("setRecruitUpdate",recruitVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setRecruitUpdate
	
	/** 게시판 삭제 */
	public int setRecruitDelete(int recruitNo){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.delete("setRecruitDelete",recruitNo);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return result;
	}//Finish setRecruitDelete
	
}//Finish this class