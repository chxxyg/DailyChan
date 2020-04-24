package com.kh.admin.adminReport.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminReport.model.dao.AdReportDao;
import com.kh.admin.adminReport.model.vo.adReport;

import static com.kh.common.JDBCTemplate.*;

public class AdReportService {

	public ArrayList<adReport> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<adReport> list = new AdReportDao().selectList(conn);
		close(conn);
		
		return list;
	}

	public adReport detailReport(int rno) {
		
		Connection conn = getConnection();
		
		adReport r = new AdReportDao().detailReport(conn, rno);
		close(conn);
		
		return r;
	}

}
