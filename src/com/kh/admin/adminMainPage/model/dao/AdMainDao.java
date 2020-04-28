package com.kh.admin.adminMainPage.model.dao;

import static com.kh.common.JDBCTemplate.close;

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
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;
import com.kh.admin.adminProduct.model.dao.AdProductDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import com.kh.product.model.vo.Product;

public class AdMainDao {
	
	private Properties prop = new Properties();
	
	/**
	 * sql properties 경로 설정
	 */
	public AdMainDao() {
		String filePath = AdProductDao.class.getResource("/sql/adMain/adMain-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<Product> adMainProList(Connection conn){
		
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProMain");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Product(rset.getString("PRODUCT_CODE"),
						              rset.getString("SUPPLY_CO_NAME"),
						              rset.getString("PRODUCT_NAME"),
						              rset.getInt("PRODUCT_PRICE"),
						              rset.getInt("PRODUCT_STOCK")));				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	public ArrayList<OrderDelivery> adMainPayList(Connection conn){
		
		ArrayList<OrderDelivery> list1 = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPayMain");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list1.add(new OrderDelivery(rset.getString("ORDER_NO"),
						              rset.getString("MEMBER_ID"),
						              rset.getString("MEMBER_NAME"),
						              rset.getString("PHONE"),
						              rset.getInt("PAYMENT_AMOUNT"),
						              rset.getDate("ORDER_DATE"),
						              rset.getInt("STATUS")));				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list1;
	}
	
		
	
	
	public ArrayList<AdOneInquiry> adMainQuiryList(Connection conn){
		
		ArrayList<AdOneInquiry> list2 = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectQuiryMain");
		
		try {
			stmt = conn.createStatement();
			
			rset = stmt.executeQuery(sql);
			while(rset.next()) {
				list2.add(new AdOneInquiry(rset.getInt("INQUIRY_BOARD_NO"),
										  rset.getDate("INQUIRY_CREATE_DATE"),
										  rset.getString("MEMBER_ID"),
										  rset.getString("INQUIRY_TITLE"),
										  rset.getString("INQUIRY_CONTENT"),
										  rset.getString("INQUIRY_RESPONSE_YN")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list2;
	}
}
