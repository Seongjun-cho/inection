/**
 * 
 *	DB CLOB/BLOB 데이터 넣기.
 *  pooling방식인듯.
 *  차후 연구필요 
 * 
 * 
 
package com.inection.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import oracle.sql.BLOB;

public class LOBUtil {

	public void getIndct(	String memid, 		String pay_no, 		String dongho_no,
						String charg_yymm, 	String now_indct, 	String img_yn,
						String img_name, 	String filename, 	String uploadPath,
						String inspmtr_cd,	String rpl_rtn_indct) throws Exception {
		
		//JDBCLocalHelper jdbclocalHelper = new JDBCLocalHelper();
		Connection con = jdbclocalHelper.getConnection();
		con.setAutoCommit(false);
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		StringBuffer delsbr = new StringBuffer();
		
		delsbr.append("delete wb_indct_input where dongho_no = ");
		delsbr.append("(select DONGHO_NO from wb_build_cust_v where pay_no='"+ pay_no + "') and  ");
		delsbr.append(" memid= '" + memid + "' and  ");
		delsbr.append(" charg_yymm = '" + charg_yymm + "' ");
		
		System.out.println("delsbr : " + delsbr);
		
		pstmt = con.prepareStatement(delsbr.toString());
		pstmt.executeUpdate();
		
		con.commit();
		
		System.out.println("commit?");
		StringBuffer sbr = new StringBuffer();
		sbr.append("insert into wb_indct_input(no, memid, pay_no, dongho_no, charg_yymm, write_date, now_indct, img_yn, img_name, input_gbn, add_file, inspmtr_cd, rpl_rtn_indct)");
		sbr.append("values(SWS_WB_INDCT_INPUT_ID.nextval,");
		sbr.append("'" + memid + "', ");
		sbr.append("'" + pay_no + "',");
		sbr.append("(select DONGHO_NO from wb_build_cust_v where pay_no='"+ pay_no + "'), ");
		sbr.append("'" + charg_yymm + "', ");
		sbr.append("sysdate, ");
		sbr.append("'" + now_indct + "',");
		
		// TODO
		if (filename.equals("")) {
			sbr.append("'N', 'null', ");
		} else {
			sbr.append("'Y', '" + filename + "', ");
		}
		
		sbr.append("'M', ");
		sbr.append("EMPTY_BLOB(), ");
		sbr.append("'" + inspmtr_cd + "', ");
		sbr.append("'" + rpl_rtn_indct + "')");

		System.out.println(sbr.toString());
		pstmt = con.prepareStatement(sbr.toString());
		pstmt.executeUpdate();

		StringBuffer sbr2 = new StringBuffer();
		sbr2.append("select add_file from wb_indct_input where memid=");
		sbr2.append("'" + memid + "' and now_indct ='" + now_indct + "' for update");
		System.out.println(sbr2.toString());
		pstmt = con.prepareStatement(sbr2.toString());
		ResultSet rs1 = pstmt.executeQuery();

		try {
			while (rs1.next()) {
				BLOB blob = (BLOB) rs1.getBlob(1);
				OutputStream os = blob.getBinaryOutputStream();
				File f = new File(uploadPath + filename);
				FileInputStream src = new FileInputStream(f);
				byte[] buffer = new byte[2048];
				int read = 0;
				while ((read = src.read(buffer)) != -1) {
					os.write(buffer, 0, read); // write blob
				}
				os.flush();
				os.close();
				src.close();
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			con.commit();
			con.setAutoCommit(true);
			pstmt.close();
			con.close();
		}
	}

	public void getTax(String pay_no, String mnname, String mnphone,
			String mnmail, String post_no, String address1, String address2,
			String print_no, String company_name, String company_ceo,
			String company_address1, String filename, String uploadPath)
			throws Exception {
		//JDBCLocalHelper jdbclocalHelper = new JDBCLocalHelper();
		Connection con = jdbclocalHelper.getConnection();
		con.setAutoCommit(false);
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		StringBuffer sbr = new StringBuffer();
		sbr.append("insert into wb_tax(tax_no, mnname, mnphone, mnmail, post_no, address1, address2, print_no, company_name, company_ceo, company_address1, service1, im_price, write_time, submit_ox, input_gbn, add_file)");
		sbr.append("values(sws_wb_tax_id.nextval,");
		sbr.append("'" + mnname + "', ");
		sbr.append("'" + mnphone + "',");
		sbr.append("'" + mnmail + "',");
		sbr.append("(select distinct(post_zipno) from bl_image_summary where pay_no='"
				+ pay_no + "'), ");
		sbr.append("(select distinct(cust_addr1) from wb_build_cust_v where pay_no='"
				+ pay_no + "'), ");
		sbr.append("(select distinct(cust_addr2) from wb_build_cust_v where pay_no='"
				+ pay_no + "'), ");
		sbr.append("'" + print_no + "', ");
		sbr.append("'" + company_name + "', ");
		sbr.append("'" + company_ceo + "', ");
		sbr.append("'" + company_address1 + "', ");
		sbr.append("'발급신청', ");
		sbr.append("0, ");
		sbr.append("sysdate, ");
		sbr.append("'Y', ");
		sbr.append("'M', ");
		sbr.append("EMPTY_BLOB())");

		System.out.println(sbr.toString());
		pstmt = con.prepareStatement(sbr.toString());
		pstmt.executeUpdate();

		StringBuffer sbr2 = new StringBuffer();
		sbr2.append("select add_file from wb_tax where print_no=");
		sbr2.append("'" + print_no + "' for update");
		System.out.println(sbr2.toString());
		pstmt = con.prepareStatement(sbr2.toString());
		ResultSet rs1 = pstmt.executeQuery();

		try {
			while (rs1.next()) {
				BLOB blob = (BLOB) rs1.getBlob(1);
				OutputStream os = blob.getBinaryOutputStream();
				File f = new File(uploadPath + filename);
				FileInputStream src = new FileInputStream(f);
				byte[] buffer = new byte[2048];
				int read = 0;
				while ((read = src.read(buffer)) != -1) {
					os.write(buffer, 0, read); // write blob
				}
				os.flush();
				os.close();
				src.close();
			}
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			con.commit();
			con.setAutoCommit(true);
			pstmt.close();
			con.close();
		}
	}

	public void getUploadBLOB(String id, String filename, String uploadPath)
			throws Exception {
		JDBCLocalHelper jdbclocalHelper = new JDBCLocalHelper();
		Connection con = jdbclocalHelper.getConnection();
		con.setAutoCommit(false);
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		System.out.println("base setting");

		StringBuffer sbr = new StringBuffer();
		sbr.append("INSERT INTO blob_test(id, img) VALUES('");
		sbr.append(id);
		sbr.append("',EMPTY_BLOB())");
		System.out.println(sbr.toString());
		pstmt = con.prepareStatement(sbr.toString());
		pstmt.executeUpdate();
		System.out.println("insert com");

		StringBuffer sbr2 = new StringBuffer();
		sbr2.append("select img from blob_test where id ='");
		sbr2.append(id);
		sbr2.append("' for update");
		System.out.println(sbr2.toString());
		pstmt = con.prepareStatement(sbr2.toString());
		ResultSet rs1 = pstmt.executeQuery();
		System.out.println("update");
		try {
			System.out.println("rsnext");
			while (rs1.next()) {
				System.out.println("inner rs");
				BLOB blob = (BLOB) rs1.getBlob(1);
				OutputStream os = blob.getBinaryOutputStream();
				File f = new File(uploadPath + filename);
				FileInputStream src = new FileInputStream(f);
				byte[] buffer = new byte[2048];
				int read = 0;
				while ((read = src.read(buffer)) != -1) {
					System.out.println("inner rs and while");
					os.write(buffer, 0, read); // write blob
				}
				System.out.println("inner rs end while");
				os.flush();
				os.close();
				src.close();
			}
			System.out.println("rs end");
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			con.commit();
			con.setAutoCommit(true);
			pstmt.close();
			con.close();
		}
	}
}
*/