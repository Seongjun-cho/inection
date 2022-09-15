package com.inection.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;

/**
 * 
 *  @author wonjongtae
 *  @category 파일을 주고 받기 위한 in, out 설정
 *  @since 2013.09.12
 *  @version 1.0
 *  
 **/

public class FileService {
	 
	String filename;
	String returnFileName;
	private final static Logger logger = Logger.getLogger(FileService.class);
	
	public String saveFile(File file, String path, String realfilename) throws IOException{
		
		FileInputStream in = null;
		FileOutputStream os = null;
	 	
		try {
			
		filename = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); //파일 이름을 년월일시분초 로 저장함

		String fileRealName = file.toString();
		
		ConventionCheckUtil conventionCheckUtil = new ConventionCheckUtil();
		//TODO
 		//conventionCheckUtil.checkUpFile(realfilename);
		//Boolean checkfile = conventionCheckUtil.chkExt;
 		Boolean checkfile = null;
 		checkfile = conventionCheckUtil.checkUpFile(realfilename);
			if(checkfile.equals(true)){
				
				String SaveFile = path + filename + "." + conventionCheckUtil.file_ext;
				returnFileName = filename + "." + conventionCheckUtil.file_ext;
				
				in = new FileInputStream(file);
				os = new FileOutputStream(SaveFile); //화면에서 글어온 경로가 여기에 들어가야 할듯 

				int bytesRead = 0;

				byte[] buffer = new byte[1024];
				
				while ((bytesRead = in.read(buffer, 0, 1024)) !=-1){
					os.write(buffer, 0, bytesRead);
				}//Finish while
				
			}else{
				logger.info("부정합한 파일입니다..");
			}
		} catch (IOException e) {
			logger.info("연결예외발생");
			logger.info("파일 업로드중 오류가 발생 하였습니다 다시 시도해 주세요.");
		}finally{
	  		if(in !=null)try{in.close();}catch(IOException e){}
	  		if(os !=null)try{os.close();}catch(IOException e){}
	 	}
		
		return returnFileName; 
	}//Finish saveFile
	
}//Finish Class