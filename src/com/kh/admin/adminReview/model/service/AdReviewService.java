package com.kh.admin.adminReview.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminProduct.model.dao.AdProductDao;
import com.kh.admin.adminReview.model.dao.AdReviewDao;
import com.kh.admin.adminReview.model.vo.AdReview;

public class AdReviewService {

	/*
	 * 총 리뷰리스트 조회
	 */
	public ArrayList<AdReview> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<AdReview> list = new AdReviewDao().selectList(conn, pi);
		close(conn);
		
		return list;
	}

	/*
	 * 리뷰 상세조회
	 */
	public AdReview detailReview(int rbo) {
		
		Connection conn = getConnection();
		
		AdReview v = new AdReviewDao().detailReview(conn, rbo);
		close(conn);
		
		return v;
	}

	/*
	 * 리뷰조회버튼
	 */
	public ArrayList<AdReview> searchReview(String memberId, AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<AdReview> list = new AdReviewDao().searchReview(conn, memberId, pi);
		close(conn);
		
		return list;
	}
	/*
	 * 삭제용
	 */
	public int deleteReview(int rno) {
		
		Connection conn = getConnection();

		int result = new AdReviewDao().deleteReview(conn, rno);
		
		
		
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);		
		return result;
	}
	
	public int adReCount() {

		Connection conn = getConnection();
		
		int countReview = new AdReviewDao().adReCount(conn);
		
		close(conn);
		return countReview;
	}

}
