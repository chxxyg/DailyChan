package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.mypage.model.dao.ReviewDao;

public class ReviewService {
	
	public int insertReview(String proCode) {
		Connection conn = getConnection();
		int result = new ReviewDao().insertReview(conn, proCode);
		if(result > 0){commit(conn);}
        else{rollback(conn);}
		close(conn);
		return result;
		
		
	}

}
