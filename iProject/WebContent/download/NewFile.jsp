<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%

	request.setCharacterEncoding("UTF-8");
	String fileName = request.getParameter("fileName");
	String filePath = request.getParameter("filePath");
	
	InputStream in = null;
 	OutputStream os = null;
 	try {
 		//getOutputStream(); already response error
		//OutputStram에 getOutputStream();을 선언하기 전에 out객체를 초기화 
 		out.clear(); 
 		out=pageContext.pushBody();
 		
 		File file = new File(filePath, fileName);
  		in = new FileInputStream(file);	
		response.reset() ;
		response.setContentType("application/smnet");
		response.setHeader ("Content-Disposition", "attachment; filename=\"" 
								+ new String(file.getName().getBytes(),"ISO8859_1")+"\"" );
  		response.setHeader ("Content-Length", ""+file.length() );
  		os = response.getOutputStream();
  		
  		byte b[] = new byte[(int)file.length()];
  		int leng = 0;
		while( (leng = in.read(b)) > 0 ){
			os.write(b,0,leng);
		}
 	} catch(Exception e) {
 		e.printStackTrace();
  		System.out.println("file DownLoad Error : "+e.getMessage());
 	}finally{
  		if(in !=null)try{in.close();}catch(Exception e){}
  		if(os !=null)try{os.close();}catch(Exception e){}
 	}
%>
