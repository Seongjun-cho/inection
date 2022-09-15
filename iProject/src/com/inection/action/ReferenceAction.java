package com.inection.action;

import java.io.File;
import java.util.List;
import java.util.StringTokenizer;

import org.apache.log4j.Logger;

import com.inection.dao.ReferenceDao;
import com.inection.util.Cons;
import com.inection.util.FileService;
import com.inection.util.PageNavigation;
import com.inection.util.SessionCheck;
import com.inection.vo.ReferenceVO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

/**
 * 
 *  @author wonjongtae & leekyunggun
 *  @since  2013.9.2
 *  @category 野껊슣�놅옙占쏙옙�る�
 *  
 *  */

public class ReferenceAction implements Action, Preparable, ModelDriven<ReferenceVO>{
	private final static Logger logger = Logger.getLogger(ReferenceAction.class);

	private List<ReferenceVO> list = null;
	private ReferenceVO referenceVO = null;
	private PageNavigation paging = null; // 占쎌꼷�좑쭪占�	
	private SessionCheck sc = new SessionCheck();
	Cons cons = new Cons();
	
	public List<ReferenceVO> getList() {
		return list;
	}
	
	public ReferenceVO getReferenceVO() {
		return referenceVO;
	}
	
	public PageNavigation getPaging() {
		return paging;
	}
	
	@Override
	public void prepare() throws Exception {
		referenceVO = new ReferenceVO();
	}
	
	@Override
	public ReferenceVO getModel() {
		return referenceVO;
	}
	
	/**
	 * 野껊슣�놅옙占쏙쭗�몄쨯鈺곌퀬��/ 野껓옙源�
	 * */
	@Override
	public String execute() throws Exception {
		String page = referenceVO.getCurPage();
		paging = new PageNavigation(10, 10, Integer.parseInt((page == null || page.trim().length() == 0) ? "1" : page));
		referenceVO.setStartRow(paging.getStartRow());
		referenceVO.setEndRow(paging.getEndRow());

		paging.setTotalCount(ReferenceDao.getDao().getReferenceListCnt(referenceVO));
		list = ReferenceDao.getDao().getReferenceList(referenceVO);

		return SUCCESS;
	}//Finish execute()
	
	/**
	 * 野껊슣�놅옙占쏙옙怨멸쉭癰귣떯由�
	 * */
	public String getReferenceDetail() throws Exception{
		try {
			list = ReferenceDao.getDao().getReferenceDetailList(referenceVO);
			
			int referenceNO = referenceVO.getSseq();
			referenceVO = ReferenceDao.getDao().getReferenceDetail(referenceNO);
			
			if(referenceVO.getIsfile().equals("Y")){ // 占쎈슣�わ옙占쏙옙�덈뮉野껋럩��
				String reName = referenceVO.getFilerename();
				
				StringTokenizer tokenizer = new StringTokenizer(reName,".");

				referenceVO.setFilerename(tokenizer.nextToken());
				referenceVO.setFileType(tokenizer.nextToken());
			}
			
		} catch (Exception e) {
			logger.info("�곌껐�덉쇅諛쒖깮");
		}
		
		return SUCCESS;
	}//Finish getReferenceDetail()
	
	/** 
	 * 疫뀐옙踰먩묾占� 占쎌꼷��/ �귐뗫탣占싼덈┛ �닌됲뀋
	 * */
	public String setReferenceInput() throws Exception{
		//TODO : 疫뀐옙踰먩묾占�
		try {
			
			int referenceNO = referenceVO.getSseq();
			if(referenceVO.getInputType().equals("update")){ // 占쎌꼷��
				referenceVO = ReferenceDao.getDao().getReferenceDetail(referenceNO);			
				referenceVO.setInputType("update");
			}else{
				referenceVO.setInputType("insert");
			}
		} catch (Exception e) {
			logger.info("�곌껐�덉쇅諛쒖깮");
		}
		return SUCCESS;
	}//Finish setReferenceInput()
	
