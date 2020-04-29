package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MyOrderDao;
import com.kh.mypage.model.vo.Mypage;

public class MyOrderService {

	/** 1_1. 주문배송조회
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> selectOrder(String memberId){
		
		Connection conn = getConnection();
		ArrayList<Mypage> myList = new MyOrderDao().selectOrder(conn, memberId);
		close(conn);
		return myList;
	}
	
	/** 1_2. 주문배송조회 : 한 주문번호에 몇 개 상품 담겼나
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> countOrdNo(String memberId){
		
		Connection conn = getConnection();
		ArrayList<Mypage> count = new MyOrderDao().countOrdNo(conn, memberId);
		close(conn);
		return count;
	}
	
	/** 2. 메인 아우터 주문건수 조회
	 * @param memberId
	 * @return
	 */
	public int ordCount(String memberId) {
		
		Connection conn = getConnection();
		int ordCount = new MyOrderDao().ordCount(conn, memberId);
		close(conn);
		return ordCount;
	}
	
}
