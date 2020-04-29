package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.CouponDao;
import com.kh.mypage.model.vo.MemberCoupon;


public class CouponService {
	
	public ArrayList<MemberCoupon> selectMemberCouponList(String userId){
		Connection conn = getConnection();
		ArrayList<MemberCoupon> mcList = new CouponDao().selectMemberCouponList(conn, userId);
		close(conn);
		return mcList;
	}

}
