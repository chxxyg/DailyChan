package com.kh.inquiry.model.service;

import java.sql.Connection;
import static com.kh.common.JDBCTemplate.*;

import com.kh.inquiry.model.dao.InquiryDao;
import com.kh.inquiry.model.vo.Inquiry;

public class InquiryService {

	/**
	 * 1. 1:1친절상담 작성용 서비스
	 * 
	 * @param i --> Inquiry 테이블에 insert할 데이터가 담겨있는 객체
	 * @return
	 */
	public int insertInquiry(Inquiry i) {

		Connection conn = getConnection();

		int result = new InquiryDao().insertInquiry(conn, i);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);

		}
		close(conn);
		return result;

	}

	/**
	 * @param ino --> 조회용
	 * @return
	 */
	public Inquiry selectInquiry(int ino) {

		Connection conn = getConnection();

		Inquiry i = new InquiryDao().selectInquiry(conn, ino);

		close(conn);

		return i;
	}

	
	
	public Inquiry selectInquiryList(String memberId) {

		Connection conn = getConnection();

		Inquiry i = new InquiryDao().selectInquiryList(conn, memberId);

		close(conn);

		return i;
	}
}
