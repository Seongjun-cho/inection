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
import com.inection.vo.BoardVO;


public class BoardDao {

	private static BoardDao boardDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized BoardDao getDao() {
		if (boardDao == null)
			boardDao = new BoardDao();
		return boardDao;
	}//Finish getDao
	
	// TODO 메인에 올리는 게시판 목록
	public List<BoardVO> getBoardList_Main(BoardVO boardVO) {
		List<BoardVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getBoardList_Main",boardVO);

		session.close();
		return list;
	}//Finish getBoardList_Main
	// TODO 메인에 올리는 게시판 목록 finish

	/** 게시판 목록조회 */
	public List<BoardVO> getBoardList(BoardVO boardVO) {
		List<BoardVO> list = null;
		SqlSession session = FactoryService.getFactory().openSession();
		
		list = session.selectList("getBoardList",boardVO);

		session.close();
		return list;
	}//Finish getBoardList
	
	/** 게시판 목록 카운트 */
	public int getBoardListCnt(BoardVO boardVO) {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		
		result = session.selectOne("getBoardListCnt",boardVO);

		session.close();
		return result;
	}//Finish getBoardListCnt
	
	/** 게시판 상세보기 */
	public BoardVO getBoardDetail(int boardNo){
		int result = 0;
		BoardVO boardVO = null;
		SqlSession session = FactoryService.getFactory().openSession();

		boardVO = session.selectOne("getBoardDetail",boardNo);
		boardVO.setCnt(boardVO.getCnt()+1); // 조회수 증가
		result = session.update("setBoardCNT",boardVO);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return boardVO;
	}//Finish getBoardDetail
	
	/** 게시판 글쓰기 */
	public int getBoardInput(BoardVO boardVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.insert("getBoardInput",boardVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish getBoardInput
	
	/** 게시판 수정 */
	public int setBoardUpdate(BoardVO boardVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.update("setBoardUpdate",boardVO);
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setBoardUpdate
	
	/** 게시판 리플 */
	public int setBoardReply(BoardVO boardVO){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
	
		session.update("setUpdateOnum",boardVO);
		
		boardVO.setOrderNo(boardVO.getOrderNo()+1);
		boardVO.setNested(boardVO.getNested()+1);
		result = session.insert("setBoardReply",boardVO);
		
		
		if(result == 1){
			session.commit();			
		}
		session.close();
		return result;
	}//Finish setBoardReply
	
	/** 게시판 삭제 */
	public int setBoardDelete(int boardNo){
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();

		result = session.delete("setBoardDelete",boardNo);
		
		if(result == 1){
			session.commit();
		}
		session.close();
		return result;
	}//Finish setBoardDelete
	
	
	
}//Finish this class