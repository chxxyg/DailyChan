package com.kh.product.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.Product;

public class ProductDao {
	
	private Properties prop = new Properties();
	

	public ProductDao() {
		String filePath = ProductDao.class.getResource("/sql/product/product-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * ProductList 조회 
	 * @param conn
	 * @param category 쿼리스트링으로 넘어온 값 
	 * @return
	 */
	public ArrayList<Product> selectProList(Connection conn, String category){
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category+"%");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Product(rset.getString("PRODUCT_CODE"),
									 rset.getString("PRODUCT_NAME"),
									 rset.getInt("PRODUCT_PRICE"),
									 rset.getInt("PRODUCT_STOCK"),
									 rset.getInt("PRODUCT_STANDARD"),
									 rset.getString("FILE_NAME")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return list;
		
	}

}
