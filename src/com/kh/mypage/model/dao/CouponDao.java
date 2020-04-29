package com.kh.mypage.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.close;

import com.kh.mypage.model.vo.MemberCoupon;
import com.kh.product.model.dao.ProductDao;

public class CouponDao {
	
	private Properties prop = new Properties();
	
	public CouponDao() {
		String filePath = ProductDao.class.getResource("/sql/myPage/coupon-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<MemberCoupon> selectMemberCouponList(Connection conn, String userId){
		
		ArrayList<MemberCoupon> mcList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		
		sql = prop.getProperty("selectMemberCouponList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, "N");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				mcList.add(new MemberCoupon(rset.getDate("COUPON_ISSUE_DATE"),
											rset.getString("COUPON_NAME"),
											rset.getString("COUPON_CONDITION"),
											rset.getDate("COUPON_EXP_DATE"),
											rset.getInt("COUPON_PRICE")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return mcList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
