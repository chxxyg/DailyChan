package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.inquiry.model.vo.Attachment;
import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;
import com.kh.notice.model.vo.PageInfo;

public class NoticeService {

	
	/**
	 * 1. 공지사항 리스트 총 개수 조회용 서비스
	 * @return
	 */
	public int getListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new NoticeDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 2. 공지사항 리스트 조회용 서비스
	 * @return	--> Notice 테이블로부터 조회된 데이터들 담겨있음
	 */
	public ArrayList<Notice> selectList(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectList(conn, pi);
		
		close(conn);
		
		return list;
	}
	
	/**
	 * 3. 공지사항 작성용 서비스
	 * @param n
	 * @return
	 */
	public int insertNotice(Notice n, Attachment at) {
		
		Connection conn = getConnection();
		
		int result1 = new NoticeDao().insertNotice(conn, n);

	
		if(result1 > 0) {
			commit(conn);
		} else {
			rollback(conn);
			
		}
		
		close(conn);
		return result1;
	}
	
	/**
	 * 4. 공지사항 상세조회용 서비스(공지사항 게시판 정보)
	 * @param nno
	 * @return
	 */
	public Notice selectNotice(int nno) {
		Connection conn = getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn, nno);
		
		close(conn);
		
		return n;
	}
	

	
}
