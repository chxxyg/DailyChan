package com.kh.admin.adminOneInquiry.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminOneInquiry.model.dao.AdOneInquiryDao;
import com.kh.admin.adminOneInquiry.model.vo.AdOneInquiry;

import static com.kh.common.JDBCTemplate.*;

public class AdOneInquiryService {

	/*
	 * 내역 리스트 조회용
	 */
	public ArrayList<AdOneInquiry> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<AdOneInquiry> list = new AdOneInquiryDao().selectList(conn);
		close(conn);
		return list;
	}

}
