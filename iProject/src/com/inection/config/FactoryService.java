package com.inection.config;

import java.io.IOException;
import org.apache.log4j.Logger;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * 
 *  @author wonjongtae & leekyunggun
 *  @since  2013.09.02
 *  
 *  */

public class FactoryService {
	private static SqlSessionFactory factory;
	private final static Logger logger = Logger.getLogger(FactoryService.class);
	static {
		try {
			Reader r = Resources.getResourceAsReader("com/inection/config/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(r);
			r.close();
		} catch (IOException e) {
			logger.info("연결예외발생");
		}
	}//Finish static
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}//Finish getFactory()
}//Finish this Class