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
	public ShoppingCart searchCart(Connection conn) {
		
		ShoppingCart cart = new ShoppingCart();
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchCart");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				cart = new ShoppingCart(rset.getString(1), rset.getString(2));
			}
			System.out.println(cart);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return cart;
	}

	/** 1_2. 상품 장바구니에 넣는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @param proPrice
	 * @return
	 */
	public int insertCart(Connection conn, String userId, String pCode, int pPrice) {
		
		System.out.println(userId);
		System.out.println(pCode);
		System.out.println(pPrice);
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setInt(2, pPrice);
			pstmt.setString(3, pCode);
			
			result = pstmt.executeUpdate();
						
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
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
										  rset.getString("PRODUCT_CODE"),
										  rset.getInt("QUANTITY"),
										  rset.getInt("PRICE"),
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
	
}
