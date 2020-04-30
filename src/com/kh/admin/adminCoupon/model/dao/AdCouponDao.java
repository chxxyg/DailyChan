package com.kh.admin.adminCoupon.model.dao;

import static com.kh.common.JDBCTemplate.close;

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
import com.kh.admin.adminMember.model.vo.AdPageInfo;
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

	public ArrayList<AdCoupon> selectList(Connection conn, AdPageInfo pi) {

		ArrayList<AdCoupon> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCoupon");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
				
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

	public ArrayList<AdCoupon> searchCoupon(Connection conn,AdPageInfo pi, String couponCode) {
		
		ArrayList<AdCoupon> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchCoupon");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + couponCode + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
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

	public int insertCoupon(Connection conn, AdCoupon c) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCoupon");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getCouponCode());
			pstmt.setString(2, c.getCouponName());
			pstmt.setString(3, c.getCouponCondition());
			pstmt.setInt(4, c.getCouponExpDate());
			pstmt.setInt(5, c.getCouponPrice());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result;
	}
	public int adCuCount(Connection conn) {
		
		int countCu = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countCu");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countCu = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countCu;
			
	}
	public int adCupCount(Connection conn, String couponCode) {
		
		int countCup = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countCup");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+couponCode+"%");
			rset=pstmt.executeQuery();
			if(rset.next()) {
				countCup = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return countCup;
		
	}
		
	
}

