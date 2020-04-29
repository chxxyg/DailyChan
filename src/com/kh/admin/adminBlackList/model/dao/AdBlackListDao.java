package com.kh.admin.adminBlackList.model.dao;

import static com.kh.common.JDBCTemplate.*;

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
import com.kh.member.model.dao.MemberDao;
import com.kh.product.model.vo.Product;


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

	public ArrayList<BlackList> selectList(Connection conn) {
		
		ArrayList<BlackList> list = new ArrayList<>();
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBlackList");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
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
			close(stmt);
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

	public ArrayList<BlackList> searchOneBlackList(Connection conn, String memberId) {
		
		ArrayList<BlackList> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchOneBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
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

}


