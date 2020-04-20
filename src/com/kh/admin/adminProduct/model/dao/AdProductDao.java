package com.kh.admin.adminProduct.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.product.model.vo.AttachmentProduct;
import com.kh.product.model.vo.Product;
import static com.kh.common.JDBCTemplate.*;


public class AdProductDao {
	
	private Properties prop = new Properties();
	
	public AdProductDao() {
		String filePath = AdProductDao.class.getResource("/sql/adProduct/adProduct-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
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

}
