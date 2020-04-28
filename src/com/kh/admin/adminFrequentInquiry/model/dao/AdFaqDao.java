package com.kh.admin.adminFrequentInquiry.model.dao;

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
import com.kh.frequentInquiry.model.vo.FrequentInquiry;
import com.kh.product.model.vo.Product;

public class AdFaqDao {
	
	private Properties prop = new Properties();
	
	/**
	 * sql properties 경로 설정
	 */
		public AdFaqDao() {
		String filePath = AdFaqDao.class.getResource("/sql/adFaq/adFaq-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * FAQ insert를 위한 Dao
	 */
	public int adFaqInsert(Connection conn, FrequentInquiry f) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertFaq");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, f.getFaqCategory());
			pstmt.setString(2, f.getFaqTitle());
			pstmt.setString(3, f.getFaqContent());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 리스트 전체 갯수
	 */
	public int adFaqListCount(Connection conn) {
		
		int countFaq = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countFaq");
		
		try {
			stmt =conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countFaq = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return countFaq;
	}
	
	public ArrayList<FrequentInquiry> adFaqList(Connection conn, AdPageInfo pi){
		
		ArrayList<FrequentInquiry> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listFaq");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new FrequentInquiry(rset.getInt("FREQUENT_BOARD_NO"),
						              rset.getInt("FREQUENT_CATEGORY"),
						              rset.getString("FREQUENT_TITLE")
						               ));				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}
	
	public FrequentInquiry adFaqDetail(Connection conn, String mid) {
		
		FrequentInquiry f = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailFaq");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				f = new FrequentInquiry();
				f.setFaqCategory(rset.getInt("FREQUENT_CATEGORY"));
				f.setFaqTitle(rset.getString("FREQUENT_TITLE"));
				f.setFaqContent(rset.getString("FREQUENT_CONTENT"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return f;
		
		
	}
	
	
	public int adFaqDelete(Connection conn, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteFaq");
		
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
	
	public int adFaqUpdate(Connection conn, FrequentInquiry f, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateFaq");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, f.getFaqTitle());
			pstmt.setString(2, f.getFaqContent());
			pstmt.setString(3, mid);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public int adFaqCount(Connection conn, String faqCategory) {
		
		int countFaq =0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countListFaq");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, faqCategory);
			rset=pstmt.executeQuery();
			if(rset.next()) {
				countFaq=rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return countFaq;
		
	}
	
	public ArrayList<FrequentInquiry> searchFaq(Connection conn, AdPageInfo pi, String faqCategory ){
		
		ArrayList<FrequentInquiry> list = new ArrayList<>();
		
		PreparedStatement pstmt=null;
		ResultSet rset = null;
		
		String sql= prop.getProperty("searchFaq");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, faqCategory);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new FrequentInquiry(rset.getInt("FREQUENT_BOARD_NO"),
						              rset.getInt("FREQUENT_CATEGORY"),
						              rset.getString("FREQUENT_TITLE")
						               ));				
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
}
