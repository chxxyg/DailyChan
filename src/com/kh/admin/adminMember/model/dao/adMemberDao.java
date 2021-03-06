package com.kh.admin.adminMember.model.dao;

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
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;



public class adMemberDao {
	
	private Properties prop = new Properties();
	
	public adMemberDao() {
		String filePath = MemberDao.class.getResource("/sql/adMember/adMember-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Member> selectList(Connection conn, AdPageInfo pi) {
		
		ArrayList<Member> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Member(rset.getString("MEMBER_ID"),
						              rset.getString("MEMBER_NAME"),
						              rset.getString("EMAIL"),
						              rset.getString("PHONE"),
						              rset.getDate("ENROLL_DATE"),
						              rset.getDate("MODIFY_DATE"),
						              rset.getString("DEL_MEMBER_YN"),
						              rset.getInt("POINT_SUM")));				
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int getCountMember(Connection conn) {
		
		int countMember = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countMember");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countMember = rset.getInt(1);
			}
		
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countMember;
			
	}

	public ArrayList<Member> searchMember(Connection conn,AdPageInfo pi,  String memberId) {
		
		ArrayList<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchMember");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;

		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + memberId + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Member(rset.getString("MEMBER_ID"),
						              rset.getString("MEMBER_NAME"),
						              rset.getString("EMAIL"),
						              rset.getString("PHONE"),
						              rset.getDate("ENROLL_DATE"),
						              rset.getDate("MODIFY_DATE"),
						              rset.getString("DEL_MEMBER_YN"),
						              rset.getInt("POINT_SUM")));				
			}			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int deleteMember(Connection conn, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}
	
	public int updateMember(Connection conn, Member m) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getPhone());
			pstmt.setString(2, m.getMemberId());
		
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result;
	}

	public Member detailMember(Connection conn, String mid) {
		
		Member m = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getString("MEMBER_ID"),
							   rset.getString("MEMBER_NAME"),
							   rset.getString("EMAIL"),
							   rset.getString("PHONE"),
							   rset.getDate("ENROLL_DATE"),
							   rset.getDate("MODIFY_DATE"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return m;
	}

	public int listCountMember(Connection conn, String memberId) {
		
		int listCountMember = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countListMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+memberId+"%");
			rset=pstmt.executeQuery();
			if(rset.next()) {
				listCountMember = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCountMember;
		
	}

	public int deleteBlackList(Connection conn, String mid) {
		
		int result2 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			result2 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		return result2;
	}

	public int insertBlackList(Connection conn, String memberId) {

		int result2 = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertBlackList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			
			result2 = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result2;
	}

	
	

	
}
