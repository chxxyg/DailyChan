package com.kh.admin.adminReview.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminReview.model.dao.AdReviewDao;
import com.kh.admin.adminReview.model.vo.AdReview;

import static com.kh.common.JDBCTemplate.*;

public class AdReviewService {

	/*
	 * 총 리뷰리스트 조회
	 */
	public ArrayList<AdReview> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<AdReview> list = new AdReviewDao().selectList(conn);
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
	public ArrayList<AdReview> searchReview(String memberId) {
		
		Connection conn = getConnection();
		
		ArrayList<AdReview> list = new AdReviewDao().searchReview(conn, memberId);
		close(conn);
		
		return list;
	}

}
