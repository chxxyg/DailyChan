package com.kh.admin.adminDiscount.model.dao;

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

import com.kh.admin.adminDiscount.model.vo.AdDiscount;
import com.kh.member.model.dao.MemberDao;

public class AdDiscountDao {
	
	private Properties prop = new Properties();
	
	public AdDiscountDao() {
		String filePath = MemberDao.class.getResource("/sql/adDiscount/adDiscount-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

}

	public ArrayList<AdDiscount> selectList(Connection conn) {

		ArrayList<AdDiscount> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectDiscount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			while(rset.next()) {
				list.add(new AdDiscount(rset.getInt("DISCOUNT_CODE"),
										rset.getString("PRODUCT_CODE"),
										rset.getDate("DISCOUNT_STARTDATE"),
										rset.getDate("DISCOUNT_ENDDATE"),
										rset.getInt("DISCOUNT_RATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public AdDiscount detailDiscount(Connection conn, int dc) {
		
		AdDiscount d = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailDiscount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dc);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				d = new AdDiscount(rset.getInt("DISCOUNT_CODE"),
								   rset.getString("PRODUCT_CODE"),
								   rset.getDate("DISCOUNT_STARTDATE"),
								   rset.getDate("DISCOUNT_ENDDATE"),
								   rset.getInt("DISCOUNT_RATE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}		
		return d;
	}

	public ArrayList<AdDiscount> searchDiscount(Connection conn, String productCode) {
		
		ArrayList<AdDiscount> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchDiscount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + productCode + "%");
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new AdDiscount(rset.getInt("DISCOUNT_CODE"),
										rset.getString("PRODUCT_CODE"),
										rset.getDate("DISCOUNT_STARTDATE"),
										rset.getDate("DISCOUNT_ENDDATE"),
										rset.getInt("DISCOUNT_RATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int deleteDiscount(Connection conn, int dc) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteDiscount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dc);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result;
	}
}
