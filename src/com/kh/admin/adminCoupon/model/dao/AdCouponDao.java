package com.kh.admin.adminCoupon.model.dao;

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

import com.kh.admin.adminCoupon.model.vo.AdCoupon;
import com.kh.member.model.dao.MemberDao;

public class AdCouponDao {
	
private Properties prop = new Properties();
	
	public AdCouponDao() {
		String filePath = MemberDao.class.getResource("/sql/adCoupon/adCoupon-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}


	}

	public ArrayList<AdCoupon> selectList(Connection conn) {

		ArrayList<AdCoupon> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCoupon");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				list.add(new AdCoupon(rset.getString("COUPON_CODE"),
									  rset.getString("COUPON_NAME"),
									  rset.getString("COUPON_CONDITION"),
									  rset.getInt("COUPON_EXP_DATE"),
									  rset.getInt("COUPON_PRICE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
			close(stmt);
		}
		
		return list;
	}

	public AdCoupon detailCoupon(Connection conn, String cc) {
		
		AdCoupon c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cc);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new AdCoupon(rset.getString("COUPON_CODE"),
								 rset.getString("COUPON_NAME"),
								 rset.getString("COUPON_CONDITION"),
								 rset.getInt("COUPON_EXP_DATE"),
								 rset.getInt("COUPON_PRICE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return c;
	}

	public ArrayList<AdCoupon> searchCoupon(Connection conn, String couponCode) {
		
		ArrayList<AdCoupon> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + couponCode + "%");
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new AdCoupon(rset.getString("COUPON_CODE"),
						  			  rset.getString("COUPON_NAME"),
						  			  rset.getString("COUPON_CONDITION"),
						  			  rset.getInt("COUPON_EXP_DATE"),
						  			  rset.getInt("COUPON_PRICE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}				
		return list;
	}

	public int deleteCoupon(Connection conn, String cc) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cc);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMemberCoupon(Connection conn, String cc) {
		
		int result2 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMemberCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cc);
			
			result2 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result2;
	}
}







