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

	/**1. 공지사항 리스트 조회용 서비스
	 * @return
	 */
	public ArrayList<Notice> selectList(){
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectList(conn);
		
		close(conn);
		
		return list;
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
	
	public void increaseCount(int nno) {
		
		Connection conn = getConnection();
		int result = new NoticeDao().increaseCount(conn, nno);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
	}

	
}
