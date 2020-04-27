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
}