	/**
	 * 野껊슣�놅옙占썸묾占쎈쾺疫뀐옙/ 占쎌꼷�숋옙袁⑥┷ / �귐뗫탣 占쎄쑬利�
	 * */
	public String setReferenceInputSubmit() throws Exception{
		String inputType = referenceVO.getInputType();
		int result = 0; 
		
		try {
			if (referenceVO.getFile() != null) {
				String realfilename = referenceVO.getFileFileName();
				referenceVO.setFilename(realfilename);
				
				String filename = referenceVO.getFile().toString();//jsp form 占쎈Ŋ苑�獄쏆룇釉섓옙占쎈튊占쎌꼶��占쎄쑴�싷옙占쏙옙��뵬
				File uploadFilename = new File(filename); //占싼됤봺占쏙옙占쎈슣��(jsp占쎈Ŋ苑�疫꿸낯堉�占쏙옙鍮욑옙占�
				FileService fileService = new FileService();
				referenceVO.setIsfile("Y");			
				referenceVO.setFilerename(fileService.saveFile(uploadFilename, cons.path, realfilename)); //占쎄쑴肉�癰귨옙��占쏙옙占썬끉堉긷첎占쏙옙��뵬占쏙옙占쎈벡��占쎌쥒苡�
				referenceVO.setFile_path(cons.path);
			}else{
				referenceVO.setIsfile("N");
				referenceVO.setFilename("");
				referenceVO.setFilerename("");
				referenceVO.setFile_path("");
			}
		} catch (Exception e) {
			logger.info("�곌껐�덉쇅諛쒖깮");
		}
			
			
		if(sc.haveSession() && ActionContext.getContext().getSession().get("user_id").toString().equals("inection")){
			if(inputType.equals("update")){
				result = ReferenceDao.getDao().setReferenceUpdate(referenceVO); 
			}else if(inputType.equals("insert")){
				result = ReferenceDao.getDao().getReferenceInput(referenceVO);
			}
			
			switch (result) {
				case 1: // 疫뀐옙踰먩묾占쏙옙袁⑥┷
					return SUCCESS;
				default: // 疫뀐옙踰먩묾占쏙옙�쎈솭
					return ERROR;
			}	
		}else{
			return ERROR;
		}
		
	}//Finish getReferenceInput()
	
	
	/**
	 * 疫뀐옙占쏙옙��
	 * */
	 public String setReferenceDelete() throws Exception{
		int result = 0;

		result = ReferenceDao.getDao().setReferenceDelete(referenceVO.getSseq());			

		referenceVO.setStatusMessage("DELETE");
		switch (result) {
		case 1: // 占쏙옙��占쎄쑬利�
			return SUCCESS;
		default: // 占쏙옙��占썬끋��
			return ERROR;
		}	
	}//Finish setReferenceDelete()
	 
