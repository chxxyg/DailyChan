package com.kh.admin.adminCoupon.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminCoupon.model.dao.AdCouponDao;
import com.kh.admin.adminCoupon.model.vo.AdCoupon;
import com.kh.admin.adminMember.model.vo.AdPageInfo;
import com.kh.admin.adminProduct.model.dao.AdProductDao;

public class AdCouponService {

	/*
	 * 쿠폰리스트
	 */
	public ArrayList<AdCoupon> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<AdCoupon> list = new AdCouponDao().selectList(conn, pi);
		close(conn);
		
		return list;
	}

	/*
	 * 상세조회
	 */
	public AdCoupon detailCoupon(String cc) {

		Connection conn = getConnection();
		
		AdCoupon c = new AdCouponDao().detailCoupon(conn, cc);
		close(conn);
		
		return c;
	}

	/*
	 * 조회버튼
	 */
	public ArrayList<AdCoupon> searchCoupon(AdPageInfo pi, String couponCode) {
		
		Connection conn = getConnection();
		
		ArrayList<AdCoupon> list = new AdCouponDao().searchCoupon(conn,pi, couponCode);
		close(conn);
		
		return list;
	}

	/*
	 * 쿠폰삭제
	 */
	public int deleteCoupon(String cc) {
		
		Connection conn = getConnection();
		
		int result = new AdCouponDao().deleteCoupon(conn, cc);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	
	/*
	 * 회원쿠폰삭제
	 */
	public int deleteMemberCoupon(String cc) {
		
		Connection conn = getConnection();
		
		int result2 = new AdCouponDao().deleteMemberCoupon(conn, cc);
		
		if(result2>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result2;
		
	}

	/*
	 * 쿠폰추가용
	 */
	public int insertCoupon(AdCoupon c) {
		
		Connection conn = getConnection();
		
		int result = new AdCouponDao().insertCoupon(conn, c);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	
	public int adCuCount() {
		
		Connection conn = getConnection();
		
		int countCu = new AdCouponDao().adCuCount(conn);
		
		close(conn);
		return countCu;
		
	}
	
	public int adCupCount(String couponCode) {
		
		Connection conn = getConnection();
		
		int countCup = new AdCouponDao().adCupCount(conn, couponCode);
		
		close(conn);
		return countCup;
		
	}

}

