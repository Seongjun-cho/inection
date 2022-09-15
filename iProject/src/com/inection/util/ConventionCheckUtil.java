package com.inection.util;

public class ConventionCheckUtil {

	String avaExt; 
	String sFILE_DIRECTORY;
	String avatag;

	String file_ext;
	boolean chkExt = false;
	
	/** 
	 * 
	 * @author wonjongtae
	 * @category 占쎈슣��占쎈굝以덌옙占쏙옙��뵬 筌ｋ똾寃� 占쎈슣��野껋럥以�筌ｋ똾寃� sql占쎄쑵苑� xss占쎄쑵苑�
	 * @since 2013.09.12 
	 * 
	 * */
	
	/** 占쎈슣��占쎈굝以덌옙占쏙옙��뵬 筌ｋ똾寃�*/
	public boolean checkUpFile(String fileName) {

		try {

			if (fileName.indexOf("\0") > -1) {
				chkExt = false;
			}
			//占쎈굝以덌옙占썸묾�됵옙 占쎈벡�ｏ옙占쏙㎗�꾧쾿
			file_ext = fileName.substring(fileName.lastIndexOf('.') + 1);

			if ((file_ext.equalsIgnoreCase("jsp") || file_ext.equalsIgnoreCase("htm") || file_ext.equalsIgnoreCase("html"))) {//占쎈뜆�끾에占썲쳞怨뺧옙 占쎈�已ワ옙占쏙옙源낆쨯占쎌꼵由�
				chkExt = false;
			} else {
				chkExt = true;
			}

		} catch (Exception e) {
			System.out.println("연결예외발생");
		}
		
		return chkExt;
	}//Finish checkUpFile()

	/** 占쎈슣��野껋럥以�筌ｋ똾寃�*/
	public String checkpath(String fname) {
		//TODO
		//占쎈굝�곤옙�롫뮉 占쎈뗀�놅옙醫듼봺筌뤿굞肉됵옙占쏙옙諭�땾�얜챷��占쎌쥓龜 野껓옙沅�
		//if((dn_path.indexOf("..\\") != -1) || (dn_path.indexOf("../") != -1)) {
		//	return "error";
		//}
		String dn_path = "";
		//占싼딆뒠占쏙옙占쎈굝�겼첎誘れ몵嚥∽옙占썬끉�ユ에�뺣굡 占쎈슣��野껋럥以�占쎌빘苑�
		if (sFILE_DIRECTORY.equals("")) {
			dn_path = "";
		} else {
			dn_path = sFILE_DIRECTORY + "/";
		}
		String origfile = dn_path + fname;

		//fname占쎈Ŋ苑�占쎈슣�わ쭗�낆춸 �브쑬��- 占쎈슣�わ쭗�녿퓠 �⑤벀爰�占쎄쑵肉뺧옙占썼눧紐꾩쁽 占쎄쑵苑ｏ쭕占�		//fname.replaceAll("\\","/"); //占쎌눖占�甕곌쑴�억옙癒�퐣 占썬끇履�獄쏆뮇源�

		String filename3 = fname.substring(fname.lastIndexOf('/') + 1);
		//fname.replaceAll("\\","/")揶쏉옙占싼딆뒠占쏙옙占쏙옙占쎈끏��野껋럩��占쎄쑬��
		String filename4 = fname.substring(fname.lastIndexOf('\\') + 1);

		//�브쑬�곻옙占쏙옙��뵬筌뤿굛��占쎈뜄占�野껋럥以덄몴占쏙옙��꾬옙占�		
		String FilePath = dn_path + filename4;

		//占싼딆뒠占쏙옙占쎈굝�겼첎誘⑤궢 占싼덈럡占쎄퉲釉�占쎈굝�겼첎誘れ뱽 ��쑨�놂옙�뤿연 �⑤벀爰�占쎄쑵肉뺧옙源놁뵠 鈺곕똻�깍옙�롫뮉筌욑옙占쎈벡��
		if (origfile.equals(FilePath)) {
			return (FilePath);
		} else {
			return "error";
		}
	}//Finish checkpath()

	/** sql 占쎄쑵苑�sql injection) VO筌띾뜄��占썬끉��占쎈똻夷억옙�노맙 */
	public String sqlFilter(String str) {
		str = str.replaceAll("'", "");
		//str = str.replaceAll("/", "");
		//str = str.replaceAll("\","");
		str = str.replaceAll(";", "");
		str = str.replaceAll("#", "");
		str = str.replaceAll("--", "");
		str = str.replaceAll(" ", "");
	
		return (str);
	}//Finish sqlFilter()

	/** xss占쎄쑵苑�cross site scripting) Action筌띾뜄��占썬끉�숋옙占썰틠�깅선占쎌눛釉�*/
	public String clearXSS(String str) {
		str = str.replaceAll("<", "&lt;"); 
		str = str.replaceAll("\0", "");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("'", " ");
		str = str.replaceAll("\"", " ");
		//str = str.replaceAll("\\","");
		str = str.replaceAll("\r", " ");

		return (str);
	}//Finish clearXSS()
	public String unhacking(String str){
		return str.replaceAll("[^_a-z A-Z 0-9 가-힣 \\. \\: \\/ \\- \\@ \\, \\% \\* \\( \\) \\+ \\= \\ \" \\? \\] \\[ \\{ \\ \n \r} ]", "");
	}
	public String convertIsNull(String value) {
		if (value == null || value.equals("N/A") || value.equals("NA") || value.equals("null") || value.equals("NULL")) return "";
		return unhacking(value);
	}
}//Finish This Class