package com.kh.admin.adminNotice.model.dao;

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
import com.kh.admin.adminProduct.model.dao.AdProductDao;
import com.kh.inquiry.model.vo.Attachment;
import com.kh.notice.model.vo.Notice;

public class AdNoticeDao {
	
	private Properties prop = new Properties();
	
	/**
	 * sql properties 경로 설정
	 */
	public AdNoticeDao() {
		String filePath = AdProductDao.class.getResource("/sql/adNotice/adNotice-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	/**
	 * 관리자 notice 리스트화면에 총게시글 숫자
	 */
	public int adNoticeListCount(Connection conn) {
		
		int countNotice = 0;
		Statement stmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countNotice");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				countNotice = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return countNotice;
		
	}
	
	/**
	 * notice list 페이지용 dao
	 */
	public ArrayList<Notice> adNoticeList(Connection conn, AdPageInfo pi){
		
		ArrayList<Notice> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listNotice");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Notice(rset.getInt("NOTICE_BOARD_NO"),
						            rset.getString("NOTICE_TITLE"),
						            rset.getDate("NOTICE_DATE"),
						            rset.getInt("NOTICE_COUNT")));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}
	
	public int adNoticeInsert(Connection conn, Notice n) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getNoticeTitle());
			pstmt.setString(2, n.getNoticeContent());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int adNoticeAttachment(Connection conn, Attachment at, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, at.getAttachmentCategory());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			pstmt.setInt(4, at.getFileMaxsize());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	public Notice adNoticeDetail(Connection conn, String mid) {
		
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeContent(rset.getString("NOTICE_CONTENT"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
		
	}
	
	public Attachment adAttachment(Connection conn, String mid) {
		
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("detailAttachment");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				at = new Attachment();
				at.setChangeName(rset.getString("CHANGE_NAME"));
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return at;
		
		
	}
	
	public int adNoticeUpdate(Connection conn, Notice n, String mid) {
		
		int result = 0;
		PreparedStatement pstmt =null;
		
		String sql = prop.getProperty("updateNotice");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, n.getNoticeTitle());
			pstmt.setString(2, n.getNoticeContent());
			pstmt.setString(3, mid);
			
			result=pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public int adNoticeUpdateAttachment(Connection conn, Attachment at, String mid) {
		
		int result = 1;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateAttachment");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, at.getAttachmentCategory());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());
			pstmt.setInt(4, at.getFileMaxsize());
			pstmt.setString(5, mid);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
		
	}
	
	public int deleteNotice(Connection conn, String mid) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  mid);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}
	
	public int deleteAttachment(Connection conn, String mid) {
		
		int result=0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteAttachment");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
		
	}
	
	public ArrayList<Notice> searchNotice(Connection conn, AdPageInfo pi, String noticeTitle){
		
		ArrayList<Notice> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchNotice");
		
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
		int endRow = startRow + pi.getBoardLimit() -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" + noticeTitle + "%");
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Notice(rset.getInt("NOTICE_BOARD_NO"),
						            rset.getString("NOTICE_TITLE"),
						            rset.getDate("NOTICE_DATE"),
						            rset.getInt("NOTICE_COUNT")));
				
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
		
		
	}
	
	public int adNoticeCount(Connection conn, String noticeTitle) {
		
		int countNotice = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("countListNotice");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, "%" + noticeTitle + "%");
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				countNotice = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return countNotice;
		
	}
	
	
}





















