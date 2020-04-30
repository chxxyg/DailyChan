package com.kh.admin.adminReport.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
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
import com.kh.admin.adminReport.model.vo.adReport;
import com.kh.member.model.dao.MemberDao;

public class AdReportDao {

	private Properties prop = new Properties();
	
	public AdReportDao() {
		String filePath = MemberDao.class.getResource("/sql/adReport/adReport-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<adReport> selectList(Connection conn, AdPageInfo pi) {
		
		ArrayList<adReport> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
				
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new adReport(rset.getInt("REPORT_NO"),
									  rset.getInt("REVIEW_BOARD_NO"),
									  rset.getString("MEMBER_ID"),
									  rset.getString("MEMBER_ID2"),
									  rset.getDate("REPORT_DATE"),
									  rset.getString("REPORT_CONTENT")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return list;
	}

	public adReport detailReport(Connection conn, int rno) {
		
		adReport r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailReport");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				r = new adReport(rset.getInt("REPORT_NO"),
								 rset.getInt("REVIEW_BOARD_NO"),
								 rset.getString("MEMBER_ID"),
								 rset.getString("MEMBER_ID2"),
								 rset.getDate("REPORT_DATE"),
								 rset.getString("REPORT_CONTENT"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return r;
	}

	public ArrayList<adReport> searchReport(Connection conn,AdPageInfo pi, String memberId) {
		
		ArrayList<adReport> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchReport");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new adReport(rset.getInt("REPORT_NO"),
									  rset.getInt("REVIEW_BOARD_NO"),
									  rset.getString("MEMBER_ID"),
									  rset.getString("MEMBER_ID2"),
									  rset.getDate("REPORT_DATE"),
									  rset.getString("REPORT_CONTENT")));				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}		
		return list;
	}
	
	public int adReCount(Connection conn) {
		
		int countRe = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countRe");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countRe = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countRe;
			
	}
	public int adRepCount(Connection conn, String memberId) {
		
		int countRep = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countRep");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+memberId+"%");
			rset=pstmt.executeQuery();
			if(rset.next()) {
				countRep = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return countRep;
		
	}

}



