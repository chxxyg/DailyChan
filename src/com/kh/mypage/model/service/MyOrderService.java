package com.kh.mypage.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.mypage.model.dao.MyOrderDao;
import com.kh.mypage.model.vo.Mypage;

public class MyOrderService {

	/** 1. 주문/배송조회, 상세페이지조회, 최근구매한상품 조회용
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> selectOrder(String memberId){
		
		Connection conn = getConnection();
		ArrayList<Mypage> myList = new MyOrderDao().selectOrder(conn, memberId);
		close(conn);
		System.out.println(myList);
		return myList;
		
	}
	
	/** 2. 취소반품조회
	 * @param memberId
	 * @return
	 */
	public ArrayList<Mypage> selectRefund(String memberId){
		
		Connection conn = getConnection();
		ArrayList<Mypage> myList = new MyOrderDao().selectRefund(conn, memberId);
		close(conn);
		System.out.println(myList);
		return myList;
		
	}
}
