package com.kh.admin.adminBlackList.model.dao;

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

import com.kh.admin.adminBlackList.model.vo.BlackList;
import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.member.model.dao.MemberDao;


public class AdBlackListDao {
	
private Properties prop = new Properties();
	
	public AdBlackListDao() {
		String filePath = MemberDao.class.getResource("/sql/adBlackList/adBlackList-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<BlackList> selectList(Connection conn, AdPageInfo pi) {
		
		ArrayList<BlackList> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBlackList");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
				
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new BlackList(rset.getInt("BLACKLIST_NO"),
						               rset.getString("MEMBER_ID"),
						               rset.getString("PENALTY_CUASE"),
						               rset.getDate("PENALTY_DATE"),
						               rset.getString("NONBLOCK_YN")));
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public BlackList searchBlackList(Connection conn, int bno) {
		
		BlackList b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				b = new BlackList(rset.getInt("BLACKLIST_NO"),
								  rset.getString("MEMBER_ID"),
						          rset.getString("PENALTY_CUASE"),
						          rset.getDate("PENALTY_DATE"),
						          rset.getString("NONBLOCK_YN"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
	}

	public int deleteBlackList(Connection conn, int bno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<BlackList> searchOneBlackList(Connection conn,AdPageInfo pi, String memberId) {
		
		ArrayList<BlackList> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchOneBlackList");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new BlackList(rset.getString("MEMBER_ID"),
						              rset.getInt("BLACKLIST_NO"),
						              rset.getString("PENALTY_CUASE"),
						              rset.getDate("PENALTY_DATE"),
						              rset.getString("NONBLOCK_YN")));				
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	public int insertBlackList(Connection conn, BlackList b) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getMemberId());
			pstmt.setString(2, b.getMemberId());
			pstmt.setString(3, b.getPenaltyCuase());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	public int adBlCount(Connection conn) {
		
		int countBl = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countBl");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countBl = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countBl;
			
	}
	public int adBliCount(Connection conn, String memberId) {
		
		int countBli = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countBli");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+memberId+"%");
			rset=pstmt.executeQuery();
			if(rset.next()) {
				countBli = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return countBli;
		
	}
}


