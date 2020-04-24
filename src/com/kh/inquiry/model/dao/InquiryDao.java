package com.kh.inquiry.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.inquiry.model.vo.Inquiry;

public class InquiryDao {
	
	private Properties prop = new Properties();

	public int insertInquiry(Connection conn, Inquiry i) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertInquiry");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, i.getMemberId());
			pstmt.setString(2, i.getInquiryType());
			pstmt.setString(3, i.getInquiryTitle());
			pstmt.setString(4, i.getInquiryContent());
			pstmt.setString(5, i.getInquiryFileYn());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}
	
	
	
	
}
