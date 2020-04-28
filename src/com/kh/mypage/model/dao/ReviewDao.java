package com.kh.mypage.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.product.model.dao.ProductDao;

import static com.kh.common.JDBCTemplate.*;


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
	
	public int insertReview(Connection conn, String proCode) {
		// product_code, member_id, review_title, review_content, review_rating
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(2, proCode);
			pstmt.setString(3, "member_id");
			pstmt.setString(4, "review_title");
			pstmt.setString(5, "review_content");
			pstmt.setInt(6, 4);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		
		return result;
	}

}
