package com.inection.util;

import java.util.Map;

import org.apache.log4j.Logger;

import com.inection.vo.MemberVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/** 
 * 
 * @author wonjongtae
 * @category �대떦 �대옒�ㅻ뒗 濡쒓렇�몄떆 �몄뀡����옣 �섍퀬 �몄뀡���딆뼱二쇰뒗 ��솢���댁＜���대옒���대떎 
 * @since 2013.09.13
 * @version 1.0
 * 
 * */

public class SessionCheck extends ActionSupport implements Action{
	private final static Logger logger = Logger.getLogger(SessionCheck.class);

	private MemberVO memVO;
	public String loginresult;
	public String logoutresult;
	
	public MemberVO getMemVO() {
		return memVO;
	}

	public void setMemVO(MemberVO memVO) {
		this.memVO = memVO;
	}

	public Map<String, Object> session ;
	public ActionContext context;
	
	/** 
	 * 
	 * @category : 濡쒓렇�몄떆 �몄뀡 ��옣 
	 * @param voCheck 1 �깃났 0 �ㅽ뙣 , user_id : jsp �섏뼱���꾩씠�� user_pw : jsp �섏뼱���⑥뒪�뚮뱶
	 * 
	 * */
	public String getid(){
		String returnVal="";
		if(ActionContext.getContext().getSession().get("user_id") == null){
		}else{
			returnVal = ActionContext.getContext().getSession().get("user_id").toString();
		}
		return returnVal;
	}
	public boolean haveSession(){
		if(ActionContext.getContext().getSession().get("user_id") != null){
			return true;
		}else{
			return false;
		}
	}
	public void login(int voCheck, String user_id, String user_pw) throws Exception{
		int checkParam = voCheck;
		context = ActionContext.getContext();
		session = (Map<String, Object>)context.getSession();
		
		switch (checkParam) {
			case 1: // �몄뀡 �ㅼ젙 (�꾩씠���⑥뒪�뚮뱶 )
				//TODO 
				session.put("user_id", user_id);
				session.put("user_pwd", user_pw);
				
				context.setSession(session);
				loginresult = SUCCESS;
				return;
			default: // �몄뀡 �덉쇅泥섎━
				loginresult = ERROR;
				return;
			}
		
	}//Finish login()
	
	/** 濡쒓렇�꾩썐���몄뀡 �꾩썐 */
	public void logout() throws Exception{
		try {
			context = ActionContext.getContext();
			session = (Map<String, Object>)context.getSession();
			
			if(session.get("user_id")!=null){
				session.remove("user_id");
				session.remove("user_pwd");
			}
			context.setSession(session);
			logoutresult = SUCCESS;
		} catch (Exception e) {
			logger.info("연결예외발생");
			logoutresult = ERROR;
		}
		
	}//Finish logout()
	
}//Finish This class