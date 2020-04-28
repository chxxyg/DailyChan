package com.kh.mypage.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.mypage.model.vo.Review;
import com.kh.product.model.dao.ProductDao;


public class ReviewDao {
	
	private Properties prop = new Properties();
	

	public ReviewDao() {
		String filePath = ProductDao.class.getResource("/sql/myPage/review-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertReview(Connection conn, Review re) {
		// product_code, member_id, review_title, review_content, review_rating
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, re.getProductCode());
			pstmt.setString(2, re.getMemberId());
			pstmt.setString(3, re.getReviewTitle());
			pstmt.setString(4, re.getReviewContent());
			pstmt.setInt(5, re.getReviewRating());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return result;
	}
	
	public ArrayList<Review> selectReviewList(Connection conn, String proCode) {
		
		ArrayList<Review> rList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		
		sql = prop.getProperty("selectReviewList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, proCode);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				rList.add(new Review(rset.getInt("REVIEW_BOARD_NO"),
									 rset.getString("ORDER_NO"),
									 rset.getString("PRODUCT_CODE"),
									 rset.getString("MEMBER_ID"),
									 rset.getString("REVIEW_TITLE"),
									 rset.getString("REVIEW_CONTENT"),
									 rset.getInt("REVIEW_RATING"),
									 rset.getDate("REVIEW_CREATE_DATE"),
									 rset.getString("REVIEW_DEL_STATUS")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return rList;
	}
	
	public int updateReviewSumCount(Connection conn, String proCode) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateReveiwSumCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, proCode);
			pstmt.setString(2, proCode);
			pstmt.setString(3, proCode);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	

}
