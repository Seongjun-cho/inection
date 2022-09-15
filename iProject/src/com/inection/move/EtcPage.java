package com.inection.move;
import org.apache.commons.lang3.StringUtils;
import org.omg.PortableInterceptor.SUCCESSFUL;

import com.inection.dao.BoardDao;
import com.inection.util.PageNavigation;
import com.inection.vo.BoardVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import freemarker.template.utility.StringUtil;
public class EtcPage implements Action{
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String sitemap() throws Exception{
		return SUCCESS;
	}
}
