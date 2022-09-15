package com.inection.action;

import com.inection.dao.MemberDao;
import com.inection.util.SessionCheck;
import com.inection.vo.MemberVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

@SuppressWarnings("serial")
public class MemberAction extends ActionSupport implements Action, Preparable, ModelDriven<MemberVO>{
	
	SessionCheck sessionCheck = new SessionCheck();
	private MemberVO memVO;
	
	@Override  // loginSubmit
	public String execute() throws Exception {
		System.out.println("로그인 확인1");
		sessionCheck.login(MemberDao.getDao().checkUser(memVO), memVO.getId(), memVO.getPw());
		String result = sessionCheck.loginresult;
		return result;
	}// finish execute
	
	/** 濡쒓렇�븘�썐 �븷�닔 �꽭�뀡�쓣 �걡�뼱二쇰뒗 �뿭�솢 */
	public String logoutSubmit() throws Exception{

		sessionCheck.logout();
		String result = sessionCheck.logoutresult;
		
		return result;
	}// finish logoutSubmit
	
	public String login() throws Exception{
		System.out.println("로그인 확인2");
		return SUCCESS;
	}// finish login
	
	public String join() throws Exception{
		return SUCCESS;
	}// fisish join

	@Override
	public void prepare() throws Exception {
		memVO = new MemberVO();
	}

	@Override
	public MemberVO getModel() {
		return memVO;
	}
	
}//Finish This