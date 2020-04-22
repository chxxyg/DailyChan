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
	
	/** 상품 장바구니에 담기 전, 장바구니에 이미 담긴 상품인지 확인하는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @return
	 */
	public String searchCart(Connection conn, String memberId, String proCode, int proPrice) {
		
		ArrayList<ShoppingCart> list = new ArrayList<>();
		Statement stmt = null;
		ResultSet rset = null;
		String sql1 = prop.getProperty("searchCart");
		String msg = "";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql1);
			
			while(rset.next()) {
				list.add(new ShoppingCart(rset.getString(1),
										  rset.getString(2)));
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getMemberId().equals(memberId) && list.get(i).getProCode().equals(proCode)) {
				msg = "이미";
			}else {
				insertCart(conn, memberId, proCode, proPrice);
			}
		} 
		return msg;
	}
	

	/** 상품 장바구니에 넣는 메소드
	 * @param conn
	 * @param memberId
	 * @param proCode
	 * @param proPrice
	 * @return
	 */
	public String insertCart(Connection conn, String memberId, String proCode, int proPrice) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCart");
		
		String msg = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setInt(2, proPrice);
			pstmt.setString(3, proCode);
			
			result = pstmt.executeUpdate();
			
			if(result>0) {
				msg="성공";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return msg;
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
