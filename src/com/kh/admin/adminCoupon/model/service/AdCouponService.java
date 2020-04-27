package com.kh.admin.adminCoupon.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminCoupon.model.dao.AdCouponDao;
import com.kh.admin.adminCoupon.model.vo.AdCoupon;

import static com.kh.common.JDBCTemplate.*;

public class AdCouponService {

	/*
	 * 쿠폰리스트
	 */
	public ArrayList<AdCoupon> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<AdCoupon> list = new AdCouponDao().selectList(conn);
		close(conn);
		
		return list;
	}

}
