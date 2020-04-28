package com.kh.admin.adminNotice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminNotice.model.dao.AdNoticeDao;
import com.kh.inquiry.model.vo.Attachment;
import com.kh.notice.model.vo.Notice;

public class AdNoticeService {
	
	/**
	 * notice list 페이지 카운트 숫자 service
	 */
	public int adNoticeListCount() {
		
		Connection conn = getConnection();
		
		int countNotice =  new AdNoticeDao().adNoticeListCount(conn);
		
		close(conn);
		return countNotice;
	}
	
	/**
	 * notice list 페이지의 리스트 service
	 */
	public ArrayList<Notice> adNoticeList(AdPageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new AdNoticeDao().adNoticeList(conn, pi);
		close(conn);
		return list;
		
	}
	
	public int adNoticeInsert(Notice n, Attachment at) {
		
		Connection conn = getConnection();
		
		int result1 = new AdNoticeDao().adNoticeInsert(conn, n);
		int result2 = new AdNoticeDao().adNoticeAttachment(conn, at, n);
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1*result2;
		
		
	}
	
	public Notice adNoticeDetail(String mid) {
		
		Connection conn = getConnection();
		
		Notice n = new AdNoticeDao().adNoticeDetail(conn, mid);
		
		close(conn);
		
		return n;
		
	}
	
	public Attachment adAttachment(String mid) {
		
		Connection conn = getConnection();
		
		Attachment at = new AdNoticeDao().adAttachment(conn, mid);
		
		close(conn);
		
		return at;
		
	}
	
	public int adNoticeUpdate(Notice n, Attachment at, String mid) {
		
		Connection conn = getConnection();
		
		int result1 = new AdNoticeDao().adNoticeUpdate(conn, n, mid );
		
		int result2 = new AdNoticeDao().adNoticeUpdateAttachment(conn, at, mid);
		
		if(result1>0 && result2 >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result1*result2;
		
	}
	
	public int deleteNotice(String mid) {
		
		Connection conn = getConnection();
		
		int result1 = new AdNoticeDao().deleteNotice(conn, mid);
		int result2 = new AdNoticeDao().deleteAttachment(conn, mid);
		
		if(result1>0 && result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1*result2;
		
	}
	
	public ArrayList<Notice> searchNotice(AdPageInfo pi, String noticeTitle){
		
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new AdNoticeDao().searchNotice(conn, pi, noticeTitle);
		
		close(conn);
		
		return list;
		
	}
	
	public int adNoticeCount(String noticeTitle) {
		
		Connection conn = getConnection();
		
		int countNotice = new AdNoticeDao().adNoticeCount(conn, noticeTitle);
		
		close(conn);
		return countNotice;
	}

}
