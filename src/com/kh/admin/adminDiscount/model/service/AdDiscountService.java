package com.kh.admin.adminDiscount.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.admin.adminDiscount.model.dao.AdDiscountDao;
import com.kh.admin.adminDiscount.model.vo.AdDiscount;

public class AdDiscountService {

	/*
	 * 리스트조회
	 */
	public ArrayList<AdDiscount> selectList() {
		
		Connection conn = getConnection();
		
		ArrayList<AdDiscount> list = new AdDiscountDao().selectList(conn);
		close(conn);
		return list;
	}

	/*
	 * 상세조회
	 */
	public AdDiscount detailDiscount(int dc) {
		
		Connection conn = getConnection();
		
		AdDiscount d = new AdDiscountDao().detailDiscount(conn, dc);
		close(conn);
		
		return d;
	}

	/*
	 * 조회버튼
	 */
	public ArrayList<AdDiscount> searchDiscount(String productCode) {
		
		Connection conn = getConnection();
		
		ArrayList<AdDiscount> list = new AdDiscountDao().searchDiscount(conn, productCode);
		close(conn);
		
		return list;
	}

	/*
	 * 삭제
	 */
	public int deleteDiscount(int dc) {

		Connection conn = getConnection();
		int result = new AdDiscountDao().deleteDiscount(conn, dc);
		
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

}