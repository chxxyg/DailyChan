package com.kh.product.model.dao;

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

import com.kh.product.model.vo.ShoppingCart;

public class CartDao {
	
	private Properties prop = new Properties();

	public CartDao() {
		String filePath = CartDao.class.getResource("/sql/product/cart-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/** 1_1. 상품 장바구니에 담기 전, 장바구니에 이미 담긴 상품인지 확인하는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int searchCart(Connection conn, String memberId, String proCode) {
		
		int exist = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, proCode);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				exist = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return exist;
	}

	/** 1_2. 상품 장바구니에 넣는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @param proPrice
	 * @return
	 */
	public int insertCart(Connection conn, String memberId, String proCode, int proPrice) {
		
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setInt(2, proPrice);
			pstmt.setString(3, proCode);
			
			result = pstmt.executeUpdate();
						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 2. 장바구니에 담긴 값들 조회해오는 메소드
	 * @param conn
	 * @param memberId
	 * @return
	 */
	public ArrayList<ShoppingCart> selectCart(Connection conn, String memberId) {
		
		ArrayList<ShoppingCart> clist = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				clist.add(new ShoppingCart(rset.getString("PRODUCT_NAME"),
										  rset.getInt("PRICE"),
										  rset.getString("PRODUCT_CODE"),
										  rset.getInt("QUANTITY"),
										  rset.getString("FILE_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return clist;
	}
	
	/** 3. 장바구니에 담긴 상품 수량 변경하는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @param qty
	 * @return
	 */
	public int updateQtyCart(Connection conn, String memberId, String proCode, int qty) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateQtyCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, qty);
			pstmt.setString(2, memberId);
			pstmt.setString(3, proCode);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/** 4. 장바구니에서 선택된 상품 삭제
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int deleteCart(Connection conn, String memberId, String proCode) {
		
		int del = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, proCode);
			
			del = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return del;
	}
	
	/** 5. 장바구니 - 주문상태 'Y'로 변경
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public int updateCartStatus(Connection conn, String memberId, String proCode) {
		
		int update = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateCartStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, proCode);
			
			update = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return update;
	}
	
	/** 6. ORDER_PRODUCT 테이블에 값 추가
	 * @param conn
	 * @param memberId
	 * @return
	 */
	public int insertOrderProduct(Connection conn, String memberId, String ranStr) {
		int insert = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertOrdProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ranStr);
			pstmt.setString(2, memberId);
			
			insert = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return insert;
		
		
		
	}
	
	
}
