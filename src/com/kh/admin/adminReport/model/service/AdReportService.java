package com.kh.admin.adminReport.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminBlackList.model.dao.AdBlackListDao;
import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminReport.model.dao.AdReportDao;
import com.kh.admin.adminReport.model.vo.adReport;

public class AdReportService {

	/*
	 * 총 신고내역 리스트 조회용
	 */
	public ArrayList<adReport> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<adReport> list = new AdReportDao().selectList(conn, pi);
		close(conn);
		
		return list;
	}

	/*
	 * 상세조회
	 */
	public adReport detailReport(int rno) {
		
		Connection conn = getConnection();
		
		adReport r = new AdReportDao().detailReport(conn, rno);
		close(conn);
		
		return r;
	}

	/*
	 * 조회버튼
	 */
	public ArrayList<adReport> searchReport(AdPageInfo pi,String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<adReport> list = new AdReportDao().searchReport(conn,pi ,memberId);
		close(conn);		
		return list;
	} 
	
	public int adReCount() {
		
		Connection conn = getConnection();
		
		int countRe = new AdReportDao().adReCount(conn);
		
		close(conn);
		return countRe;
		
	}
	
	public int adRepCount(String memberId) {
		
		Connection conn = getConnection();
		
		int countRep = new AdReportDao().adRepCount(conn, memberId);
		
		close(conn);
		return countRep;
	}


}
