package com.kh.admin.adminProduct.model.dao;

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
import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;


public class AdProductDao {
	
	private Properties prop = new Properties();
	
	/**
	 * sql properties 경로 설정
	 */
	public AdProductDao() {
		String filePath = AdProductDao.class.getResource("/sql/adProduct/adProduct-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 1. 상품등록에 관한 dao
	 * @param conn
	 * @param p 상품정보가 담겨있는 객체
	 * @return
	 */
	public int adProductInsert(Connection conn, Product p) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getProCode());
			pstmt.setString(2, p.getProName());
			pstmt.setInt(3, p.getProPrice());
			pstmt.setString(4, p.getProCategory());
			pstmt.setInt(5, p.getProStock());
			pstmt.setInt(6, p.getProSupplyCoNo());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	/**
	 * 1_2. 상품이미지를 담은 dao
	 * @param conn
	 * @param list 상품이미지들이 담겨있는 배열
	 * @param p 상품정보가담겨있는 객체
	 * @return
	 */
	public int adProductAttachment(Connection conn,  ArrayList<AttachmentProduct> list, Product p) {
		int result = 0; 
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			for(int i=0; i<list.size(); i++) {
				AttachmentProduct at = list.get(i);
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, p.getProCode());
				pstmt.setString(2, at.getAtFileName());
				pstmt.setString(3, at.getAtFilePath());
				pstmt.setInt(4, at.getAtFileLevel());
				pstmt.setInt(5, at.getAtFileMaxSize());
				
				result = pstmt.executeUpdate();
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
		
	}
	
	public ArrayList<Product> adProductselectList(Connection conn, AdPageInfo pi){
		
		ArrayList<Product> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProduct");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
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
	
public int adProductListCount(Connection conn) {
		
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

}