	/**
	 * 占쎈쵐占�占쎈굝以덌옙占�
	 * */
	public String setExcelUpload() throws Exception{
//		File uploadFilename = new File(referenceVO.getExcelFile());
		
//		service impl �븝옙��
		
		
//		Map<String, Object> tMap = new HashMap<String, Object>();
//		String message = "占쎈쵐占쏙옙類ｋ궖�쒙옙�븍뜄��옙遺용뮸占쎈뜄��;
//		boolean flag = true;
//	
//		MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) req;		
//		MultipartFile file = multiRequest.getFile(referenceVO.getExcelFile());
//		
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		
//		// 占쎈슣��筌ｋ똾寃�
//        if( file.isEmpty() ){
//            message = "占쎈슣�わ옙占쏙옙�곷뮸占쎈뜄��;
//            flag = false;
//        }
//        
//        shopDAO.setShopExcelDelete();
//				
//		// 占쎈벏鍮�눧紐꾧퐣 97-2003 xls
//		if(FilenameUtils.getExtension(file.getOriginalFilename()).equalsIgnoreCase("xls")){
//			POIFSFileSystem fs = new POIFSFileSystem(new ByteArrayInputStream(file.getBytes()));
//			
//			HSSFWorkbook wb = new HSSFWorkbook( fs );        
//			HSSFSheet sheet = wb.getSheetAt(0); //1甕곤옙占쎌뮉��m
//			HSSFRow row = null;
//			
//	        String nation = null;
//	        String shopId = null;
//	        String shopName = null;
//	        String addr = null;
//	        	        
//	        int rows = sheet.getPhysicalNumberOfRows();
//	            
//	        if(flag){
//		        for(int i=1;i<rows;i++){ 
//					row = sheet.getRow(i); //2占쎈맧占쏙옙占�//					nation = excelDataStringHSSF(row.getCell(0)); // �댐옙占썼굜遺얜굡
//					shopId = excelDataStringHSSF(row.getCell(1)); // SHOPID
//					shopName = excelDataStringHSSF(row.getCell(2)); // SHOP占쎈�已�
//					addr = excelDataStringHSSF(row.getCell(3)); // 雅뚯눘��
//								
//					Map<String, Object> nMap = new HashMap<String, Object>();
//					nMap.put("NATION", nation);
//					nMap.put("SHOPID", shopId);
//					nMap.put("SHOPNM", shopName);
//					nMap.put("ADDR", addr);
//					
//					shopDAO.setShopExcelInsert(nMap);
//					
//					list.add(nMap);
//				}
//	        }
//	        
//	    // 占쎈벏鍮�눧紐꾧퐣 xlsx
//		}else{
//			XSSFWorkbook wb = new XSSFWorkbook(file.getInputStream());
//			XSSFSheet sheet = wb.getSheetAt(0);
//			XSSFRow row = null;
//			
//	        String nation = null;
//	        String shopId = null;
//	        String shopName = null;
//	        String addr = null;
//	        
//	        int rows = sheet.getPhysicalNumberOfRows();
//	            
//	        if(flag){
//		        for(int i=1;i<rows;i++){ 
//					row = sheet.getRow(i); //2占쎈맧占쏙옙占�//					nation = excelDataStringXSSF(row.getCell(0)); // �댐옙占썼굜遺얜굡
//					shopId = excelDataStringXSSF(row.getCell(1)); // SHOPID
//					shopName = excelDataStringXSSF(row.getCell(2)); // SHOP占쎈�已�
//					addr = excelDataStringXSSF(row.getCell(3)); // 雅뚯눘��
//								
//					Map<String, Object> nMap = new HashMap<String, Object>();
//					nMap.put("NATION", nation);
//					nMap.put("SHOPID", shopId);
//					nMap.put("SHOPNM", shopName);
//					nMap.put("ADDR", addr);
//					
//					shopDAO.setShopExcelInsert(nMap);
//					
//					list.add(nMap);
//				}
//	        }
////		}
////  
//		
//		
		return SUCCESS;
	}//Finish setExcelUpload()
//	 
//	
//	/**
//	 * 占쎈쵐占�占쎄퀣�좑옙怨좎굨 癰귨옙��XSSF
//	 */
//	private String excelDataStringXSSF(XSSFCell cell){
//		String value = "";
//		switch(cell.getCellType()){   //揶쏄낯占쏙옙占쏙옙怨쀬뵠占쎄퀗而わ옙占썲첎占쎌죬占싼됰르 筌띿쉶��占쎄퀣�좑옙怨좎굨占쎌눖以�癰귨옙�싷옙�뺣뼄.	        
//		 case XSSFCell.CELL_TYPE_FORMULA:
//			 value = cell.getCellFormula();
//             break;
//		 case XSSFCell.CELL_TYPE_NUMERIC:
//			 value =""+(int)cell.getNumericCellValue();
//             break;
//		 case XSSFCell.CELL_TYPE_STRING:
//             value =""+cell.getStringCellValue();
//             break;
//         case XSSFCell.CELL_TYPE_BLANK:
//             value ="";
//             break;
//         case XSSFCell.CELL_TYPE_ERROR:
//             value="";
//             break;
//         default:
//		}
//		
//		return value;
//	}
//	
//	/**
//	 * 占쎈쵐占�占쎄퀣�좑옙怨좎굨 癰귨옙��HSSF
//	 */
//	private String excelDataStringHSSF(HSSFCell cell){
//		String value = "";
//		switch(cell.getCellType()){   //揶쏄낯占쏙옙占쏙옙怨쀬뵠占쎄퀗而わ옙占썲첎占쎌죬占싼됰르 筌띿쉶��占쎄퀣�좑옙怨좎굨占쎌눖以�癰귨옙�싷옙�뺣뼄.	        
//		 case HSSFCell.CELL_TYPE_FORMULA:
//			 value = cell.getCellFormula();
//             break;
//		 case HSSFCell.CELL_TYPE_NUMERIC:
//			 value =""+(int)cell.getNumericCellValue();
//             break;
//		 case HSSFCell.CELL_TYPE_STRING:
//             value =""+cell.getStringCellValue();
//             break;
//         case HSSFCell.CELL_TYPE_BLANK:
//             value ="";
//             break;
//         case HSSFCell.CELL_TYPE_ERROR:
//             value="";
//             break;
//         default:
//		}
//		
//		return value;
//	} 
}//Finish this Class