package com.kh.admin.adminPayment.model.dao;

import static com.kh.common.JDBCTemplate.*;

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
import com.kh.admin.adminProduct.model.dao.AdProductDao;
import com.kh.orderDelivery.model.vo.OrderDelivery;
import com.kh.product.model.vo.Product;

public class AdPaymentDao {

	private Properties prop = new Properties();
	
	/**
	 * sql properties 경로 설정
	 */
	public AdPaymentDao() {
		String filePath = AdProductDao.class.getResource("/sql/adPayment/adPayment-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 총 주문 수
	 */
	public int adPaymentListCount(Connection conn) {
		
		int countProduct = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countProduct");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countProduct = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countProduct;
			
	}
	
	public ArrayList<OrderDelivery> adPaymentSelectList(Connection conn, AdPageInfo pi){
		
		ArrayList<OrderDelivery> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectPayment");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new OrderDelivery(rset.getString("ORDER_NO"),
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
		return list;
	}
	
	public int adPaymentUpdate(Connection conn, String payNo, int payCategory) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePayment");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, payCategory);
			pstmt.setString(2, payNo);
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
		
	}
	
	
	
}
