package com.kh.mypage.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
	

}
