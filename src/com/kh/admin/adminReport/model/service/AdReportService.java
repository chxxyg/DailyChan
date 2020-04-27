package com.kh.admin.adminReport.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminReport.model.dao.AdReportDao;
import com.kh.admin.adminReport.model.vo.adReport;

import static com.kh.common.JDBCTemplate.*;

public class AdReportService {

	/*
	 * 총 신고내역 리스트 조회용
	 */
	public ArrayList<adReport> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<adReport> list = new AdReportDao().selectList(conn);
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
	public ArrayList<adReport> searchReport(String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<adReport> list = new AdReportDao().searchReport(conn, memberId);
		close(conn);		
		return list;
	} 

}
