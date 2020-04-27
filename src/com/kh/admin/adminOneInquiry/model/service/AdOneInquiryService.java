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

	/*
	 * 상세조회용
	 */
	public AdOneInquiry detailAdOneInquiry(int ibn) {
		
		Connection conn = getConnection();
		
		AdOneInquiry i = new AdOneInquiryDao().detailAdOneInquiry(conn, ibn);
		close(conn);
		
		return i;
	}

	/*
	 * 조회버튼용
	 */
	public ArrayList<AdOneInquiry> search(String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<AdOneInquiry> list = new AdOneInquiryDao().search(conn, memberId);
		close(conn);
		
		return list;
	}

}
