package com.inection.util;

import java.io.File;
import java.io.IOException;

/** 
 * @author wonjongtae
 * @category File rename check Class
 * @since 2013.09.11
 * 
 * */

public class FileRenamePolicy {
	
	/** 
	 * @category : �뚯씪 由щ꽕��
	 * @param  : �먮낯�뚯씪 
	 * @return : 蹂�솚���뚯씪媛�
	 *  
	 * */
	public File rename(File file){ //File file �먮낯�뚯씪 
		if(createNewFile(file))return file;
		
		//�뺤옣�먭� �녿뒗  �뚯씪 �쇰븣 泥섎━ 
		String name = file.getName();
		String body = null;
		String ext = null;
		
		int dot  = name.lastIndexOf(".");
		if (dot != -1) {//�뺤옣�먭� �놁쓣��
			body = name.substring(0, dot);
			ext = name.substring(dot);
		}else{
			body = name;
			ext = "";
		}
	
		int count = 0;
		//以묐났���뚯씪 �덉쓣��
		while(!createNewFile(file)&&count<9999){
			count++;
			String newName = body + count + ext;
			file = new File(file.getParent(),newName);
		}
		return file;
	}//Finish rename
	
	/** 
	 * @category : �덈줈���뚯씪 �앹꽦 
	 * 
	 * */
	private boolean createNewFile(File file) {
		try {
			return file.createNewFile();
		} catch (IOException e) {
			System.out.println("연결예외발생");
			return false;
		}
	}//Finish createNewFile
	
}//Finish Class