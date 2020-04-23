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
	
	/**
	 * 페이징바에대한 정보를 담은 객체를 리스트에 담아줌
	 */
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
	
	/**
	 * 관리자 리스트화면에 총 게시글의 숫자를 보여줄 dao
	 */
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
	
	/**
	 * 상품 리스트 조회를위한 product dao
	 */
	public Product adProductDetail(Connection conn, String mid){
		
		Product p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				p = new Product();
				p.setProCategory(rset.getString("PRODUCT_CATEGORY"));
				p.setProName(rset.getString("PRODUCT_NAME"));
				p.setProCode(rset.getString("PRODUCT_CODE"));
				p.setProSupplyName(rset.getString("SUPPLY_CO_NAME"));
				p.setProPrice(rset.getInt("PRODUCT_PRICE"));
				p.setProStock(rset.getInt("PRODUCT_STOCK"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return p;
	}
		
	
	
	/**
	 * 상품 리스트 조회를 위한 attachmentproduct dao 
	 */
	public ArrayList<AttachmentProduct> adAttachmentDetail(Connection conn, String mid){
		
		ArrayList<AttachmentProduct> ap = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			rset =pstmt.executeQuery();
			
			while(rset.next()) {
				ap.add(new AttachmentProduct(rset.getString("FILE_NAME")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return ap;
		
	}
	
	/**
	 * Attachment 삭제 구문
	 */
	public int deleteAttachment(Connection conn, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	/**
	 * Product 삭제구문
	 */
	public int deleteProduct(Connection conn, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteProduct");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	/**
	 * Product update구문
	 */
	public int adProductUpdate(Connection conn, Product p, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getProName());
			pstmt.setInt(2, p.getProPrice());
			pstmt.setInt(3, p.getProStock());
			pstmt.setString(4, mid);
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
		
	/**
	 * attachment update구문
	 */
	public int adProductUpdateAttachment(Connection conn,  ArrayList<AttachmentProduct> list, Product p, String mid) {
		
		int result = 1; 
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		try {
			for(int i=0; i<list.size(); i++) {
				AttachmentProduct at = list.get(i);
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, at.getAtFileName());
				pstmt.setString(2, at.getAtFilePath());
				pstmt.setInt(3, at.getAtFileMaxSize());
				pstmt.setString(4, mid);
				pstmt.setInt(5, at.getAtFileLevel());
					
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
