package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.mypage.model.dao.ReviewDao;
import com.kh.mypage.model.vo.Review;

public class ReviewService {
	
	public int insertReview(Review re) {
		Connection conn = getConnection();
		int result = new ReviewDao().insertReview(conn, re);
		if(result > 0){commit(conn);}
        else{rollback(conn);}
		close(conn);
		return result;
	}

}
