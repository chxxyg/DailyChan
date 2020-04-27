package com.kh.mypage.model.dao;

import static com.kh.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.mypage.model.vo.Mypage;

public class MyOrderDao {
	
	private Properties prop = new Properties();

	public MyOrderDao() {
		 String filePath = MemberDao.class.getResource("/sql/myPage/myOrder-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/** 1. 주문/배송조회, 상세페이지조회, 최근구매한상품 조회용
	 * @param conn
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> selectOrder(Connection conn, String memberId){
		
		ArrayList<Mypage> myList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOrdList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				myList.add(new Mypage(rset.getString("ORDER_NO"),
									  rset.getDate("PAYMENT_DATE"),
									  rset.getString("PRODUCT_CODE"),
									  rset.getString("FILE_NAME"),
									  rset.getString("PRODUCT_NAME"),
									  rset.getInt("PRODUCT_PRICE"),
									  rset.getInt("QUANTITY"),
									  rset.getInt("PAYMENT_AMOUNT"),
									  rset.getInt("STATUS"),
									  rset.getString("COUPON_CODE"),
									  rset.getInt("COUPON_PRICE"),
									  rset.getString("PAYMENT_TYPE"),
									  rset.getDate("PAYMENT_DATE"),
									  rset.getString("RECIPIENT"),
									  rset.getString("PHONE"),
									  rset.getString("ADDRESS"),
									  rset.getString("DELIVERY_REQUEST")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return myList;
	}
	
	/** 2. 취소반품조회
	 * @param conn
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> selectRefund(Connection conn, String memberId){
		
		ArrayList<Mypage> myList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectRefundList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				myList.add(new Mypage(rset.getString("ORDER_NO"),
									  rset.getDate("ORDER_Date"),
									  rset.getString("product_code"),
									  rset.getString("product_name"),
									  rset.getInt("quantity"),
									  rset.getInt("price"),
									  rset.getString("payment_type"),
									  rset.getDate("refund_date"),
									  rset.getInt("Status")));
						
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return myList;
		
	}
	
}
