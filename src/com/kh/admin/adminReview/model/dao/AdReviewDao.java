package com.kh.admin.adminReview.model.dao;

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

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminReview.model.dao.AdReviewDao;
import com.kh.admin.adminReview.model.vo.AdReview;
import com.kh.member.model.dao.MemberDao;


public class AdReviewDao {
	
private Properties prop = new Properties();
	
	public AdReviewDao() {
		String filePath = MemberDao.class.getResource("/sql/adReview/adReview-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<AdReview> selectList(Connection conn, AdPageInfo pi) {
		
		ArrayList<AdReview> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReview");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;

		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new AdReview(rset.getInt("REVIEW_BOARD_NO"),
									  rset.getString("ORDER_NO"),
									  rset.getString("PRODUCT_CODE"),
									  rset.getDate("REVIEW_CREATE_DATE"),
									  rset.getString("MEMBER_ID"),
									  rset.getString("REVIEW_TITLE"),
									  rset.getString("REVIEW_CONTENT")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
			close(pstmt);
		}
		return list;
	}

	public AdReview detailReview(Connection conn, int rbo) {
		
		AdReview v = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				v = new AdReview(rset.getInt("REVIEW_BOARD_NO"),
						  		 rset.getString("ORDER_NO"),
						  		 rset.getString("PRODUCT_CODE"),
						  		 rset.getDate("REVIEW_CREATE_DATE"),
						  		 rset.getString("MEMBER_ID"),
						  		 rset.getString("REVIEW_TITLE"),
						  		 rset.getString("REVIEW_CONTENT"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return v;
	}

	public ArrayList<AdReview> searchReview(Connection conn, String memberId, AdPageInfo pi) {

		ArrayList<AdReview> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchReview");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;

		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);

			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new AdReview(rset.getInt("REVIEW_BOARD_NO"),
						  			  rset.getString("ORDER_NO"),
						  			  rset.getString("PRODUCT_CODE"),
						  			  rset.getDate("REVIEW_CREATE_DATE"),
						  			  rset.getString("MEMBER_ID"),
						  			  rset.getString("REVIEW_TITLE"),
						  			  rset.getString("REVIEW_CONTENT")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int deleteReview(Connection conn, int rno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteReview");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int adReCount(Connection conn) {
		
		int countReview = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countReview");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countReview = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countReview;
			
	}


}


