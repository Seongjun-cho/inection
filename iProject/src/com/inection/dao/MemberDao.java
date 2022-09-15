package com.inection.dao;
/** 
 * 
 * @author wonjongtae & leekyunggun
 * @since  2013.09.02
 * @category 로그인 부분 
 * 
 * */

import org.apache.ibatis.session.SqlSession;

import com.inection.config.FactoryService;
import com.inection.vo.MemberVO;


public class MemberDao {

	private static MemberDao memDao;

	/** 싱글톤 패턴으로 객체생성  */
	public static synchronized MemberDao getDao() {
		if (memDao == null)
			memDao = new MemberDao();
		return memDao;
	}//Finish getDao

	/** 로그인시 유저아이디 유무조회 */
	public int checkUser(MemberVO memVO) {
		int result = 0;
		SqlSession session = FactoryService.getFactory().openSession();
		result = session.selectOne("checkUser", memVO);
		
		session.close();
		return result;
	}//Finish checkUser
}//Finish this class