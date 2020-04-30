package com.kh.admin.adminDiscount.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.admin.adminDiscount.model.dao.AdDiscountDao;
import com.kh.admin.adminDiscount.model.vo.AdDiscount;
import com.kh.admin.adminMember.model.vo.AdPageInfo;

public class AdDiscountService {

	/*
	 * 리스트조회
	 */
	public ArrayList<AdDiscount> selectList(AdPageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<AdDiscount> list = new AdDiscountDao().selectList(conn, pi);
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
	public ArrayList<AdDiscount> searchDiscount(AdPageInfo pi, String productCode) {
		
		Connection conn = getConnection();
		
		ArrayList<AdDiscount> list = new AdDiscountDao().searchDiscount(conn,pi, productCode);
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
	
	/*
	 * 할인추가
	 */
	public int insertDiscount(AdDiscount d) {
		
		Connection conn = getConnection();
		
		int result = new AdDiscountDao().insertDiscount(conn,d);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
		
	}
	
	public int adDisCount() {
		
		Connection conn = getConnection();
		
		int countDis = new AdDiscountDao().adDisCount(conn);
		
		close(conn);
		return countDis;
	}
	
	public int adDissCount(String productCode) {
		
		Connection conn = getConnection();
		
		int countDiss = new AdDiscountDao().adDissCount(conn, productCode);
		
		close(conn);
		return countDiss;
				
		
	}

}
