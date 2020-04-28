package com.kh.notice.model.dao;

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

import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.PageInfo;

// 공지사항 -->번호 제목 날짜 조회수
public class NoticeDao {

	private Properties prop = new Properties();

	public NoticeDao() {

		String filePath = NoticeDao.class.getResource("/sql/notice/notice-query.properties").getPath();

		try {
			prop.load(new FileReader(filePath));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Notice> selectList(Connection conn){
		
		ArrayList<Notice> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		try {
				pstmt = conn.prepareStatement(sql);
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
		/* System.out.println("test" + list); */
		return list;
		
	}


	public Notice selectNotice(Connection conn, int nno) {

		Notice n = null;
		PreparedStatement pstmt = null;

		ResultSet rset = null;
		String sql = prop.getProperty("selectNotice");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				n = new Notice();

				/* n.setNoticeBoardNo(rset.getInt("NOTICE_BOARD_NO")); */
				n.setNoticeTitle(rset.getString("NOTICE_TITLE"));
				n.setNoticeDate(rset.getDate("NOTICE_DATE"));
				n.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				/* n.setNoticeCount(rset.getInt("NOTICE_COUNT")); */

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return n;
	}

	

	public int increaseCount(Connection conn, int nno) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
}
