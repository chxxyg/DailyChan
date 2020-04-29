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
	
	/** 1_1. 주문배송조회
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
				myList.add(new Mypage( rset.getString("PRODUCT_CODE"),
									   rset.getInt("PRICE"),
									   rset.getInt("QUANTITY"),
									   rset.getString("ORDER_NO"),
									   rset.getDate("ORDER_DATE"),
									   rset.getInt("STATUS"),
									   rset.getString("PRODUCT_NAME"),
									   rset.getString("FILE_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return myList;
	}
	
	/** 1_2. 주문배송조회 : 한 주문번호에 몇 개 상품 담겼나
	 * @param conn
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> countOrdNo(Connection conn, String memberId){
		
		ArrayList<Mypage> count = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countOrdNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				count.add(new Mypage(rset.getInt(1)));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	/** 2. 메인 아우터 주문건수 조회
	 * @param memberId
	 * @return
	 */
	public int ordCount(Connection conn, String memberId) {
		
		int ordCount =  0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("ordCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ordCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return ordCount;
		
	}
	
}
