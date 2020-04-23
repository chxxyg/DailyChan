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

import com.kh.product.model.vo.PageInfo;
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
	 * paging 처리를 위한 메소드
	 * @param conn
	 * @param category
	 * @return
	 */
	public int getListCount(Connection conn, String category) {
		int listCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category+"%");
			rset = pstmt.executeQuery();
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}
	
	
	/**
	 * ProductList 조회 (카테고리별로 상품 불러오는 메소드)
	 * @param conn
	 * @param category		--> 쿼리스트링으로 넘어온 값 (조건문으로 실행할 sql문 지정)
	 * @return
	 */
	public ArrayList<Product> selectProList(Connection conn, String category, PageInfo pi){
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = "";
		
		if(category.equals("new")) {
			sql = prop.getProperty("selectNewList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getString("PRODUCT_CODE"),
										 rset.getString("PRODUCT_NAME"),
										 rset.getInt("PRODUCT_PRICE"),
										 rset.getInt("PRODUCT_STANDARD"),
										 rset.getString("FILE_NAME"),
										 rset.getString("PRODUCT_SALE_YN")));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
		} else if(category.equals("best")) {

			sql = prop.getProperty("selectBestList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getString("PRODUCT_CODE"),
										 rset.getString("PRODUCT_NAME"),
										 rset.getInt("PRODUCT_PRICE"),
										 rset.getInt("PRODUCT_STANDARD"),
										 rset.getString("FILE_NAME"),
										 rset.getString("PRODUCT_SALE_YN")));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
		} else if(category.equals("sale")) {
			
			sql = prop.getProperty("selectSaleList");
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getString("PRODUCT_CODE"),
										 rset.getString("PRODUCT_NAME"),
										 rset.getInt("PRODUCT_PRICE"),
										 rset.getInt("PRODUCT_STANDARD"),
										 rset.getString("FILE_NAME"),
										 rset.getDouble("DISCOUNT_RATE"),
										 rset.getString("PRODUCT_SALE_YN")));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
		} else {
			
			sql = prop.getProperty("selectProList");

			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				
				pstmt.setString(1, category+"%");
				pstmt.setInt(2, startRow);
				pstmt.setInt(3, endRow);
				
				rset = pstmt.executeQuery();
				while(rset.next()) {
					list.add(new Product(rset.getString("PRODUCT_CODE"),
										 rset.getString("PRODUCT_NAME"),
										 rset.getInt("PRODUCT_PRICE"),
										 rset.getInt("PRODUCT_STANDARD"),
										 rset.getString("FILE_NAME"),
										 rset.getString("PRODUCT_SALE_YN")));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
		}
		return list;
	}
	
	/**
	 * SearchResult 조회 (키워드 검색 후 해당하는 상품 불러오는 메소드)
	 * @param conn
	 * @param keyword
	 * @return
	 */
	public ArrayList<Product> searchResult(Connection conn, String keyword){

		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			rset = pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Product(rset.getString("PRODUCT_CODE"),
									 rset.getString("PRODUCT_NAME"),
									 rset.getInt("PRODUCT_PRICE"),
									 rset.getInt("PRODUCT_STANDARD"),
									 rset.getString("FILE_NAME"),
									 rset.getString("PRODUCT_SALE_YN")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	public ArrayList<Product> selectProDetail(Connection conn){
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProDetail");
		
		
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}
