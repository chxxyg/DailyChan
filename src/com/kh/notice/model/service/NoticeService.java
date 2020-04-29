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
	 * 2. 공지사항 상세조회용 서비스(공지사항 게시판 정보)
	 * @param nno
	 * @return
	 */
	public Notice selectNotice(int nno) {
		Connection conn = getConnection();
		
		Notice n = new NoticeDao().selectNotice(conn, nno);
		
		close(conn);
		
		return n;
	}
	
	/**
	 * 3. 조회수 증가용 서비스
	 * @param nno
	 */
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

	/** 4-1. 게시판 리스트 총 개수 조회용 서비스
	 * @return
	 */
	public int getListCount() {
		
		Connection conn = getConnection();
		
		int listCount = new NoticeDao().getListCount(conn);
		
		close(conn);
		
		return listCount;
	}
	
	/**
	 * 4-2. 해당 페이지에 보여질 게시글 리스트 조회용 서비스
	 * @param pi
	 * @return
	 */
	public ArrayList<Notice> selectListA(PageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectListA(conn, pi);
		
		close(conn);
		return list;
	}
}
