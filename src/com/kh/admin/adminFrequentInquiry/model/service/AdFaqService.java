package com.kh.admin.adminFrequentInquiry.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminFrequentInquiry.model.dao.AdFaqDao;
import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.frequentInquiry.model.vo.FrequentInquiry;

public class AdFaqService {
	
	/**
	 * Faq insert를 위한 서비스
	 */
	public int adFaqInsert(FrequentInquiry f) {
		
		Connection conn = getConnection();
		
		int result = new AdFaqDao().adFaqInsert(conn, f);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	
	/**
	 * Faq 리스트 총 갯수를 보여주기위한 서비스
	 **/
	public int adFaqListCount() {
		Connection conn = getConnection();
		
		int countProduct = new AdFaqDao().adFaqListCount(conn);
		
		close(conn);
		return countProduct;
	}
	
	
	
	public ArrayList<FrequentInquiry> adFaqList(AdPageInfo pi){
		
		Connection conn = getConnection();
		
		ArrayList<FrequentInquiry> list = new AdFaqDao().adFaqList(conn, pi);
		close(conn);
		return list;
	}
	
	
	
	public FrequentInquiry adFaqDetail(String mid) {
		Connection conn = getConnection();
		
		FrequentInquiry f = new AdFaqDao().adFaqDetail(conn, mid);
		
		close(conn);
		
		return f;
	}
	
	
	public int adFaqDelete(String mid) {
		Connection conn = getConnection();
		
		int result =  new AdFaqDao().adFaqDelete(conn, mid);
		

		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	public int adFaqUpdate(FrequentInquiry f, String mid) {
		Connection conn = getConnection();
		
		int result = new AdFaqDao().adFaqUpdate(conn, f, mid);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int adFaqCount(String faqCategory) {
		Connection conn = getConnection();
		
		int countFaq = new AdFaqDao().adFaqCount(conn, faqCategory);
		
		close(conn);
		return countFaq;
	}
	
	public ArrayList<FrequentInquiry> searchFaq(AdPageInfo pi, String faqCategory){
		
		Connection conn = getConnection();
		
		ArrayList<FrequentInquiry> list = new AdFaqDao().searchFaq(conn, pi, faqCategory);
		
		close(conn);
		
		return list;
		
	}

}
