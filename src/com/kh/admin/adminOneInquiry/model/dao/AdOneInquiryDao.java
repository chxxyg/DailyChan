package com.kh.admin.adminOneInquiry.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;
import com.kh.member.model.dao.MemberDao;

public class AdOneInquiryDao {
	
	private Properties prop = new Properties();
	
	public AdOneInquiryDao() {
		String filePath = MemberDao.class.getResource("/sql/adOneInquiry/adOneInquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<AdOneInquiry> selectList(Connection conn) {
		
		ArrayList<AdOneInquiry> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			while(rset.next()) {
				list.add(new AdOneInquiry(rset.getInt("INQUIRY_BOARD_NO"),
										  rset.getDate("INQUIRY_CREATE_DATE"),
										  rset.getString("MEMBER_ID"),
										  rset.getString("INQUIRY_TITLE"),
										  rset.getString("INQUIRY_CONTENT"),
										  rset.getString("INQUIRY_RESPONSE_YN")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}

	public AdOneInquiry detailAdOneInquiry(Connection conn, int ibn) {
		
		AdOneInquiry i = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ibn);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				i = new AdOneInquiry(rset.getInt("INQUIRY_BOARD_NO"),
						  			 rset.getDate("INQUIRY_CREATE_DATE"),
						  			 rset.getString("MEMBER_ID"),
						  			 rset.getString("INQUIRY_TITLE"),
						  			 rset.getString("INQUIRY_CONTENT"),
						  			 rset.getString("INQUIRY_RESPONSE_YN"),
						  			 rset.getString("INQUIRY_RESPONSE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return i;
	}

	public ArrayList<AdOneInquiry> search(Connection conn, String memberId) {
		
		ArrayList<AdOneInquiry> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset =  null;
		
		String sql = prop.getProperty("search");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new AdOneInquiry(rset.getInt("INQUIRY_BOARD_NO"),
						  			 	  rset.getDate("INQUIRY_CREATE_DATE"),
						  			 	  rset.getString("MEMBER_ID"),
						  			 	  rset.getString("INQUIRY_TITLE"),
						  			 	  rset.getString("INQUIRY_CONTENT"),
						  			 	  rset.getString("INQUIRY_RESPONSE_YN"),
						  			 	  rset.getString("INQUIRY_RESPONSE")));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int responseInquiry(Connection conn, AdOneInquiry i) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, i.getInquiryResponse());
			pstmt.setInt(2, i.getInquiryBoardNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result;
	}

	public int yn(Connection conn, int ibn) {
		
		int result2 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("yn");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ibn);
			
			result2 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result2;
	}
	

}
